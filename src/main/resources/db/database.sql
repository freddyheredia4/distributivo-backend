
--TABLE LOCATION
CREATE TABLE locations(
    id serial PRIMARY KEY,
    name varchar(300),
    description TEXT,
    coordinates varchar(100),
    status BOOLEAN default true
);