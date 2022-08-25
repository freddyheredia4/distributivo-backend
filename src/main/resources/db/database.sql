--TABLE LOCATION
CREATE TABLE locations(
    id serial PRIMARY KEY,
    name varchar(300),
    description TEXT,
    coordinates varchar(100),
    status BOOLEAN default true
);

--TABLE CLASSROOM
CREATE TABLE classrooms(
    id serial primary key,
    type integer,
    location integer,
    name varchar(100),
    capacity int,
    status boolean default true
);

--TABLE MEANS
CREATE TABLE means_classrom(
    id serial PRIMARY KEY,
    classroom integer,
    proyect varchar(200),
    chairs integer,
    tables integer,
    status boolean default true
);

--TABLE TYPES
CREATE TABLE classroom_types(
    id serial PRIMARY KEY,
    code varchar(20),
    name varchar(100),
    status boolean default true 
);

--ADD CONSTRAINTS

--Add location constraint to classroom
ALTER TABLE classrooms ADD CONSTRAINT
fk_classroom_location   
FOREIGN KEY(location) REFERENCES locations(id);

--Add type constraint to classroom
ALTER TABLE classrooms ADD CONSTRAINT
fk_classroom_type
FOREIGN KEY(type) REFERENCES classroom_types(id);

--Add classroom constraint to mean
ALTER TABLE means_classrom ADD CONSTRAINT
fk_mean_classroom
FOREIGN KEY(classroom) REFERENCES classrooms(id);