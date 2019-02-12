SELECT 'hello, SQLite'; 

CREATE TABLE IF NOT EXISTS Fleet(
    id INTEGER PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO Fleet(id, name) VALUES (1, "Fleeter");
INSERT INTO Fleet(id, name) VALUES (2, "Alottaships");
INSERT INTO Fleet(id, name) VALUES (3, "Manyships");
INSERT INTO Fleet(id, name) VALUES (4, "Thisfleet");
INSERT INTO Fleet(id, name) VALUES (5, "Ranoutofnames");

CREATE TABLE IF NOT EXISTS Ship(
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    date_built VARCHAR(10),
    fleetid INTEGER
);

INSERT INTO Ship(id, name, date_built, fleetid) VALUES (1, "Shipper", "1999-12-31", 1);
INSERT INTO Ship(id, name, date_built, fleetid) VALUES (2, "Fleety", "2000-12-31", 1);
INSERT INTO Ship(id, name, date_built, fleetid) VALUES (3, "Groupy", "2019-01-01", 2);
INSERT INTO Ship(id, name, date_built, fleetid) VALUES (4, "Phony", "1999-03-31", 2);
INSERT INTO Ship(id, name, date_built, fleetid) VALUES (5, "Definitelyshippery", "1829-10-13", 2);
INSERT INTO Ship(id, name, date_built, fleetid) VALUES (6, "Sock", "2013-02-14", 2);
INSERT INTO Ship(id, name, date_built, fleetid) VALUES (7, "Cup", "1920-11-06", 3);
INSERT INTO Ship(id, name, date_built, fleetid) VALUES (8, "Github", "2000-01-01", 4);
INSERT INTO Ship(id, name, date_built, fleetid) VALUES (9, "Computer", "1099-05-31", 5);

CREATE TABLE IF NOT EXISTS Sailor(
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    date_of_birth VARCHAR(10)
);

INSERT INTO Sailor(id, name, date_of_birth) VALUES (1, "Hippity", "1999-12-31");
INSERT INTO Sailor(id, name, date_of_birth) VALUES (2, "Giggity", "2000-10-31");
INSERT INTO Sailor(id, name, date_of_birth) VALUES (3, "Panicky", "2001-07-31");
INSERT INTO Sailor(id, name, date_of_birth) VALUES (4, "Assigny", "1998-08-31");
INSERT INTO Sailor(id, name, date_of_birth) VALUES (5, "Generally", "1999-01-31");
INSERT INTO Sailor(id, name, date_of_birth) VALUES (6, "Aftery", "2010-03-10");
INSERT INTO Sailor(id, name, date_of_birth) VALUES (7, "Letsee", "1999-12-11");
INSERT INTO Sailor(id, name, date_of_birth) VALUES (8, "Dothis", "1999-12-05");
INSERT INTO Sailor(id, name, date_of_birth) VALUES (9, "Sequely", "1999-05-06");
INSERT INTO Sailor(id, name, date_of_birth) VALUES (10, "Abouty", "2015-05-25");
INSERT INTO Sailor(id, name, date_of_birth) VALUES (11, "Wriggity", "2013-01-24");
INSERT INTO Sailor(id, name, date_of_birth) VALUES (12, "Setty", "2013-09-28");
INSERT INTO Sailor(id, name, date_of_birth) VALUES (13, "Templaty", "1988-02-10");
INSERT INTO Sailor(id, name, date_of_birth) VALUES (14, "Guessy", "1974-10-01");
INSERT INTO Sailor(id, name, date_of_birth) VALUES (15, "Skippy", "2000-11-15");
INSERT INTO Sailor(id, name, date_of_birth) VALUES (16, "Nothi", "1999-12-17");

CREATE TABLE IF NOT EXISTS Duty(
    id INTEGER PRIMARY KEY,
    sailorid INTEGER,
    shipid INTEGER,
    sailor_rank INTEGER,
    start_date VARCHAR(10),
    end_date VARCHAR(10),
    active INTEGER
);

INSERT INTO Duty(id, sailorid, shipid, sailor_rank, start_date, end_date, active) VALUES (1, 16, 1, 1, "2000-01-01", "2000-01-02", 0);
INSERT INTO Duty(id, sailorid, shipid, sailor_rank, start_date, end_date, active) VALUES (2, 15, 2, 2, "2000-01-01", "2000-02-02", 0);
INSERT INTO Duty(id, sailorid, shipid, sailor_rank, start_date, end_date, active) VALUES (3, 14, 3, 3, "2000-01-01", "2000-03-02", 0);
INSERT INTO Duty(id, sailorid, shipid, sailor_rank, start_date, end_date, active) VALUES (4, 13, 4, 4, "2000-01-01", "2000-04-02", 0);
INSERT INTO Duty(id, sailorid, shipid, sailor_rank, start_date, end_date, active) VALUES (5, 12, 4, 5, "2000-01-01", "2000-05-02", 1);
INSERT INTO Duty(id, sailorid, shipid, sailor_rank, start_date, end_date, active) VALUES (6, 11, 5, 6, "2000-01-01", "2000-06-02", 0);
INSERT INTO Duty(id, sailorid, shipid, sailor_rank, start_date, end_date, active) VALUES (7, 10, 2, 7, "2000-01-01", "2000-07-02", 0);
INSERT INTO Duty(id, sailorid, shipid, sailor_rank, start_date, end_date, active) VALUES (8, 1, 2, 8, "2000-01-01", "2000-08-02", 0);
INSERT INTO Duty(id, sailorid, shipid, sailor_rank, start_date, end_date, active) VALUES (9, 12, 3, 9, "2004-01-01", "2004-01-02", 0);
INSERT INTO Duty(id, sailorid, shipid, sailor_rank, start_date, end_date, active) VALUES (10, 13, 1, 1, "2005-01-01", "2010-11-02", 1);
INSERT INTO Duty(id, sailorid, shipid, sailor_rank, start_date, end_date, active) VALUES (11, 2, 1, 1, "2005-01-01", "2010-11-12", 0);
INSERT INTO Duty(id, sailorid, shipid, sailor_rank, start_date, end_date, active) VALUES (12, 3, 5, 1, "2005-01-01", "2010-11-22", 0);
INSERT INTO Duty(id, sailorid, shipid, sailor_rank, start_date, end_date, active) VALUES (13, 4, 1, 2, "2005-01-01", "2010-11-01", 0);
INSERT INTO Duty(id, sailorid, shipid, sailor_rank, start_date, end_date, active) VALUES (14, 5, 6, 3, "2005-01-01", "2010-11-01", 0);
INSERT INTO Duty(id, sailorid, shipid, sailor_rank, start_date, end_date, active) VALUES (15, 6, 6, 4, "2005-01-01", "2010-11-06", 0);
INSERT INTO Duty(id, sailorid, shipid, sailor_rank, start_date, end_date, active) VALUES (16, 7, 7, 5, "2007-01-01", "2010-11-02", 1);
INSERT INTO Duty(id, sailorid, shipid, sailor_rank, start_date, end_date, active) VALUES (17, 8, 7, 6, "2007-01-01", "2010-11-03", 0);
INSERT INTO Duty(id, sailorid, shipid, sailor_rank, start_date, end_date, active) VALUES (18, 9, 7, 7, "2007-01-01", "2010-11-06", 0);
INSERT INTO Duty(id, sailorid, shipid, sailor_rank, start_date, end_date, active) VALUES (19, 1, 1, 8, "2007-01-01", "2010-11-01", 0);
INSERT INTO Duty(id, sailorid, shipid, sailor_rank, start_date, end_date, active) VALUES (20, 16, 9, 1, "2007-01-01", "2010-11-03", 0);
INSERT INTO Duty(id, sailorid, shipid, sailor_rank, start_date, end_date, active) VALUES (21, 16, 8, 1, "2007-01-01", "2010-11-06", 0);