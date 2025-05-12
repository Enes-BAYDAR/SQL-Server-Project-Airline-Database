# AirlineDB Management System

Python
SQL Server
PyQt5

A example airline management system with SQL Server database and Python GUI interface.

## Features
Relational Database: 8 normalized tables for airlines, airports, flights, passengers, bookings, and crew

Sample Data: Pre-populated with realistic airline data (20 records per table)

GUI Interface: PyQt5-based application for easy data management

CRUD Operations: Create, Read, Update, and Delete functionality

User-Friendly: Intuitive table views and forms

## Database Schema
![diagram](https://github.com/user-attachments/assets/e20bfe14-2a7f-4905-9753-0f1d9ad19cb4)


## Installation
### Database Setup:

```sql
sqlcmd -S your_server -i CREATE.sql
sqlcmd -S your_server -i INSERT.sql
```
### Python Requirements:

```bash
pip install pyodbc PyQt5
```
### Run Application:

```bash
python INTERFACE.py
```
## Usage
Select any table from the main window

View all records in table format

Add new records using the input form

Delete records by ID

## Contributing
Pull requests welcome! For major changes, please open an issue first.

## License

[MIT](https://choosealicense.com/licenses/mit/)


