import sys
import pyodbc
from PyQt5.QtWidgets import (
    QApplication, QWidget, QPushButton, QVBoxLayout, QHBoxLayout,
    QTableWidget, QTableWidgetItem, QLabel, QMessageBox, QLineEdit, QFormLayout
)

#  SQL Server connection (edit the server name according to your system)
def get_connection():
    return pyodbc.connect(
        'DRIVER={ODBC Driver 17 for SQL Server};'
        'SERVER=localhost\\SQLEXPRESS;'
        'DATABASE=AirlineDB;'
        'Trusted_Connection=yes;'
    )

#  Get table names from database
def get_tables():
    conn = get_connection()
    cursor = conn.cursor()
    cursor.execute("SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE'")
    tables = [row[0] for row in cursor.fetchall()]
    conn.close()
    return tables

#  Get column information of a specific table
def get_table_columns(table_name):
    conn = get_connection()
    cursor = conn.cursor()
    cursor.execute(f"SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = '{table_name}'")
    columns = [row[0] for row in cursor.fetchall()]
    conn.close()
    return columns

#  Data insertion process
def insert_data(table_name, data):
    try:
        conn = get_connection()
        cursor = conn.cursor()
        columns = ', '.join(data.keys())
        placeholders = ', '.join(['?'] * len(data))
        values = list(data.values())
        query = f"INSERT INTO {table_name} ({columns}) VALUES ({placeholders})"
        cursor.execute(query, values)
        conn.commit()
        conn.close()
        return True, "Kayıt başarıyla eklendi."
    except Exception as e:
        return False, str(e)

#  Data deletion process (deletes by ID - simple example)
def delete_data_by_id(table_name, id_column, id_value):
    try:
        conn = get_connection()
        cursor = conn.cursor()
        query = f"DELETE FROM {table_name} WHERE {id_column} = ?"
        cursor.execute(query, (id_value,))
        conn.commit()
        conn.close()
        return True, "Kayıt silindi."
    except Exception as e:
        return False, str(e)

#  Popup for each table
class TableWindow(QWidget):
    def __init__(self, table_name):
        super().__init__()
        self.table_name = table_name
        self.setWindowTitle(f"{table_name} - Veri İşlemleri")
        self.layout = QVBoxLayout()
        self.setLayout(self.layout)

        self.data_table = QTableWidget()
        self.layout.addWidget(QLabel(f"{table_name} tablosundaki veriler:"))
        self.layout.addWidget(self.data_table)

        self.form_layout = QFormLayout()
        self.form_inputs = {}
        columns = get_table_columns(table_name)
        for col in columns:
            inp = QLineEdit()
            self.form_inputs[col] = inp
            self.form_layout.addRow(col, inp)
        self.layout.addLayout(self.form_layout)

        btn_layout = QHBoxLayout()
        self.add_btn = QPushButton("Veri Ekle")
        self.delete_btn = QPushButton("ID ile Sil")
        btn_layout.addWidget(self.add_btn)
        btn_layout.addWidget(self.delete_btn)
        self.layout.addLayout(btn_layout)

        self.add_btn.clicked.connect(self.add_data)
        self.delete_btn.clicked.connect(self.delete_data)

        self.load_table_data()

    def load_table_data(self):
        try:
            conn = get_connection()
            cursor = conn.cursor()
            cursor.execute(f"SELECT * FROM {self.table_name}")
            rows = cursor.fetchall()
            columns = [desc[0] for desc in cursor.description]

            self.data_table.clear()
            self.data_table.setColumnCount(len(columns))
            self.data_table.setRowCount(len(rows))
            self.data_table.setHorizontalHeaderLabels(columns)

            for row_idx, row_data in enumerate(rows):
                for col_idx, value in enumerate(row_data):
                    self.data_table.setItem(row_idx, col_idx, QTableWidgetItem(str(value)))

            cursor.close()
            conn.close()
        except Exception as e:
            QMessageBox.critical(self, "Hata", f"Veri yüklenemedi:\n{e}")

    def add_data(self):
        data = {k: v.text() for k, v in self.form_inputs.items() if v.text().strip() != ''}
        success, message = insert_data(self.table_name, data)
        if success:
            QMessageBox.information(self, "Başarılı", message)
            self.load_table_data()
        else:
            QMessageBox.critical(self, "Hata", message)

    def delete_data(self):
        columns = get_table_columns(self.table_name)
        id_column = columns[0]  # İlk sütunu ID kabul ediyoruz
        id_value = self.form_inputs[id_column].text()
        if not id_value:
            QMessageBox.warning(self, "Eksik Girdi", f"{id_column} alanını doldur.")
            return
        success, message = delete_data_by_id(self.table_name, id_column, id_value)
        if success:
            QMessageBox.information(self, "Başarılı", message)
            self.load_table_data()
        else:
            QMessageBox.critical(self, "Hata", message)

#  Main window: table buttons
class MainWindow(QWidget):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("AirlineDB Arayüz")
        self.resize(400, 300)
        self.layout = QVBoxLayout()
        self.setLayout(self.layout)

        label = QLabel("Tablo Seçin:")
        self.layout.addWidget(label)

        tables = get_tables()
        for table_name in tables:
            btn = QPushButton(table_name)
            btn.clicked.connect(lambda _, t=table_name: self.open_table_window(t))
            self.layout.addWidget(btn)

    def open_table_window(self, table_name):
        self.tw = TableWindow(table_name)
        self.tw.show()

# ▶ Run the program
if __name__ == "__main__":
    app = QApplication(sys.argv)
    win = MainWindow()
    win.show()
    sys.exit(app.exec_())
