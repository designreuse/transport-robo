--drop table Address;
--drop table Driver;
--drop table Vehicle;
--drop table Shift;
--drop table TransportRequest;
--drop table Employee;
--drop table TripRoute;
----drop table TripRouteEmployee;
--
--create table Address (
--	id INT NOT NULL AUTO_INCREMENT,
--	address_line varchar(100) unique not null,
--	city varchar(30) not null,
--	state varchar(30) not null,
--	zip varchar(30) not null,
--	country varchar(30) not null,
--	longitude DECIMAL(30,20), 
--	latitude DECIMAL(30,20),
--	status varchar(30), PRIMARY KEY ( id )
--);
--
--create table Driver (
--	id INT NOT NULL AUTO_INCREMENT,
--	name varchar(100) unique not null,
--	licenseNumber varchar(30) not null,
--	phoneNumber varchar(30) not null,
--	yearsOfExperience varchar(30) not null, PRIMARY KEY ( id )
--);
--
--create table Vehicle (
--	id INT NOT NULL AUTO_INCREMENT,
--	vehicleNumber varchar(10) unique not null,
--	seats varchar(30) not null,
--	trackingDeviceLink varchar(30) not null,
--	driverId varchar(30) not null,
--	priceUnit varchar(10), PRIMARY KEY ( id )
--);
--
--create table Shift (
--	id INT NOT NULL AUTO_INCREMENT,
--	startTime varchar(10) not null,
--	endTime varchar(10) not null, PRIMARY KEY ( id )
--);
--
--create table TransportRequest (
--	id INT NOT NULL AUTO_INCREMENT,
--	startDate date  not null,
--	endDate date not null,
--	employeeId varchar(12) not null,
--	shiftId varchar(12) not null,
--	requestType varchar(1) not null,
--	status varchar(1) not null, PRIMARY KEY ( id )
--);
--
--create table Employee (
--	id INT NOT NULL AUTO_INCREMENT,
--	name varchar(50) not null,
--	password varchar(50) not null,
--	role varchar(50) not null,
--	mangerId NUMERIC not null, 
--	addressId NUMERIC null,
--	status varchar(1) not null,
--	sex varchar(1) not null, PRIMARY KEY ( id )
--);
--
--create table TripRoute (
--	routeId varchar(50) not null,
--	tripDate date not null,
--	tripType varchar(5) not null,
--	shiftId NUMERIC not null,
--	vehicleId NUMERIC not null,
--	tripDistance NUMERIC,
--	paid varchar(1)
--);
--
--create table TripRouteEmployee (
--	id INT NOT NULL AUTO_INCREMENT,
--	routeId varchar(50) not null,
--	empId NUMERIC not null,
--	vehicleId NUMERIC not null,
--	tripTime varchar(10) not null, PRIMARY KEY ( id )
--);
--
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 1', 'Employee 1', 'employee', 1, 11, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 2', 'Employee 2', 'manager', 1, 12, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 3', 'admin', 'admin', 1, 13, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 4', 'admin', 'admin', 1, 14, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 5', 'admin', 'admin', 1, 2, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 6', 'admin', 'admin', 1, 9, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 7', 'admin', 'admin', 1, 1, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 8', 'admin', 'admin', 1, 3, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 9', 'admin', 'admin', 1, 8, 'A', 'F');
----insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 9-1', 'admin', 'admin', 1, 1, 'A', 'M');
--
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 10', 'admin', 'admin', 1, 2, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 11', 'admin', 'admin', 1, 1, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 12', 'admin', 'admin', 1, 2, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 13', 'admin', 'admin', 1, 4, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 14', 'admin', 'admin', 1, 2, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 15', 'admin', 'admin', 1, 2, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 16', 'admin', 'admin', 1, 2, 'A', 'M');
--
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 17', 'admin', 'admin', 1, 3, 'A', 'F');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 18', 'admin', 'admin', 1, 3, 'A', 'F');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 19', 'admin', 'admin', 1, 3, 'A', 'F');
--
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 20', 'admin', 'admin', 1, 4, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 21', 'admin', 'admin', 1, 4, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 22', 'admin', 'admin', 1, 5, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 23', 'admin', 'admin', 1, 4, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 24', 'admin', 'admin', 1, 4, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 25', 'admin', 'admin', 1, 4, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 26', 'admin', 'admin', 1, 5, 'A', 'M');
--
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 27', 'admin', 'admin', 1, 5, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 28', 'admin', 'admin', 1, 5, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 29', 'admin', 'admin', 1, 5, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 30', 'admin', 'admin', 1, 6, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 31', 'admin', 'admin', 1, 5, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 32', 'admin', 'admin', 1, 5, 'A', 'M');
--
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 33', 'admin', 'admin', 1, 6, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 34', 'admin', 'admin', 1, 6, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 35', 'admin', 'admin', 1, 9, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 36', 'admin', 'admin', 1, 6, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 37', 'admin', 'admin', 1, 6, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 38', 'admin', 'admin', 1, 7, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 39', 'admin', 'admin', 1, 6, 'A', 'M');
--
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 40', 'admin', 'admin', 1, 7, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 41', 'admin', 'admin', 1, 7, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 42', 'admin', 'admin', 1, 7, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 43', 'admin', 'admin', 1, 9, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 44', 'admin', 'admin', 1, 7, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 45', 'admin', 'admin', 1, 7, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 46', 'admin', 'admin', 1, 8, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee 47', 'admin', 'admin', 1, 7, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('Employee David Johnson 48', 'admin', 'admin', 1, 7, 'A', 'M');
--insert into Employee (name, password, role, mangerId, addressId, status, sex) values ('ESCORT', 'admin', 'admin', 1, 12, 'A', 'M');
--
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-01-04', '2016-01-30', '1', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-01-04', '2016-01-30', '2', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-01-04', '2016-01-30', '3', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-01-04', '2016-01-30', '4', '1', 'T','A');
--
--
--
----insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '1', '1', 'T','A');
----insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '2', '1', 'T','A');
----insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '3', '1', 'T','A');
----insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '4', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '5', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '6', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '7', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '8', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '9', '1', 'T','A');
--
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '10', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '11', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '12', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '13', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '14', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '15', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '16', '1', 'T','A');
--
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '17', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '18', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '19', '1', 'T','A');
--
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '20', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '21', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '22', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '23', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '24', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '25', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '26', '1', 'T','A');
--
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '27', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '28', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '29', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '30', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '31', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '32', '1', 'T','A');
--
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '33', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '34', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '35', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '36', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '37', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '38', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '39', '1', 'T','A');
--
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '40', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '41', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '42', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '43', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '44', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '45', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '46', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '47', '1', 'T','A');
--insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2016-12-16', '2016-12-30', '48', '1', 'T','A');
----insert into TransportRequest (startDate, endDate, employeeId, shiftId, requestType, status) values ('2015-12-10', '2015-12-15', '49', '1', 'T','A');
--
--
--insert into Address (address_line, city, state, zip, country, latitude, longitude, status) values ('Innovative multiplex', 'Bangalore', 'Karnataka', '560037', '�ndia', '12.9515941', '77.6996049','Pending');
--insert into Address (address_line, city, state, zip, country, latitude, longitude, status) values ('Gopalan Innovation Mall', 'Bangalore', 'Karnataka', '560037','India','12.91358181','77.59969208','Pending');
--insert into Address (address_line, city, state, zip, country, latitude, longitude, status) values ('HSR BDA Complex Bus Stand', 'Bangalore', 'Karnataka', '560037', '�ndia','12.9128449','77.63792250000006','Pending');
--insert into Address (address_line, city, state, zip, country, latitude, longitude, status) values ('ISKCON Bangalore', 'Bangalore', 'Karnataka', '560037', '�ndia','13.009771','77.551003','Pending');
--insert into Address (address_line, city, state, zip, country, latitude, longitude, status) values ('Manayata Tech Park', 'Bangalore', 'Karnataka', '560037', '�ndia','13.0448306','77.6221091','Pending');
--insert into Address (address_line, city, state, zip, country, latitude, longitude, status) values ('Inorbit mall', 'Bangalore', 'Karnataka', '560037', '�ndia','12.979128','77.7285934','Pending');
--insert into Address (address_line, city, state, zip, country, latitude, longitude, status) values ('Vidhana Soudha', 'Bangalore', 'Karnataka', '560037', '�ndia','12.9796309','77.5906865','Pending');
--insert into Address (address_line, city, state, zip, country, latitude, longitude, status) values ('KR Puram Railway Station', 'Bangalore', 'Karnataka', '560016', '�ndia','13.0005672','77.6746456','Pending');
----insert into Address (address_line, city, state, zip, country, status) values ('PWD Quarters', 'Bangalore', 'Karnataka', '560103', '�ndia','Pending');
--insert into Address (address_line, city, state, zip, country, latitude, longitude, status) values ('PWD Quarters, Ibbaluru', 'Bangalore', 'Karnataka', '560103', '�ndia','12.9212751','77.66187609999997','Pending');
--insert into Address (address_line, city, state, zip, country, latitude, longitude, status) values ('Bellandur Petrol Bunk Bus Stop', 'Bangalore', 'Karnataka', '560103', '�ndia','12.923319','77.67057150000005','Pending');
--
--insert into Address (address_line, city, state, zip, country, latitude, longitude, status) values ('Tin Factory Bus Stand', 'Bangalore', 'Karnataka', '560103', '�ndia','12.9963158','77.66868980000004','Pending');
--insert into Address (address_line, city, state, zip, country, latitude, longitude, status) values ('Kalamandir Bus Stop, Aswath Nagar', 'Bangalore', 'Karnataka', '560103', '�ndia','12.9602695','77.70122949999995','Pending');
--insert into Address (address_line, city, state, zip, country, latitude, longitude, status) values ('JP morgan', 'Bangalore', 'Karnataka', '560103', '�ndia','12.942441','77.696895','Pending');
--insert into Address (address_line, city, state, zip, country, latitude, longitude, status) values ('Silk Board Bus Stop', 'Bangalore', 'Karnataka', '560103', '�ndia','12.9174143','77.62412089999998','Pending');
--
----insert into Address (address_line, city, state, zip, country, status) values ('Yeswanthpur', 'Bangalore', 'Karnataka', '560037', '�ndia','Pending');
--
--insert into Address (address_line, city, state, zip, country, status) values ('Shivaji Nagar', 'Bangalore', 'Karnataka', '560037', '�ndia','Pending');
--insert into Address (address_line, city, state, zip, country, status) values ('Richmond road', 'Bangalore', 'Karnataka', '560037', '�ndia','Pending');
--insert into Address (address_line, city, state, zip, country, status) values ('Escort', 'Bangalore', 'Karnataka', '560037', '�ndia','Pending');
--insert into Address (address_line, city, state, zip, country, latitude, longitude, status) values ('Manayata Tech Park', 'Bangalore', 'Karnataka', '560016', '�ndia','12.9531159','77.6969939','Pending');
--
--
--insert into Driver (name, licenseNumber, phoneNumber, yearsOfExperience) values ('Chandu', 'ABCDEFGHIJKL', '1234567890', '5');
--insert into Driver (name, licenseNumber, phoneNumber, yearsOfExperience) values ('Anil', 'ABCDEFGHIJKL', '1234567890', '5');
--insert into Driver (name, licenseNumber, phoneNumber, yearsOfExperience) values ('Raj', 'ABCDEFGHIJKL', '1234567890', '5');
--insert into Driver (name, licenseNumber, phoneNumber, yearsOfExperience) values ('Prabhu', 'ABCDEFGHIJKL', '1234567890', '5');
--insert into Driver (name, licenseNumber, phoneNumber, yearsOfExperience) values ('Lakshmi', 'ABCDEFGHIJKL', '1234567890', '5');
--insert into Driver (name, licenseNumber, phoneNumber, yearsOfExperience) values ('Sameer', 'ABCDEFGHIJKL', '1234567890', '5');
--insert into Driver (name, licenseNumber, phoneNumber, yearsOfExperience) values ('Venkat', 'ABCDEFGHIJKL', '1234567890', '5');
--insert into Driver (name, licenseNumber, phoneNumber, yearsOfExperience) values ('Shyam', 'ABCDEFGHIJKL', '1234567890', '5');
--insert into Driver (name, licenseNumber, phoneNumber, yearsOfExperience) values ('Chalapati', 'ABCDEFGHIJKL', '1234567890', '5');
--insert into Driver (name, licenseNumber, phoneNumber, yearsOfExperience) values ('Yashodara', 'ABCDEFGHIJKL', '1234567890', '5');
--insert into Driver (name, licenseNumber, phoneNumber, yearsOfExperience) values ('Ankamu raju', 'ABCDEFGHIJKL', '1234567890', '5');
--
--insert into Vehicle (vehicleNumber, seats, trackingDeviceLink, driverId) values ('AP 1234', '9', 'TEST LINK', '5');
--insert into Vehicle (vehicleNumber, seats, trackingDeviceLink, driverId) values ('AP 1232', '7', 'TEST LINK', '5');
--insert into Vehicle (vehicleNumber, seats, trackingDeviceLink, driverId) values ('AP 1231', '13', 'TEST LINK', '5');
--insert into Vehicle (vehicleNumber, seats, trackingDeviceLink, driverId) values ('AP 1230', '7', 'TEST LINK', '5');
--insert into Vehicle (vehicleNumber, seats, trackingDeviceLink, driverId) values ('AP 1233', '6', 'TEST LINK', '5');
--insert into Vehicle (vehicleNumber, seats, trackingDeviceLink, driverId) values ('AP 1235', '3', 'TEST LINK', '5');
--insert into Vehicle (vehicleNumber, seats, trackingDeviceLink, driverId) values ('AP 1236', '2', 'TEST LINK', '5');
--insert into Vehicle (vehicleNumber, seats, trackingDeviceLink, driverId) values ('AP 1237', '8', 'TEST LINK', '5');
--insert into Vehicle (vehicleNumber, seats, trackingDeviceLink, driverId) values ('AP 1238', '9', 'TEST LINK', '5');
--insert into Vehicle (vehicleNumber, seats, trackingDeviceLink, driverId) values ('AP 1239', '5', 'TEST LINK', '5');
--insert into Vehicle (vehicleNumber, seats, trackingDeviceLink, driverId) values ('AP 1255', '4', 'TEST LINK', '5');
--
--insert into Shift (startTime, endTime) values ('09:30', '18:00');
--insert into Shift (startTime, endTime) values ('08:00', '16:30');
--insert into Shift (startTime, endTime) values ('11:00', '20:30');
--insert into Shift (startTime, endTime) values ('13:00', '21:30');
--insert into Shift (startTime, endTime) values ('09:30', '18:00');
--insert into Shift (startTime, endTime) values ('09:30', '18:00');
--insert into Shift (startTime, endTime) values ('09:30', '18:00');
--insert into Shift (startTime, endTime) values ('09:30', '18:00');
--insert into Shift (startTime, endTime) values ('09:30', '18:00');
--insert into Shift (startTime, endTime) values ('09:30', '18:00');
--insert into Shift (startTime, endTime) values ('09:30', '18:00');
--insert into Shift (startTime, endTime) values ('09:30', '18:00');
--
--commit;
