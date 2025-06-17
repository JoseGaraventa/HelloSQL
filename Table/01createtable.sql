USE test;

CREATE TABLE persons (
	id int,
    name varchar(100),
    age int,
    email varchar(50),
    created date
);


CREATE TABLE persons2 (
	id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created date
);

CREATE TABLE persons3 (
	id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created DATETIME,
    UNIQUE (id)
);

CREATE TABLE persons4 (
	id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created DATETIME,
    PRIMARY KEY (id)
);

CREATE TABLE persons5 (
	id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created DATETIME,
    PRIMARY KEY (id),
    CHECK (age >= 18)
);

CREATE TABLE persons6 (
	id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50) ,
    created DATETIME DEFAULT CURRENT_TIMESTAMP(),
    PRIMARY KEY (id),
    CHECK (age >= 18)
);

CREATE TABLE persons7 (
	id int NOT NULL auto_increment,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50) ,
    created DATETIME DEFAULT CURRENT_TIMESTAMP(),
    PRIMARY KEY (id),
    CHECK (age >= 18)
);


DROP TABLE Persosns8;

