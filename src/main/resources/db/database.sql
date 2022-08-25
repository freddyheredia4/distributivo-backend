
--TABLE LOCATION
CREATE TABLE locations(
    id serial PRIMARY KEY,
    name varchar(300),
    coordinates varchar(100)
);
--TABLE DOCENTE 
create table teacher(
	id SERIAL , 
	dni CHARACTER VARYING (10),
	name CHARACTER VARYING (100),
	direction CHARACTER VARYING (100),
	phone CHARACTER VARYING (10),
	email CHARACTER VARYING (100),
	PRIMARY KEY (id)
);