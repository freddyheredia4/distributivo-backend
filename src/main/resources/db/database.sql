
--TABLE LOCATION
CREATE TABLE locations(
    id serial PRIMARY KEY,
    name varchar(300),
    coordinates varchar(100)
);
--TABLE DOCENTE 
create table docente(
	cedula SERIAL NOT NULL,
	nombre CHARACTER VARYING (100),
	ingreso date,
	PRIMARY KEY (cedula)
)