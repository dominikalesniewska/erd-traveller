USE master;
GO

IF DB_ID (N'traveller') IS NOT NULL
DROP DATABASE traveller;
GO
CREATE DATABASE traveller;
GO

USE traveller;

DROP TABLE IF EXISTS clients_trips;
DROP TABLE IF EXISTS employees_branches;
DROP TABLE IF EXISTS branches;
DROP TABLE IF EXISTS payments;
DROP TABLE IF EXISTS trips;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS clients_info;
DROP TABLE IF EXISTS clients;

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'clients')
	CREATE TABLE clients (
		client_code INT IDENTITY(1,1) NOT NULL,
		first_name VARCHAR(64) NOT NULL,
		last_name VARCHAR(64) NOT NULL,
		e_mail VARCHAR(30) NOT NULL,
		phone VARCHAR(9) NOT NULL
		PRIMARY KEY (client_code),
		CHECK (e_mail LIKE '%@%')
	)
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'clients_info')
	CREATE TABLE clients_info (
		client_code INT NOT NULL,
		address VARCHAR(64),
		preferences VARCHAR(20),
		CONSTRAINT FK_clients_info FOREIGN KEY (client_code)
		REFERENCES clients(client_code)
	)
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'employees')
	CREATE TABLE employees (
		employee_code INT IDENTITY(1,1) NOT NULL,
		first_name VARCHAR(64) NOT NULL,
		last_name VARCHAR(64) NOT NULL,
		IBAN INT NOT NULL,
		address VARCHAR(64) NOT NULL,
		PRIMARY KEY (employee_code)
	)
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'trips')
	CREATE TABLE trips (
		trip_code INT IDENTITY(1,1) NOT NULL,
		name VARCHAR(64) NOT NULL,
		country VARCHAR(20),
		category VARCHAR(20),
		price DECIMAL(10,2) NOT NULL,
		leader_code INT NOT NULL,
		start_date DATE NOT NULL,
		end_date DATE NOT NULL,
		actual_amount INT,
		max_amount INT,
		description VARCHAR(250),
		PRIMARY KEY (trip_code),
		CONSTRAINT FK_trips_workers FOREIGN KEY (leader_code)
		REFERENCES employees(employee_code)
	)
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'payments')
	CREATE TABLE payments (
		payment_code INT IDENTITY(1,1) NOT NULL,
		client_code INT NOT NULL,
		trip_code INT NOT NULL,
		ammount DECIMAL(10,2) NOT NULL,
		progress VARCHAR(20),
		PRIMARY KEY (payment_code),
		CONSTRAINT FK_payments_client FOREIGN KEY (client_code)
		REFERENCES clients(client_code),
		CONSTRAINT FK_payments_trip FOREIGN KEY (trip_code)
		REFERENCES trips(trip_code)
	)
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'branches')
	CREATE TABLE branches (
		branch_code INT IDENTITY(1,1) NOT NULL,
		address VARCHAR(40)
		PRIMARY KEY (branch_code)
	)
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'employees_branches')
	CREATE TABLE employees_branches (
		branch_code INT NOT NULL,
		employee_code INT NOT NULL,
		CONSTRAINT FK_branches_branch FOREIGN KEY (branch_code)
		REFERENCES branches(branch_code),
		CONSTRAINT FK_branches_employee FOREIGN KEY (employee_code)
		REFERENCES employees(employee_code)
	)
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'clients_trips')
	CREATE TABLE clients_trips (
		client_code INT NOT NULL,
		trip_code INT NOT NULL,
		CONSTRAINT FK_clients_trips_client FOREIGN KEY (client_code)
		REFERENCES clients(client_code),
		CONSTRAINT FK_clients_trips_trip FOREIGN KEY (trip_code)
		REFERENCES trips(trip_code)
	)
GO