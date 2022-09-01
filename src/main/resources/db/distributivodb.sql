-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler version: 0.9.4
-- PostgreSQL version: 13.0
-- Project Site: pgmodeler.io
-- Model Author: ---

-- Database creation must be performed outside a multi lined SQL file. 
-- These commands were put in this file only as a convenience.
-- 
-- object: prueba | type: DATABASE --
-- DROP DATABASE IF EXISTS prueba;
CREATE DATABASE prueba
	ENCODING = 'UTF8'
	LC_COLLATE = 'es_EC.UTF-8'
	LC_CTYPE = 'es_EC.UTF-8'
	TABLESPACE = pg_default
	OWNER = postgres;
-- ddl-end --


-- object: auth | type: SCHEMA --
-- DROP SCHEMA IF EXISTS auth CASCADE;
CREATE SCHEMA auth;
-- ddl-end --
ALTER SCHEMA auth OWNER TO postgres;
-- ddl-end --

SET search_path TO pg_catalog,public,auth;
-- ddl-end --

-- object: auth.authorities_authority_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS auth.authorities_authority_id_seq CASCADE;
CREATE SEQUENCE auth.authorities_authority_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE auth.authorities_authority_id_seq OWNER TO postgres;
-- ddl-end --

-- object: auth.authorities | type: TABLE --
-- DROP TABLE IF EXISTS auth.authorities CASCADE;
CREATE TABLE auth.authorities (
	authority_id serial NOT NULL,
	name character varying,
	CONSTRAINT authorities_pkey PRIMARY KEY (authority_id)
);
-- ddl-end --
ALTER TABLE auth.authorities OWNER TO postgres;
-- ddl-end --

-- object: auth.roles_role_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS auth.roles_role_id_seq CASCADE;
CREATE SEQUENCE auth.roles_role_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE auth.roles_role_id_seq OWNER TO postgres;
-- ddl-end --

-- object: auth.roles | type: TABLE --
-- DROP TABLE IF EXISTS auth.roles CASCADE;
CREATE TABLE auth.roles (
	role_id serial NOT NULL,
	name character varying,
	CONSTRAINT roles_pkey PRIMARY KEY (role_id)
);
-- ddl-end --
ALTER TABLE auth.roles OWNER TO postgres;
-- ddl-end --

-- object: auth.roles_authorities_role_authority_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS auth.roles_authorities_role_authority_id_seq CASCADE;
CREATE SEQUENCE auth.roles_authorities_role_authority_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE auth.roles_authorities_role_authority_id_seq OWNER TO postgres;
-- ddl-end --

-- object: auth.roles_authorities | type: TABLE --
-- DROP TABLE IF EXISTS auth.roles_authorities CASCADE;
CREATE TABLE auth.roles_authorities (
	role_authority_id serial NOT NULL,
	role_id integer,
	authority_id integer,
	CONSTRAINT roles_authorities_pkey PRIMARY KEY (role_authority_id)
);
-- ddl-end --
ALTER TABLE auth.roles_authorities OWNER TO postgres;
-- ddl-end --

-- object: auth.users_user_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS auth.users_user_id_seq CASCADE;
CREATE SEQUENCE auth.users_user_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE auth.users_user_id_seq OWNER TO postgres;
-- ddl-end --

-- object: auth.users | type: TABLE --
-- DROP TABLE IF EXISTS auth.users CASCADE;
CREATE TABLE auth.users (
	user_id serial NOT NULL,
	password character varying,
	name character varying,
	username character varying,
	looked boolean,
	expired boolean,
	enabled boolean,
	CONSTRAINT users_pkey PRIMARY KEY (user_id)
);
-- ddl-end --
ALTER TABLE auth.users OWNER TO postgres;
-- ddl-end --

-- object: auth.users_roles_user_role_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS auth.users_roles_user_role_id_seq CASCADE;
CREATE SEQUENCE auth.users_roles_user_role_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE auth.users_roles_user_role_id_seq OWNER TO postgres;
-- ddl-end --

-- object: auth.users_roles | type: TABLE --
-- DROP TABLE IF EXISTS auth.users_roles CASCADE;
CREATE TABLE auth.users_roles (
	user_role_id serial NOT NULL,
	user_id integer,
	role_id integer,
	CONSTRAINT users_roles_pkey PRIMARY KEY (user_role_id)
);
-- ddl-end --
ALTER TABLE auth.users_roles OWNER TO postgres;
-- ddl-end --

-- object: public."Asignatura_id_seq" | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public."Asignatura_id_seq" CASCADE;
CREATE SEQUENCE public."Asignatura_id_seq"
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE public."Asignatura_id_seq" OWNER TO postgres;
-- ddl-end --

-- object: public.subject | type: TABLE --
-- DROP TABLE IF EXISTS public.subject CASCADE;
CREATE TABLE public.subject (
	id serial NOT NULL,
	code character varying(20),
	name character varying(100),
	theoretical_hours integer,
	laboratory_hours integer,
	career integer,
	CONSTRAINT "Asignatura_pk" PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public.subject OWNER TO postgres;
-- ddl-end --

-- object: public.caerer_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.caerer_id_seq CASCADE;
CREATE SEQUENCE public.caerer_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE public.caerer_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.career | type: TABLE --
-- DROP TABLE IF EXISTS public.career CASCADE;
CREATE TABLE public.career (
	id serial NOT NULL,
	name character varying(100),
	duration integer,
	img text,
	status boolean,
	CONSTRAINT caerer_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public.career OWNER TO postgres;
-- ddl-end --

-- object: public.classroom_types_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.classroom_types_id_seq CASCADE;
CREATE SEQUENCE public.classroom_types_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE public.classroom_types_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.classroom_types | type: TABLE --
-- DROP TABLE IF EXISTS public.classroom_types CASCADE;
CREATE TABLE public.classroom_types (
	id serial NOT NULL,
	code character varying(20),
	name character varying(100),
	status boolean DEFAULT true,
	CONSTRAINT classroom_types_pkey PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public.classroom_types OWNER TO postgres;
-- ddl-end --

-- object: public.classrooms_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.classrooms_id_seq CASCADE;
CREATE SEQUENCE public.classrooms_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE public.classrooms_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.classrooms | type: TABLE --
-- DROP TABLE IF EXISTS public.classrooms CASCADE;
CREATE TABLE public.classrooms (
	id serial NOT NULL,
	type integer,
	location integer,
	name character varying(100),
	capacity integer,
	status boolean DEFAULT true,
	description text,
	CONSTRAINT classrooms_pkey PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public.classrooms OWNER TO postgres;
-- ddl-end --

-- object: public.color_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.color_id_seq CASCADE;
CREATE SEQUENCE public.color_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE public.color_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.color | type: TABLE --
-- DROP TABLE IF EXISTS public.color CASCADE;
CREATE TABLE public.color (
	id serial NOT NULL,
	name character varying(50),
	code character varying(20),
	CONSTRAINT color_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public.color OWNER TO postgres;
-- ddl-end --

-- object: public.configuracion_horario_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.configuracion_horario_id_seq CASCADE;
CREATE SEQUENCE public.configuracion_horario_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE public.configuracion_horario_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.time_configuration | type: TABLE --
-- DROP TABLE IF EXISTS public.time_configuration CASCADE;
CREATE TABLE public.time_configuration (
	id serial NOT NULL,
	school_period integer,
	classroom integer,
	day integer,
	date date,
	hour integer,
	occupied_by integer,
	status boolean,
	color character varying(20),
	CONSTRAINT configuracion_horario_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public.time_configuration OWNER TO postgres;
-- ddl-end --

-- object: public.dia_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.dia_id_seq CASCADE;
CREATE SEQUENCE public.dia_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE public.dia_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.day | type: TABLE --
-- DROP TABLE IF EXISTS public.day CASCADE;
CREATE TABLE public.day (
	id serial NOT NULL,
	name character varying(20),
	posicion integer,
	CONSTRAINT dia_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public.day OWNER TO postgres;
-- ddl-end --

-- object: public.distributivo_docente_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.distributivo_docente_id_seq CASCADE;
CREATE SEQUENCE public.distributivo_docente_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE public.distributivo_docente_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.teacher_distributive | type: TABLE --
-- DROP TABLE IF EXISTS public.teacher_distributive CASCADE;
CREATE TABLE public.teacher_distributive (
	id serial NOT NULL,
	school_time integer,
	teacher integer,
	course integer,
	grade integer,
	CONSTRAINT distributivo_docente_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public.teacher_distributive OWNER TO postgres;
-- ddl-end --

-- object: public.grade_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.grade_id_seq CASCADE;
CREATE SEQUENCE public.grade_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE public.grade_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.grade | type: TABLE --
-- DROP TABLE IF EXISTS public.grade CASCADE;
CREATE TABLE public.grade (
	id serial NOT NULL,
	working_day integer,
	level integer,
	parallel integer,
	CONSTRAINT grade_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public.grade OWNER TO postgres;
-- ddl-end --

-- object: public.locations_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.locations_id_seq CASCADE;
CREATE SEQUENCE public.locations_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE public.locations_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.locations | type: TABLE --
-- DROP TABLE IF EXISTS public.locations CASCADE;
CREATE TABLE public.locations (
	id serial NOT NULL,
	name character varying(300),
	description text,
	status boolean DEFAULT true,
	latitude bigint,
	longitude bigint,
	CONSTRAINT locations_pkey PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public.locations OWNER TO postgres;
-- ddl-end --

-- object: public.means_classrom_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.means_classrom_id_seq CASCADE;
CREATE SEQUENCE public.means_classrom_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE public.means_classrom_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.means_classrom | type: TABLE --
-- DROP TABLE IF EXISTS public.means_classrom CASCADE;
CREATE TABLE public.means_classrom (
	id serial NOT NULL,
	classroom integer,
	proyect character varying(200),
	chairs integer,
	tables integer,
	status boolean DEFAULT true,
	CONSTRAINT means_classrom_pkey PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public.means_classrom OWNER TO postgres;
-- ddl-end --

-- object: public.periodo_lectivo_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.periodo_lectivo_id_seq CASCADE;
CREATE SEQUENCE public.periodo_lectivo_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE public.periodo_lectivo_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.school_period | type: TABLE --
-- DROP TABLE IF EXISTS public.school_period CASCADE;
CREATE TABLE public.school_period (
	id serial NOT NULL,
	name character varying(100),
	start_date date,
	end_date date,
	status boolean,
	CONSTRAINT periodo_lectivo_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public.school_period OWNER TO postgres;
-- ddl-end --

-- object: public.solicitud_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.solicitud_id_seq CASCADE;
CREATE SEQUENCE public.solicitud_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE public.solicitud_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.solicitud_detalle_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.solicitud_detalle_id_seq CASCADE;
CREATE SEQUENCE public.solicitud_detalle_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE public.solicitud_detalle_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.size_request | type: TABLE --
-- DROP TABLE IF EXISTS public.size_request CASCADE;
CREATE TABLE public.size_request (
	id serial NOT NULL,
	request integer,
	teaching_subject integer,
	start_date date,
	end_date date,
	status boolean,
	CONSTRAINT solicitud_detalle_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public.size_request OWNER TO postgres;
-- ddl-end --

-- object: public.request | type: TABLE --
-- DROP TABLE IF EXISTS public.request CASCADE;
CREATE TABLE public.request (
	id serial NOT NULL,
	school_time integer,
	date date,
	career integer,
	status boolean,
	requested_time integer,
	CONSTRAINT solicitud_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public.request OWNER TO postgres;
-- ddl-end --

-- object: public.tabla_horas_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.tabla_horas_id_seq CASCADE;
CREATE SEQUENCE public.tabla_horas_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE public.tabla_horas_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.hours_table | type: TABLE --
-- DROP TABLE IF EXISTS public.hours_table CASCADE;
CREATE TABLE public.hours_table (
	id serial NOT NULL,
	hour character varying(10),
	time_position integer,
	CONSTRAINT tabla_horas_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public.hours_table OWNER TO postgres;
-- ddl-end --

-- object: public.teacher_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.teacher_id_seq CASCADE;
CREATE SEQUENCE public.teacher_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE public.teacher_id_seq OWNER TO postgres;
-- ddl-end --

-- object: public.teacher | type: TABLE --
-- DROP TABLE IF EXISTS public.teacher CASCADE;
CREATE TABLE public.teacher (
	id serial NOT NULL,
	dni character varying(10),
	name character varying(100),
	color character varying(100),
	phone character varying(10),
	email character varying(100),
	estado boolean,
	archived boolean DEFAULT false,
	CONSTRAINT teacher_pkey PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE public.teacher OWNER TO postgres;
-- ddl-end --

-- object: fk_auth | type: CONSTRAINT --
-- ALTER TABLE auth.roles_authorities DROP CONSTRAINT IF EXISTS fk_auth CASCADE;
ALTER TABLE auth.roles_authorities ADD CONSTRAINT fk_auth FOREIGN KEY (authority_id)
REFERENCES auth.authorities (authority_id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: fk_role | type: CONSTRAINT --
-- ALTER TABLE auth.roles_authorities DROP CONSTRAINT IF EXISTS fk_role CASCADE;
ALTER TABLE auth.roles_authorities ADD CONSTRAINT fk_role FOREIGN KEY (role_id)
REFERENCES auth.roles (role_id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: fk_role | type: CONSTRAINT --
-- ALTER TABLE auth.users_roles DROP CONSTRAINT IF EXISTS fk_role CASCADE;
ALTER TABLE auth.users_roles ADD CONSTRAINT fk_role FOREIGN KEY (user_role_id)
REFERENCES auth.roles (role_id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: fk_user | type: CONSTRAINT --
-- ALTER TABLE auth.users_roles DROP CONSTRAINT IF EXISTS fk_user CASCADE;
ALTER TABLE auth.users_roles ADD CONSTRAINT fk_user FOREIGN KEY (user_id)
REFERENCES auth.users (user_id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: fk_classroom_location | type: CONSTRAINT --
-- ALTER TABLE public.classrooms DROP CONSTRAINT IF EXISTS fk_classroom_location CASCADE;
ALTER TABLE public.classrooms ADD CONSTRAINT fk_classroom_location FOREIGN KEY (location)
REFERENCES public.locations (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: fk_classroom_type | type: CONSTRAINT --
-- ALTER TABLE public.classrooms DROP CONSTRAINT IF EXISTS fk_classroom_type CASCADE;
ALTER TABLE public.classrooms ADD CONSTRAINT fk_classroom_type FOREIGN KEY (type)
REFERENCES public.classroom_types (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: classroom_fk | type: CONSTRAINT --
-- ALTER TABLE public.time_configuration DROP CONSTRAINT IF EXISTS classroom_fk CASCADE;
ALTER TABLE public.time_configuration ADD CONSTRAINT classroom_fk FOREIGN KEY (classroom)
REFERENCES public.classrooms (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: dia_fk | type: CONSTRAINT --
-- ALTER TABLE public.time_configuration DROP CONSTRAINT IF EXISTS dia_fk CASCADE;
ALTER TABLE public.time_configuration ADD CONSTRAINT dia_fk FOREIGN KEY (day)
REFERENCES public.day (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: hora_fk | type: CONSTRAINT --
-- ALTER TABLE public.time_configuration DROP CONSTRAINT IF EXISTS hora_fk CASCADE;
ALTER TABLE public.time_configuration ADD CONSTRAINT hora_fk FOREIGN KEY (hour)
REFERENCES public.hours_table (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: periodo_lectivo_fk | type: CONSTRAINT --
-- ALTER TABLE public.time_configuration DROP CONSTRAINT IF EXISTS periodo_lectivo_fk CASCADE;
ALTER TABLE public.time_configuration ADD CONSTRAINT periodo_lectivo_fk FOREIGN KEY (school_period)
REFERENCES public.school_period (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: asignatura_fk | type: CONSTRAINT --
-- ALTER TABLE public.teacher_distributive DROP CONSTRAINT IF EXISTS asignatura_fk CASCADE;
ALTER TABLE public.teacher_distributive ADD CONSTRAINT asignatura_fk FOREIGN KEY (course)
REFERENCES public.subject (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: periodo_lectivo_fk | type: CONSTRAINT --
-- ALTER TABLE public.teacher_distributive DROP CONSTRAINT IF EXISTS periodo_lectivo_fk CASCADE;
ALTER TABLE public.teacher_distributive ADD CONSTRAINT periodo_lectivo_fk FOREIGN KEY (school_time)
REFERENCES public.school_period (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: teacher_fk | type: CONSTRAINT --
-- ALTER TABLE public.teacher_distributive DROP CONSTRAINT IF EXISTS teacher_fk CASCADE;
ALTER TABLE public.teacher_distributive ADD CONSTRAINT teacher_fk FOREIGN KEY (teacher)
REFERENCES public.teacher (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: grade_fk | type: CONSTRAINT --
-- ALTER TABLE public.teacher_distributive DROP CONSTRAINT IF EXISTS grade_fk CASCADE;
ALTER TABLE public.teacher_distributive ADD CONSTRAINT grade_fk FOREIGN KEY (grade)
REFERENCES public.grade (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: fk_mean_classroom | type: CONSTRAINT --
-- ALTER TABLE public.means_classrom DROP CONSTRAINT IF EXISTS fk_mean_classroom CASCADE;
ALTER TABLE public.means_classrom ADD CONSTRAINT fk_mean_classroom FOREIGN KEY (classroom)
REFERENCES public.classrooms (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: periodo_lectivo_fk | type: CONSTRAINT --
-- ALTER TABLE public.request DROP CONSTRAINT IF EXISTS periodo_lectivo_fk CASCADE;
ALTER TABLE public.request ADD CONSTRAINT periodo_lectivo_fk FOREIGN KEY (school_time)
REFERENCES public.school_period (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: "fk-asignatura_docente" | type: CONSTRAINT --
-- ALTER TABLE public.size_request DROP CONSTRAINT IF EXISTS "fk-asignatura_docente" CASCADE;
ALTER TABLE public.size_request ADD CONSTRAINT "fk-asignatura_docente" FOREIGN KEY (teaching_subject)
REFERENCES public.teacher_distributive (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: solicitud_fk | type: CONSTRAINT --
-- ALTER TABLE public.size_request DROP CONSTRAINT IF EXISTS solicitud_fk CASCADE;
ALTER TABLE public.size_request ADD CONSTRAINT solicitud_fk FOREIGN KEY (request)
REFERENCES public.request (id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: "grant_CU_eb94f049ac" | type: PERMISSION --
GRANT CREATE,USAGE
   ON SCHEMA public
   TO postgres;
-- ddl-end --

-- object: "grant_CU_cd8e46e7b6" | type: PERMISSION --
GRANT CREATE,USAGE
   ON SCHEMA public
   TO PUBLIC;
-- ddl-end --


