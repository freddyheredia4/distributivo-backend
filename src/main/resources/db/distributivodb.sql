PGDMP         !    	            z            distributivodb    14.5    14.5 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            !           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            "           1262    67002    distributivodb    DATABASE     c   CREATE DATABASE distributivodb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'es_MX.UTF-8';
    DROP DATABASE distributivodb;
                postgres    false                        2615    67003    auth    SCHEMA        CREATE SCHEMA auth;
    DROP SCHEMA auth;
                postgres    false            �            1259    67004    authorities    TABLE     a   CREATE TABLE auth.authorities (
    authority_id integer NOT NULL,
    name character varying
);
    DROP TABLE auth.authorities;
       auth         heap    postgres    false    4            �            1259    67009    authorities_authority_id_seq    SEQUENCE     �   CREATE SEQUENCE auth.authorities_authority_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 1   DROP SEQUENCE auth.authorities_authority_id_seq;
       auth          postgres    false    4            �            1259    67010    authorities_authority_id_seq1    SEQUENCE     �   CREATE SEQUENCE auth.authorities_authority_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE auth.authorities_authority_id_seq1;
       auth          postgres    false    210    4            #           0    0    authorities_authority_id_seq1    SEQUENCE OWNED BY     Z   ALTER SEQUENCE auth.authorities_authority_id_seq1 OWNED BY auth.authorities.authority_id;
          auth          postgres    false    212            �            1259    67011    roles    TABLE     V   CREATE TABLE auth.roles (
    role_id integer NOT NULL,
    name character varying
);
    DROP TABLE auth.roles;
       auth         heap    postgres    false    4            �            1259    67016    roles_authorities    TABLE        CREATE TABLE auth.roles_authorities (
    role_authority_id integer NOT NULL,
    role_id integer,
    authority_id integer
);
 #   DROP TABLE auth.roles_authorities;
       auth         heap    postgres    false    4            �            1259    67019 '   roles_authorities_role_authority_id_seq    SEQUENCE     �   CREATE SEQUENCE auth.roles_authorities_role_authority_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 <   DROP SEQUENCE auth.roles_authorities_role_authority_id_seq;
       auth          postgres    false    4            �            1259    67020 (   roles_authorities_role_authority_id_seq1    SEQUENCE     �   CREATE SEQUENCE auth.roles_authorities_role_authority_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE auth.roles_authorities_role_authority_id_seq1;
       auth          postgres    false    214    4            $           0    0 (   roles_authorities_role_authority_id_seq1    SEQUENCE OWNED BY     p   ALTER SEQUENCE auth.roles_authorities_role_authority_id_seq1 OWNED BY auth.roles_authorities.role_authority_id;
          auth          postgres    false    216            �            1259    67021    roles_role_id_seq    SEQUENCE     �   CREATE SEQUENCE auth.roles_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 &   DROP SEQUENCE auth.roles_role_id_seq;
       auth          postgres    false    4            �            1259    67022    roles_role_id_seq1    SEQUENCE     �   CREATE SEQUENCE auth.roles_role_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE auth.roles_role_id_seq1;
       auth          postgres    false    4    213            %           0    0    roles_role_id_seq1    SEQUENCE OWNED BY     D   ALTER SEQUENCE auth.roles_role_id_seq1 OWNED BY auth.roles.role_id;
          auth          postgres    false    218            �            1259    67023    users    TABLE     �   CREATE TABLE auth.users (
    user_id integer NOT NULL,
    password character varying,
    name character varying,
    username character varying,
    looked boolean,
    expired boolean,
    enabled boolean
);
    DROP TABLE auth.users;
       auth         heap    postgres    false    4            �            1259    67028    users_roles    TABLE     o   CREATE TABLE auth.users_roles (
    user_role_id integer NOT NULL,
    user_id integer,
    role_id integer
);
    DROP TABLE auth.users_roles;
       auth         heap    postgres    false    4            �            1259    67031    users_roles_user_role_id_seq    SEQUENCE     �   CREATE SEQUENCE auth.users_roles_user_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 1   DROP SEQUENCE auth.users_roles_user_role_id_seq;
       auth          postgres    false    4            �            1259    67032    users_roles_user_role_id_seq1    SEQUENCE     �   CREATE SEQUENCE auth.users_roles_user_role_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE auth.users_roles_user_role_id_seq1;
       auth          postgres    false    220    4            &           0    0    users_roles_user_role_id_seq1    SEQUENCE OWNED BY     Z   ALTER SEQUENCE auth.users_roles_user_role_id_seq1 OWNED BY auth.users_roles.user_role_id;
          auth          postgres    false    222            �            1259    67033    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE auth.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 &   DROP SEQUENCE auth.users_user_id_seq;
       auth          postgres    false    4            �            1259    67034    users_user_id_seq1    SEQUENCE     �   CREATE SEQUENCE auth.users_user_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE auth.users_user_id_seq1;
       auth          postgres    false    4    219            '           0    0    users_user_id_seq1    SEQUENCE OWNED BY     D   ALTER SEQUENCE auth.users_user_id_seq1 OWNED BY auth.users.user_id;
          auth          postgres    false    224            �            1259    67035    Asignatura_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Asignatura_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 *   DROP SEQUENCE public."Asignatura_id_seq";
       public          postgres    false            �            1259    67036    caerer_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.caerer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 $   DROP SEQUENCE public.caerer_id_seq;
       public          postgres    false            �            1259    67037    career    TABLE     �   CREATE TABLE public.career (
    id integer NOT NULL,
    name character varying(100),
    duration integer,
    img text,
    status boolean,
    code character varying(100)
);
    DROP TABLE public.career;
       public         heap    postgres    false            �            1259    67042    career_id_seq    SEQUENCE     �   CREATE SEQUENCE public.career_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.career_id_seq;
       public          postgres    false    227            (           0    0    career_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.career_id_seq OWNED BY public.career.id;
          public          postgres    false    228            �            1259    67043 	   catalogue    TABLE     �   CREATE TABLE public.catalogue (
    id integer NOT NULL,
    name character varying(50),
    value character varying(50),
    status boolean
);
    DROP TABLE public.catalogue;
       public         heap    postgres    false            �            1259    67046    catalogue_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalogue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.catalogue_id_seq;
       public          postgres    false    229            )           0    0    catalogue_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.catalogue_id_seq OWNED BY public.catalogue.id;
          public          postgres    false    230            �            1259    67047    classroom_types    TABLE     �   CREATE TABLE public.classroom_types (
    id integer NOT NULL,
    code character varying(20),
    name character varying(100),
    status boolean DEFAULT true
);
 #   DROP TABLE public.classroom_types;
       public         heap    postgres    false            �            1259    67051    classroom_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.classroom_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 -   DROP SEQUENCE public.classroom_types_id_seq;
       public          postgres    false            �            1259    67052    classroom_types_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.classroom_types_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.classroom_types_id_seq1;
       public          postgres    false    231            *           0    0    classroom_types_id_seq1    SEQUENCE OWNED BY     R   ALTER SEQUENCE public.classroom_types_id_seq1 OWNED BY public.classroom_types.id;
          public          postgres    false    233            �            1259    67053 
   classrooms    TABLE     �   CREATE TABLE public.classrooms (
    id integer NOT NULL,
    type integer,
    location integer,
    name character varying(100),
    capacity integer,
    status boolean DEFAULT true,
    description text
);
    DROP TABLE public.classrooms;
       public         heap    postgres    false            �            1259    67059    classrooms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.classrooms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 (   DROP SEQUENCE public.classrooms_id_seq;
       public          postgres    false            �            1259    67060    classrooms_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.classrooms_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.classrooms_id_seq1;
       public          postgres    false    234            +           0    0    classrooms_id_seq1    SEQUENCE OWNED BY     H   ALTER SEQUENCE public.classrooms_id_seq1 OWNED BY public.classrooms.id;
          public          postgres    false    236            �            1259    67061    color_id_seq    SEQUENCE     }   CREATE SEQUENCE public.color_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 #   DROP SEQUENCE public.color_id_seq;
       public          postgres    false            �            1259    67062    configuracion_horario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.configuracion_horario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 3   DROP SEQUENCE public.configuracion_horario_id_seq;
       public          postgres    false            �            1259    67063    day    TABLE     k   CREATE TABLE public.day (
    id integer NOT NULL,
    name character varying(20),
    posicion integer
);
    DROP TABLE public.day;
       public         heap    postgres    false            �            1259    67066 
   day_id_seq    SEQUENCE     �   CREATE SEQUENCE public.day_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.day_id_seq;
       public          postgres    false    239            ,           0    0 
   day_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.day_id_seq OWNED BY public.day.id;
          public          postgres    false    240            �            1259    67067 
   dia_id_seq    SEQUENCE     {   CREATE SEQUENCE public.dia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 !   DROP SEQUENCE public.dia_id_seq;
       public          postgres    false            �            1259    67069    grade    TABLE     �   CREATE TABLE public.grade (
    id integer NOT NULL,
    name character varying(100),
    working_day integer,
    level integer,
    parallel integer,
    status boolean DEFAULT true,
    career integer
);
    DROP TABLE public.grade;
       public         heap    postgres    false                       1259    67098    school_period    TABLE     �   CREATE TABLE public.school_period (
    id integer NOT NULL,
    name character varying(100),
    start_date date,
    end_date date,
    status boolean
);
 !   DROP TABLE public.school_period;
       public         heap    postgres    false                       1259    67108    subject    TABLE     �   CREATE TABLE public.subject (
    id integer NOT NULL,
    code character varying(20),
    name character varying(100),
    theoretical_hours integer,
    laboratory_hours integer,
    career integer,
    status boolean
);
    DROP TABLE public.subject;
       public         heap    postgres    false            
           1259    67113    teacher    TABLE     '  CREATE TABLE public.teacher (
    id integer NOT NULL,
    dni character varying(10),
    name character varying(100),
    color character varying(100),
    phone character varying(10),
    email character varying(100),
    archived boolean DEFAULT false,
    lastname character varying(100)
);
    DROP TABLE public.teacher;
       public         heap    postgres    false                       1259    67117    teacher_distributive    TABLE     �   CREATE TABLE public.teacher_distributive (
    id integer NOT NULL,
    school_time integer,
    teacher integer,
    course integer,
    grade integer,
    career integer
);
 (   DROP TABLE public.teacher_distributive;
       public         heap    postgres    false                       1259    67311    distributive    VIEW     �  CREATE VIEW public.distributive AS
 SELECT dis.id,
    teacher.id AS teacherid,
    teacher.dni AS teacher_cedula,
    teacher.name AS teacher_nombre,
    teacher.lastname AS teacher_apellido,
    grade.id AS gradeid,
    grade.name AS grade_name,
    subject.id AS subjectid,
    subject.name AS subject_name,
    subject.code AS subject_code,
    periood.id AS perioodid,
    periood.name AS period_name
   FROM ((((public.teacher_distributive dis
     JOIN public.school_period periood ON ((periood.id = dis.school_time)))
     JOIN public.teacher ON ((teacher.id = dis.teacher)))
     JOIN public.subject ON ((subject.id = dis.course)))
     JOIN public.grade ON ((grade.id = dis.grade)));
    DROP VIEW public.distributive;
       public          postgres    false    243    243    257    257    263    263    263    266    266    266    266    267    267    267    267    267            �            1259    67068    distributivo_docente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.distributivo_docente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 2   DROP SEQUENCE public.distributivo_docente_id_seq;
       public          postgres    false            �            1259    67073    grade_id_seq    SEQUENCE     }   CREATE SEQUENCE public.grade_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 #   DROP SEQUENCE public.grade_id_seq;
       public          postgres    false            �            1259    67074    grade_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.grade_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.grade_id_seq1;
       public          postgres    false    243            -           0    0    grade_id_seq1    SEQUENCE OWNED BY     >   ALTER SEQUENCE public.grade_id_seq1 OWNED BY public.grade.id;
          public          postgres    false    245            �            1259    67075    hours_table    TABLE     x   CREATE TABLE public.hours_table (
    id integer NOT NULL,
    hour character varying(15),
    time_position integer
);
    DROP TABLE public.hours_table;
       public         heap    postgres    false            �            1259    67078    hours_table_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hours_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hours_table_id_seq;
       public          postgres    false    246            .           0    0    hours_table_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.hours_table_id_seq OWNED BY public.hours_table.id;
          public          postgres    false    247            �            1259    67079 	   locations    TABLE     �   CREATE TABLE public.locations (
    id integer NOT NULL,
    name character varying(300),
    description text,
    status boolean DEFAULT true,
    latitude bigint,
    longitude bigint
);
    DROP TABLE public.locations;
       public         heap    postgres    false            �            1259    67085    locations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 '   DROP SEQUENCE public.locations_id_seq;
       public          postgres    false            �            1259    67086    locations_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.locations_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.locations_id_seq1;
       public          postgres    false    248            /           0    0    locations_id_seq1    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.locations_id_seq1 OWNED BY public.locations.id;
          public          postgres    false    250            �            1259    67087    means_classrom    TABLE     �   CREATE TABLE public.means_classrom (
    id integer NOT NULL,
    classroom integer,
    proyect character varying(200),
    chairs integer,
    tables integer,
    status boolean DEFAULT true
);
 "   DROP TABLE public.means_classrom;
       public         heap    postgres    false            �            1259    67091    means_classrom_id_seq    SEQUENCE     �   CREATE SEQUENCE public.means_classrom_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 ,   DROP SEQUENCE public.means_classrom_id_seq;
       public          postgres    false            �            1259    67092    means_classrom_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.means_classrom_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.means_classrom_id_seq1;
       public          postgres    false    251            0           0    0    means_classrom_id_seq1    SEQUENCE OWNED BY     P   ALTER SEQUENCE public.means_classrom_id_seq1 OWNED BY public.means_classrom.id;
          public          postgres    false    253            �            1259    67093    periodo_lectivo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.periodo_lectivo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 -   DROP SEQUENCE public.periodo_lectivo_id_seq;
       public          postgres    false            �            1259    67094    request    TABLE     �   CREATE TABLE public.request (
    id integer NOT NULL,
    school_time integer,
    date date,
    career integer,
    status boolean,
    requested_time integer
);
    DROP TABLE public.request;
       public         heap    postgres    false                        1259    67097    request_id_seq    SEQUENCE     �   CREATE SEQUENCE public.request_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.request_id_seq;
       public          postgres    false    255            1           0    0    request_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.request_id_seq OWNED BY public.request.id;
          public          postgres    false    256                       1259    67101    school_period_id_seq    SEQUENCE     �   CREATE SEQUENCE public.school_period_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.school_period_id_seq;
       public          postgres    false    257            2           0    0    school_period_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.school_period_id_seq OWNED BY public.school_period.id;
          public          postgres    false    258                       1259    67102    size_request    TABLE     �   CREATE TABLE public.size_request (
    id integer NOT NULL,
    request integer,
    teaching_subject integer,
    start_date date,
    end_date date,
    status boolean
);
     DROP TABLE public.size_request;
       public         heap    postgres    false                       1259    67105    size_request_id_seq    SEQUENCE     �   CREATE SEQUENCE public.size_request_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.size_request_id_seq;
       public          postgres    false    259            3           0    0    size_request_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.size_request_id_seq OWNED BY public.size_request.id;
          public          postgres    false    260                       1259    67106    solicitud_detalle_id_seq    SEQUENCE     �   CREATE SEQUENCE public.solicitud_detalle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 /   DROP SEQUENCE public.solicitud_detalle_id_seq;
       public          postgres    false                       1259    67107    solicitud_id_seq    SEQUENCE     �   CREATE SEQUENCE public.solicitud_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 '   DROP SEQUENCE public.solicitud_id_seq;
       public          postgres    false                       1259    67111    subject_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subject_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.subject_id_seq;
       public          postgres    false    263            4           0    0    subject_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.subject_id_seq OWNED BY public.subject.id;
          public          postgres    false    264            	           1259    67112    tabla_horas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tabla_horas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 )   DROP SEQUENCE public.tabla_horas_id_seq;
       public          postgres    false                       1259    67120    teacher_distributive_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teacher_distributive_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.teacher_distributive_id_seq;
       public          postgres    false    267            5           0    0    teacher_distributive_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.teacher_distributive_id_seq OWNED BY public.teacher_distributive.id;
          public          postgres    false    268                       1259    67121    teacher_id_seq    SEQUENCE        CREATE SEQUENCE public.teacher_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 %   DROP SEQUENCE public.teacher_id_seq;
       public          postgres    false                       1259    67122    teacher_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.teacher_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.teacher_id_seq1;
       public          postgres    false    266            6           0    0    teacher_id_seq1    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.teacher_id_seq1 OWNED BY public.teacher.id;
          public          postgres    false    270                       1259    67123    time_configuration    TABLE     �   CREATE TABLE public.time_configuration (
    id integer NOT NULL,
    school_period integer,
    classroom integer,
    day integer,
    date date,
    hour integer,
    occupied_by integer,
    status boolean,
    color character varying(20)
);
 &   DROP TABLE public.time_configuration;
       public         heap    postgres    false                       1259    67126    time_configuration_id_seq    SEQUENCE     �   CREATE SEQUENCE public.time_configuration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.time_configuration_id_seq;
       public          postgres    false    271            7           0    0    time_configuration_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.time_configuration_id_seq OWNED BY public.time_configuration.id;
          public          postgres    false    272                       1259    67306    v_distributive    VIEW       CREATE VIEW public.v_distributive AS
 SELECT dis.id,
    teacher.dni AS teacher_cedula,
    teacher.name AS teacher,
    teacher.lastname AS teacher_apellido,
    grade.name AS grade,
    subject.name AS subject,
    periood.name AS period
   FROM ((((public.teacher_distributive dis
     JOIN public.school_period periood ON ((periood.id = dis.school_time)))
     JOIN public.teacher ON ((teacher.id = dis.teacher)))
     JOIN public.subject ON ((subject.id = dis.course)))
     JOIN public.grade ON ((grade.id = dis.grade)));
 !   DROP VIEW public.v_distributive;
       public          postgres    false    267    263    257    257    243    243    267    266    267    267    267    266    266    266    263            �           2604    67127    authorities authority_id    DEFAULT     �   ALTER TABLE ONLY auth.authorities ALTER COLUMN authority_id SET DEFAULT nextval('auth.authorities_authority_id_seq1'::regclass);
 E   ALTER TABLE auth.authorities ALTER COLUMN authority_id DROP DEFAULT;
       auth          postgres    false    212    210            �           2604    67128    roles role_id    DEFAULT     k   ALTER TABLE ONLY auth.roles ALTER COLUMN role_id SET DEFAULT nextval('auth.roles_role_id_seq1'::regclass);
 :   ALTER TABLE auth.roles ALTER COLUMN role_id DROP DEFAULT;
       auth          postgres    false    218    213            �           2604    67129 #   roles_authorities role_authority_id    DEFAULT     �   ALTER TABLE ONLY auth.roles_authorities ALTER COLUMN role_authority_id SET DEFAULT nextval('auth.roles_authorities_role_authority_id_seq1'::regclass);
 P   ALTER TABLE auth.roles_authorities ALTER COLUMN role_authority_id DROP DEFAULT;
       auth          postgres    false    216    214            �           2604    67130    users user_id    DEFAULT     k   ALTER TABLE ONLY auth.users ALTER COLUMN user_id SET DEFAULT nextval('auth.users_user_id_seq1'::regclass);
 :   ALTER TABLE auth.users ALTER COLUMN user_id DROP DEFAULT;
       auth          postgres    false    224    219            �           2604    67131    users_roles user_role_id    DEFAULT     �   ALTER TABLE ONLY auth.users_roles ALTER COLUMN user_role_id SET DEFAULT nextval('auth.users_roles_user_role_id_seq1'::regclass);
 E   ALTER TABLE auth.users_roles ALTER COLUMN user_role_id DROP DEFAULT;
       auth          postgres    false    222    220            �           2604    67132 	   career id    DEFAULT     f   ALTER TABLE ONLY public.career ALTER COLUMN id SET DEFAULT nextval('public.career_id_seq'::regclass);
 8   ALTER TABLE public.career ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            �           2604    67133    catalogue id    DEFAULT     l   ALTER TABLE ONLY public.catalogue ALTER COLUMN id SET DEFAULT nextval('public.catalogue_id_seq'::regclass);
 ;   ALTER TABLE public.catalogue ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    67134    classroom_types id    DEFAULT     y   ALTER TABLE ONLY public.classroom_types ALTER COLUMN id SET DEFAULT nextval('public.classroom_types_id_seq1'::regclass);
 A   ALTER TABLE public.classroom_types ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    231            �           2604    67135    classrooms id    DEFAULT     o   ALTER TABLE ONLY public.classrooms ALTER COLUMN id SET DEFAULT nextval('public.classrooms_id_seq1'::regclass);
 <   ALTER TABLE public.classrooms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    234            �           2604    67136    day id    DEFAULT     `   ALTER TABLE ONLY public.day ALTER COLUMN id SET DEFAULT nextval('public.day_id_seq'::regclass);
 5   ALTER TABLE public.day ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239                       2604    67137    grade id    DEFAULT     e   ALTER TABLE ONLY public.grade ALTER COLUMN id SET DEFAULT nextval('public.grade_id_seq1'::regclass);
 7   ALTER TABLE public.grade ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    243                       2604    67138    hours_table id    DEFAULT     p   ALTER TABLE ONLY public.hours_table ALTER COLUMN id SET DEFAULT nextval('public.hours_table_id_seq'::regclass);
 =   ALTER TABLE public.hours_table ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246                       2604    67139    locations id    DEFAULT     m   ALTER TABLE ONLY public.locations ALTER COLUMN id SET DEFAULT nextval('public.locations_id_seq1'::regclass);
 ;   ALTER TABLE public.locations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    248                       2604    67140    means_classrom id    DEFAULT     w   ALTER TABLE ONLY public.means_classrom ALTER COLUMN id SET DEFAULT nextval('public.means_classrom_id_seq1'::regclass);
 @   ALTER TABLE public.means_classrom ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    251                       2604    67141 
   request id    DEFAULT     h   ALTER TABLE ONLY public.request ALTER COLUMN id SET DEFAULT nextval('public.request_id_seq'::regclass);
 9   ALTER TABLE public.request ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255                       2604    67142    school_period id    DEFAULT     t   ALTER TABLE ONLY public.school_period ALTER COLUMN id SET DEFAULT nextval('public.school_period_id_seq'::regclass);
 ?   ALTER TABLE public.school_period ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257            	           2604    67143    size_request id    DEFAULT     r   ALTER TABLE ONLY public.size_request ALTER COLUMN id SET DEFAULT nextval('public.size_request_id_seq'::regclass);
 >   ALTER TABLE public.size_request ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259            
           2604    67144 
   subject id    DEFAULT     h   ALTER TABLE ONLY public.subject ALTER COLUMN id SET DEFAULT nextval('public.subject_id_seq'::regclass);
 9   ALTER TABLE public.subject ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263                       2604    67145 
   teacher id    DEFAULT     i   ALTER TABLE ONLY public.teacher ALTER COLUMN id SET DEFAULT nextval('public.teacher_id_seq1'::regclass);
 9   ALTER TABLE public.teacher ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    266                       2604    67146    teacher_distributive id    DEFAULT     �   ALTER TABLE ONLY public.teacher_distributive ALTER COLUMN id SET DEFAULT nextval('public.teacher_distributive_id_seq'::regclass);
 F   ALTER TABLE public.teacher_distributive ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    267                       2604    67147    time_configuration id    DEFAULT     ~   ALTER TABLE ONLY public.time_configuration ALTER COLUMN id SET DEFAULT nextval('public.time_configuration_id_seq'::regclass);
 D   ALTER TABLE public.time_configuration ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    272    271            �          0    67004    authorities 
   TABLE DATA           7   COPY auth.authorities (authority_id, name) FROM stdin;
    auth          postgres    false    210   W�       �          0    67011    roles 
   TABLE DATA           ,   COPY auth.roles (role_id, name) FROM stdin;
    auth          postgres    false    213   ��       �          0    67016    roles_authorities 
   TABLE DATA           S   COPY auth.roles_authorities (role_authority_id, role_id, authority_id) FROM stdin;
    auth          postgres    false    214   �       �          0    67023    users 
   TABLE DATA           Z   COPY auth.users (user_id, password, name, username, looked, expired, enabled) FROM stdin;
    auth          postgres    false    219   A�       �          0    67028    users_roles 
   TABLE DATA           C   COPY auth.users_roles (user_role_id, user_id, role_id) FROM stdin;
    auth          postgres    false    220   ��       �          0    67037    career 
   TABLE DATA           G   COPY public.career (id, name, duration, img, status, code) FROM stdin;
    public          postgres    false    227          �          0    67043 	   catalogue 
   TABLE DATA           <   COPY public.catalogue (id, name, value, status) FROM stdin;
    public          postgres    false    229   	      �          0    67047    classroom_types 
   TABLE DATA           A   COPY public.classroom_types (id, code, name, status) FROM stdin;
    public          postgres    false    231   �      �          0    67053 
   classrooms 
   TABLE DATA           ]   COPY public.classrooms (id, type, location, name, capacity, status, description) FROM stdin;
    public          postgres    false    234   �      �          0    67063    day 
   TABLE DATA           1   COPY public.day (id, name, posicion) FROM stdin;
    public          postgres    false    239   �      �          0    67069    grade 
   TABLE DATA           W   COPY public.grade (id, name, working_day, level, parallel, status, career) FROM stdin;
    public          postgres    false    243   [                0    67075    hours_table 
   TABLE DATA           >   COPY public.hours_table (id, hour, time_position) FROM stdin;
    public          postgres    false    246   �                0    67079 	   locations 
   TABLE DATA           W   COPY public.locations (id, name, description, status, latitude, longitude) FROM stdin;
    public          postgres    false    248   a                0    67087    means_classrom 
   TABLE DATA           X   COPY public.means_classrom (id, classroom, proyect, chairs, tables, status) FROM stdin;
    public          postgres    false    251   �                0    67094    request 
   TABLE DATA           X   COPY public.request (id, school_time, date, career, status, requested_time) FROM stdin;
    public          postgres    false    255   �                0    67098    school_period 
   TABLE DATA           O   COPY public.school_period (id, name, start_date, end_date, status) FROM stdin;
    public          postgres    false    257   �                0    67102    size_request 
   TABLE DATA           c   COPY public.size_request (id, request, teaching_subject, start_date, end_date, status) FROM stdin;
    public          postgres    false    259   �                0    67108    subject 
   TABLE DATA           f   COPY public.subject (id, code, name, theoretical_hours, laboratory_hours, career, status) FROM stdin;
    public          postgres    false    263   �                0    67113    teacher 
   TABLE DATA           Y   COPY public.teacher (id, dni, name, color, phone, email, archived, lastname) FROM stdin;
    public          postgres    false    266   �                0    67117    teacher_distributive 
   TABLE DATA           _   COPY public.teacher_distributive (id, school_time, teacher, course, grade, career) FROM stdin;
    public          postgres    false    267   �                0    67123    time_configuration 
   TABLE DATA           w   COPY public.time_configuration (id, school_period, classroom, day, date, hour, occupied_by, status, color) FROM stdin;
    public          postgres    false    271         8           0    0    authorities_authority_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth.authorities_authority_id_seq', 1, false);
          auth          postgres    false    211            9           0    0    authorities_authority_id_seq1    SEQUENCE SET     J   SELECT pg_catalog.setval('auth.authorities_authority_id_seq1', 12, true);
          auth          postgres    false    212            :           0    0 '   roles_authorities_role_authority_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('auth.roles_authorities_role_authority_id_seq', 1, false);
          auth          postgres    false    215            ;           0    0 (   roles_authorities_role_authority_id_seq1    SEQUENCE SET     T   SELECT pg_catalog.setval('auth.roles_authorities_role_authority_id_seq1', 4, true);
          auth          postgres    false    216            <           0    0    roles_role_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth.roles_role_id_seq', 1, false);
          auth          postgres    false    217            =           0    0    roles_role_id_seq1    SEQUENCE SET     >   SELECT pg_catalog.setval('auth.roles_role_id_seq1', 3, true);
          auth          postgres    false    218            >           0    0    users_roles_user_role_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth.users_roles_user_role_id_seq', 1, false);
          auth          postgres    false    221            ?           0    0    users_roles_user_role_id_seq1    SEQUENCE SET     I   SELECT pg_catalog.setval('auth.users_roles_user_role_id_seq1', 2, true);
          auth          postgres    false    222            @           0    0    users_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth.users_user_id_seq', 1, false);
          auth          postgres    false    223            A           0    0    users_user_id_seq1    SEQUENCE SET     >   SELECT pg_catalog.setval('auth.users_user_id_seq1', 2, true);
          auth          postgres    false    224            B           0    0    Asignatura_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Asignatura_id_seq"', 1, false);
          public          postgres    false    225            C           0    0    caerer_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.caerer_id_seq', 1, false);
          public          postgres    false    226            D           0    0    career_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.career_id_seq', 13, true);
          public          postgres    false    228            E           0    0    catalogue_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.catalogue_id_seq', 12, true);
          public          postgres    false    230            F           0    0    classroom_types_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.classroom_types_id_seq', 1, false);
          public          postgres    false    232            G           0    0    classroom_types_id_seq1    SEQUENCE SET     F   SELECT pg_catalog.setval('public.classroom_types_id_seq1', 1, false);
          public          postgres    false    233            H           0    0    classrooms_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.classrooms_id_seq', 1, false);
          public          postgres    false    235            I           0    0    classrooms_id_seq1    SEQUENCE SET     @   SELECT pg_catalog.setval('public.classrooms_id_seq1', 2, true);
          public          postgres    false    236            J           0    0    color_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.color_id_seq', 1, false);
          public          postgres    false    237            K           0    0    configuracion_horario_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.configuracion_horario_id_seq', 1, false);
          public          postgres    false    238            L           0    0 
   day_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.day_id_seq', 7, true);
          public          postgres    false    240            M           0    0 
   dia_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.dia_id_seq', 1, false);
          public          postgres    false    241            N           0    0    distributivo_docente_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.distributivo_docente_id_seq', 1, false);
          public          postgres    false    242            O           0    0    grade_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.grade_id_seq', 1, false);
          public          postgres    false    244            P           0    0    grade_id_seq1    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.grade_id_seq1', 7, true);
          public          postgres    false    245            Q           0    0    hours_table_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hours_table_id_seq', 14, true);
          public          postgres    false    247            R           0    0    locations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.locations_id_seq', 1, false);
          public          postgres    false    249            S           0    0    locations_id_seq1    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.locations_id_seq1', 2, true);
          public          postgres    false    250            T           0    0    means_classrom_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.means_classrom_id_seq', 1, false);
          public          postgres    false    252            U           0    0    means_classrom_id_seq1    SEQUENCE SET     E   SELECT pg_catalog.setval('public.means_classrom_id_seq1', 1, false);
          public          postgres    false    253            V           0    0    periodo_lectivo_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.periodo_lectivo_id_seq', 1, false);
          public          postgres    false    254            W           0    0    request_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.request_id_seq', 1, false);
          public          postgres    false    256            X           0    0    school_period_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.school_period_id_seq', 4, true);
          public          postgres    false    258            Y           0    0    size_request_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.size_request_id_seq', 1, false);
          public          postgres    false    260            Z           0    0    solicitud_detalle_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.solicitud_detalle_id_seq', 1, false);
          public          postgres    false    261            [           0    0    solicitud_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.solicitud_id_seq', 1, false);
          public          postgres    false    262            \           0    0    subject_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.subject_id_seq', 11, true);
          public          postgres    false    264            ]           0    0    tabla_horas_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tabla_horas_id_seq', 1, false);
          public          postgres    false    265            ^           0    0    teacher_distributive_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.teacher_distributive_id_seq', 11, true);
          public          postgres    false    268            _           0    0    teacher_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.teacher_id_seq', 1, false);
          public          postgres    false    269            `           0    0    teacher_id_seq1    SEQUENCE SET     =   SELECT pg_catalog.setval('public.teacher_id_seq1', 5, true);
          public          postgres    false    270            a           0    0    time_configuration_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.time_configuration_id_seq', 12, true);
          public          postgres    false    272                       2606    67149    authorities authorities_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY auth.authorities
    ADD CONSTRAINT authorities_pkey PRIMARY KEY (authority_id);
 D   ALTER TABLE ONLY auth.authorities DROP CONSTRAINT authorities_pkey;
       auth            postgres    false    210                       2606    67151 (   roles_authorities roles_authorities_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY auth.roles_authorities
    ADD CONSTRAINT roles_authorities_pkey PRIMARY KEY (role_authority_id);
 P   ALTER TABLE ONLY auth.roles_authorities DROP CONSTRAINT roles_authorities_pkey;
       auth            postgres    false    214                       2606    67153    roles roles_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (role_id);
 8   ALTER TABLE ONLY auth.roles DROP CONSTRAINT roles_pkey;
       auth            postgres    false    213                       2606    67155    users users_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 8   ALTER TABLE ONLY auth.users DROP CONSTRAINT users_pkey;
       auth            postgres    false    219                       2606    67157    users_roles users_roles_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY auth.users_roles
    ADD CONSTRAINT users_roles_pkey PRIMARY KEY (user_role_id);
 D   ALTER TABLE ONLY auth.users_roles DROP CONSTRAINT users_roles_pkey;
       auth            postgres    false    220            2           2606    67159    subject Asignatura_pk 
   CONSTRAINT     U   ALTER TABLE ONLY public.subject
    ADD CONSTRAINT "Asignatura_pk" PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.subject DROP CONSTRAINT "Asignatura_pk";
       public            postgres    false    263                       2606    67161    career caerer_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public.career
    ADD CONSTRAINT caerer_pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.career DROP CONSTRAINT caerer_pk;
       public            postgres    false    227                       2606    67163    catalogue catalogue_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public.catalogue
    ADD CONSTRAINT catalogue_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.catalogue DROP CONSTRAINT catalogue_pk;
       public            postgres    false    229                       2606    67165 $   classroom_types classroom_types_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.classroom_types
    ADD CONSTRAINT classroom_types_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.classroom_types DROP CONSTRAINT classroom_types_pkey;
       public            postgres    false    231                        2606    67167    classrooms classrooms_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.classrooms
    ADD CONSTRAINT classrooms_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.classrooms DROP CONSTRAINT classrooms_pkey;
       public            postgres    false    234            8           2606    67169 +   time_configuration configuracion_horario_pk 
   CONSTRAINT     i   ALTER TABLE ONLY public.time_configuration
    ADD CONSTRAINT configuracion_horario_pk PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.time_configuration DROP CONSTRAINT configuracion_horario_pk;
       public            postgres    false    271            "           2606    67171 
   day dia_pk 
   CONSTRAINT     H   ALTER TABLE ONLY public.day
    ADD CONSTRAINT dia_pk PRIMARY KEY (id);
 4   ALTER TABLE ONLY public.day DROP CONSTRAINT dia_pk;
       public            postgres    false    239            6           2606    67173 ,   teacher_distributive distributivo_docente_pk 
   CONSTRAINT     j   ALTER TABLE ONLY public.teacher_distributive
    ADD CONSTRAINT distributivo_docente_pk PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.teacher_distributive DROP CONSTRAINT distributivo_docente_pk;
       public            postgres    false    267            $           2606    67175    grade grade_pk 
   CONSTRAINT     L   ALTER TABLE ONLY public.grade
    ADD CONSTRAINT grade_pk PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.grade DROP CONSTRAINT grade_pk;
       public            postgres    false    243            (           2606    67177    locations locations_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.locations DROP CONSTRAINT locations_pkey;
       public            postgres    false    248            *           2606    67179 "   means_classrom means_classrom_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.means_classrom
    ADD CONSTRAINT means_classrom_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.means_classrom DROP CONSTRAINT means_classrom_pkey;
       public            postgres    false    251            .           2606    67181     school_period periodo_lectivo_pk 
   CONSTRAINT     ^   ALTER TABLE ONLY public.school_period
    ADD CONSTRAINT periodo_lectivo_pk PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.school_period DROP CONSTRAINT periodo_lectivo_pk;
       public            postgres    false    257            0           2606    67183 !   size_request solicitud_detalle_pk 
   CONSTRAINT     _   ALTER TABLE ONLY public.size_request
    ADD CONSTRAINT solicitud_detalle_pk PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.size_request DROP CONSTRAINT solicitud_detalle_pk;
       public            postgres    false    259            ,           2606    67185    request solicitud_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.request
    ADD CONSTRAINT solicitud_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.request DROP CONSTRAINT solicitud_pk;
       public            postgres    false    255            &           2606    67187    hours_table tabla_horas_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.hours_table
    ADD CONSTRAINT tabla_horas_pk PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.hours_table DROP CONSTRAINT tabla_horas_pk;
       public            postgres    false    246            4           2606    67189    teacher teacher_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT teacher_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.teacher DROP CONSTRAINT teacher_pkey;
       public            postgres    false    266            9           2606    67190    roles_authorities fk_auth    FK CONSTRAINT     �   ALTER TABLE ONLY auth.roles_authorities
    ADD CONSTRAINT fk_auth FOREIGN KEY (authority_id) REFERENCES auth.authorities(authority_id);
 A   ALTER TABLE ONLY auth.roles_authorities DROP CONSTRAINT fk_auth;
       auth          postgres    false    210    214    3344            :           2606    67195    roles_authorities fk_role    FK CONSTRAINT     y   ALTER TABLE ONLY auth.roles_authorities
    ADD CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES auth.roles(role_id);
 A   ALTER TABLE ONLY auth.roles_authorities DROP CONSTRAINT fk_role;
       auth          postgres    false    213    3346    214            ;           2606    67200    users_roles fk_role    FK CONSTRAINT     x   ALTER TABLE ONLY auth.users_roles
    ADD CONSTRAINT fk_role FOREIGN KEY (user_role_id) REFERENCES auth.roles(role_id);
 ;   ALTER TABLE ONLY auth.users_roles DROP CONSTRAINT fk_role;
       auth          postgres    false    220    3346    213            <           2606    67205    users_roles fk_user    FK CONSTRAINT     s   ALTER TABLE ONLY auth.users_roles
    ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES auth.users(user_id);
 ;   ALTER TABLE ONLY auth.users_roles DROP CONSTRAINT fk_user;
       auth          postgres    false    3350    220    219            G           2606    67210 "   teacher_distributive asignatura_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.teacher_distributive
    ADD CONSTRAINT asignatura_fk FOREIGN KEY (course) REFERENCES public.subject(id);
 L   ALTER TABLE ONLY public.teacher_distributive DROP CONSTRAINT asignatura_fk;
       public          postgres    false    267    263    3378            K           2606    75503    teacher_distributive career_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.teacher_distributive
    ADD CONSTRAINT career_fk FOREIGN KEY (career) REFERENCES public.career(id) NOT VALID;
 H   ALTER TABLE ONLY public.teacher_distributive DROP CONSTRAINT career_fk;
       public          postgres    false    267    227    3354            ?           2606    67215    grade career_grade_fk    FK CONSTRAINT     t   ALTER TABLE ONLY public.grade
    ADD CONSTRAINT career_grade_fk FOREIGN KEY (career) REFERENCES public.career(id);
 ?   ALTER TABLE ONLY public.grade DROP CONSTRAINT career_grade_fk;
       public          postgres    false    227    3354    243            L           2606    67220    time_configuration classroom_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.time_configuration
    ADD CONSTRAINT classroom_fk FOREIGN KEY (classroom) REFERENCES public.classrooms(id);
 I   ALTER TABLE ONLY public.time_configuration DROP CONSTRAINT classroom_fk;
       public          postgres    false    271    234    3360            M           2606    67225    time_configuration dia_fk    FK CONSTRAINT     r   ALTER TABLE ONLY public.time_configuration
    ADD CONSTRAINT dia_fk FOREIGN KEY (day) REFERENCES public.day(id);
 C   ALTER TABLE ONLY public.time_configuration DROP CONSTRAINT dia_fk;
       public          postgres    false    271    239    3362            E           2606    67230 "   size_request fk-asignatura_docente    FK CONSTRAINT     �   ALTER TABLE ONLY public.size_request
    ADD CONSTRAINT "fk-asignatura_docente" FOREIGN KEY (teaching_subject) REFERENCES public.teacher_distributive(id);
 N   ALTER TABLE ONLY public.size_request DROP CONSTRAINT "fk-asignatura_docente";
       public          postgres    false    267    259    3382            =           2606    67235     classrooms fk_classroom_location    FK CONSTRAINT     �   ALTER TABLE ONLY public.classrooms
    ADD CONSTRAINT fk_classroom_location FOREIGN KEY (location) REFERENCES public.locations(id);
 J   ALTER TABLE ONLY public.classrooms DROP CONSTRAINT fk_classroom_location;
       public          postgres    false    234    248    3368            >           2606    67240    classrooms fk_classroom_type    FK CONSTRAINT     �   ALTER TABLE ONLY public.classrooms
    ADD CONSTRAINT fk_classroom_type FOREIGN KEY (type) REFERENCES public.classroom_types(id);
 F   ALTER TABLE ONLY public.classrooms DROP CONSTRAINT fk_classroom_type;
       public          postgres    false    3358    234    231            @           2606    67245    grade fk_level_catalogue    FK CONSTRAINT     y   ALTER TABLE ONLY public.grade
    ADD CONSTRAINT fk_level_catalogue FOREIGN KEY (level) REFERENCES public.catalogue(id);
 B   ALTER TABLE ONLY public.grade DROP CONSTRAINT fk_level_catalogue;
       public          postgres    false    229    243    3356            C           2606    67250     means_classrom fk_mean_classroom    FK CONSTRAINT     �   ALTER TABLE ONLY public.means_classrom
    ADD CONSTRAINT fk_mean_classroom FOREIGN KEY (classroom) REFERENCES public.classrooms(id);
 J   ALTER TABLE ONLY public.means_classrom DROP CONSTRAINT fk_mean_classroom;
       public          postgres    false    251    3360    234            H           2606    67255    teacher_distributive grade_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.teacher_distributive
    ADD CONSTRAINT grade_fk FOREIGN KEY (grade) REFERENCES public.grade(id);
 G   ALTER TABLE ONLY public.teacher_distributive DROP CONSTRAINT grade_fk;
       public          postgres    false    3364    243    267            N           2606    67260    time_configuration hora_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.time_configuration
    ADD CONSTRAINT hora_fk FOREIGN KEY (hour) REFERENCES public.hours_table(id);
 D   ALTER TABLE ONLY public.time_configuration DROP CONSTRAINT hora_fk;
       public          postgres    false    3366    271    246            A           2606    67265    grade paralell_catalogue_fk    FK CONSTRAINT        ALTER TABLE ONLY public.grade
    ADD CONSTRAINT paralell_catalogue_fk FOREIGN KEY (parallel) REFERENCES public.catalogue(id);
 E   ALTER TABLE ONLY public.grade DROP CONSTRAINT paralell_catalogue_fk;
       public          postgres    false    243    3356    229            O           2606    67270 %   time_configuration periodo_lectivo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.time_configuration
    ADD CONSTRAINT periodo_lectivo_fk FOREIGN KEY (school_period) REFERENCES public.school_period(id);
 O   ALTER TABLE ONLY public.time_configuration DROP CONSTRAINT periodo_lectivo_fk;
       public          postgres    false    3374    271    257            I           2606    67275 '   teacher_distributive periodo_lectivo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.teacher_distributive
    ADD CONSTRAINT periodo_lectivo_fk FOREIGN KEY (school_time) REFERENCES public.school_period(id);
 Q   ALTER TABLE ONLY public.teacher_distributive DROP CONSTRAINT periodo_lectivo_fk;
       public          postgres    false    267    257    3374            D           2606    67280    request periodo_lectivo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.request
    ADD CONSTRAINT periodo_lectivo_fk FOREIGN KEY (school_time) REFERENCES public.school_period(id);
 D   ALTER TABLE ONLY public.request DROP CONSTRAINT periodo_lectivo_fk;
       public          postgres    false    257    3374    255            F           2606    67285    size_request solicitud_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.size_request
    ADD CONSTRAINT solicitud_fk FOREIGN KEY (request) REFERENCES public.request(id);
 C   ALTER TABLE ONLY public.size_request DROP CONSTRAINT solicitud_fk;
       public          postgres    false    255    3372    259            P           2606    67290 :   time_configuration teacher_distributive-config_schedule-fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.time_configuration
    ADD CONSTRAINT "teacher_distributive-config_schedule-fk" FOREIGN KEY (occupied_by) REFERENCES public.teacher_distributive(id);
 f   ALTER TABLE ONLY public.time_configuration DROP CONSTRAINT "teacher_distributive-config_schedule-fk";
       public          postgres    false    3382    271    267            J           2606    67295    teacher_distributive teacher_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.teacher_distributive
    ADD CONSTRAINT teacher_fk FOREIGN KEY (teacher) REFERENCES public.teacher(id);
 I   ALTER TABLE ONLY public.teacher_distributive DROP CONSTRAINT teacher_fk;
       public          postgres    false    266    267    3380            B           2606    67300    grade working_day_catalogue_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.grade
    ADD CONSTRAINT working_day_catalogue_fk FOREIGN KEY (working_day) REFERENCES public.catalogue(id);
 H   ALTER TABLE ONLY public.grade DROP CONSTRAINT working_day_catalogue_fk;
       public          postgres    false    229    243    3356            �   j   x�M�K
�0D��a��wY$�@k%ڍ��J����#o�.���{���@$�Z�ˑ}���R���z')|�f�G��:)0mvI�������#�������5V      �   /   x�3���q�wt����2�r�]�����!<7G�� G�H� DnL      �   !   x�3�4�4�2�F\�@Ҙ�H�p��qqq 49q      �   �   x�5�M�0 @�ۯ��٩X�qIP䜔�J�5�f55]V�����@��fZ4ni%,��4�<-��sc_�'8�Y첖*�8㉽�?W��� �.B�u�f��ع*A��[�8%��N�3uGu��i'��0	Q�D3�>֕���k��	a\��O��B��5�      �      x�3�4�4�2�4�1z\\\ 	      �   �  x����o� ���W�0�G�[�[���(�X��M�c��6}I�U�����>���5BkYh�QM�N��9I�n�H�l�*�1���������G�(C�MY��AZ�e�_v���/,��<������"8��(@�K��3��Lz��-j9(`��I4���|V�0G3奁�
j�#���P��<��T�
4}\N��}��lN�oO�Ӽػ���t��Y��_���OS�g)��@�QN��q
fQI�m�Z�췌��~Sr���G)BH��pP�1�%� M��mAԞ�M(�T�VU�R`�'V8A���V�_�$j�58RKr�m|�F:�kza<D��A�(i�Ϟ�"�ѝ�1.�xȺ{��{�m0ch�9�5�� �xW�Q�Nx�y�1��������(���8]�����f�Y�r%͹f���'$�W(ݙ��D�E���4/b�Z�F%]\��Ѿ(
\&�W��      �   z   x�U��
�0@���cJm��n��J��:���ҿo"��W�FZ&p�$�!�H*�+�JT%UQ5�(��w�K����x�2[O}��$;���e&qv����=ѭ�1���Ub�NJ�?JN@�      �      x������ � �      �   ;   x�3���4�t,�IT0�46�,��IL�/J,�/���2IB�A�i�Y�ŉ\1z\\\ ��      �   P   x�3�.�KI��4�2���3���9CJS�Alc.��Ԕ<τ˔3$���1�2�t+�1͸�9�KJ�@s�=... {��      �   q   x�3�4,�Ws��w	wr�44�4�4�L�4�2K�"K�%M��~ȒFpI3Nה������<�����D���g	�1�)�siQq~1�*cNK�#.sN���D�HY� [�#8         u   x�%���PCѵ���٩����l�sYI��͌���`E���+�݃VHݓV��7����<�B����Z�oX��}S����;��(�`�<RE�Q��AM�Q���C��5(5         F   x�3�,M�LNL��7�,(*MMJ�,�442!SSN#3.#΀��̜�|8C��(?�$1��ĔӔ+F��� 	��            x������ � �            x������ � �         �   x�M�Q
�0D��S�]�(~֥�+Yj�<��g�j@!�2C0�M<#�^^esjiH:����n6R�Td�MC]���pb�1O_��G�"��>���+ݐ��+S���-�@����ι?d+�            x������ � �         !  x�e��j�0F�����8��v��1X���썚�E���r���g%02ve��'u][f�`�͎�O�Z5X8�W�R���dXf�
��̷%�*�:�����y}��Rj��#�s�����՗��#1w:����sf��u�L�)E���%�ؓ,SMm�љ��E���|�b���[�
=���e`)��o���|�D��f3x�Tv���&-��j�m&Q�gS�,��>MB��v1'Xz)��kMd�E�v�%G1�Qrb�k9���T����~r�B�~�O�ᡪ�\��h         �   x�m�Ok�0������rk)=��Qz�EIՠ���:���s\v�:<�{z� �5����G��S�U]+�^�|���/|pľ��\Q	����>DJ(H���y�g�(��k��{�>��È�>���I�,�T��t�\�5��� ��D��~�Y	Y,J�f�D�5.����~�Q���j�s潅]v�p���:��K����=�(Ε���[�         >   x�3��CF\��&�F`h�edYƜ�\ NK��	���8M��J�LN3�=... %(�         c   x�}��	�0���s��hL����S����
F����%�Kr�XV�d[����kn-~��n�i{��4�aˆ[��Y����"K��7��P8P     