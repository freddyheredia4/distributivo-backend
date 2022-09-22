--TABLE LOCATION
CREATE TABLE locations(
    id serial PRIMARY KEY,
    name varchar(300),
    coordinates varchar(100),
    description TEXT,
    coordinates varchar(100),
    status BOOLEAN default true
);
--TABLE DOCENTE 
create table teacher(
	id SERIAL , 
	dni CHARACTER VARYING (10),
	name CHARACTER VARYING (100),
	direction CHARACTER VARYING (100),
	phone CHARACTER VARYING (10),
	email CHARACTER VARYING (100),
	estado boolean,
	PRIMARY KEY (id)
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

/*SELECT t.dni, t.name, s."name", a."name",g.name, g.working_day ,g.level, g.parallel FROM teacher_distributive d join school_period s on d.school_time = s.id
join teacher t on d.teacher = t.id
join subject a on d.course = a.id
join grade g on d.grade = g.id

--------
select te.dni,te."name", te.lastname, 
su.code, su."name", su.laboratory_hours, su.theoretical_hours, 
gr."name",
sp."name", sp.start_date, sp.end_date
from teacher_distributive td
join teacher te on te.id = td.teacher
join grade gr on td.grade = gr.id
join subject su on td.course = su.id
join school_period sp on td.school_time = sp.id


*/