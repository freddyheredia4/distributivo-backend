PGDMP     2    9                z            distributivodb "   12.12 (Ubuntu 12.12-1.pgdg22.04+1)     14.5 (Ubuntu 14.5-1.pgdg22.04+1) �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    37342    distributivodb    DATABASE     c   CREATE DATABASE distributivodb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'es_EC.UTF-8';
    DROP DATABASE distributivodb;
                postgres    false                        2615    37343    auth    SCHEMA        CREATE SCHEMA auth;
    DROP SCHEMA auth;
                postgres    false            �            1259    37348    authorities    TABLE     a   CREATE TABLE auth.authorities (
    authority_id integer NOT NULL,
    name character varying
);
    DROP TABLE auth.authorities;
       auth         heap    postgres    false    8            �            1259    37344    authorities_authority_id_seq    SEQUENCE     �   CREATE SEQUENCE auth.authorities_authority_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 1   DROP SEQUENCE auth.authorities_authority_id_seq;
       auth          postgres    false    8            �            1259    37346    authorities_authority_id_seq1    SEQUENCE     �   CREATE SEQUENCE auth.authorities_authority_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE auth.authorities_authority_id_seq1;
       auth          postgres    false    205    8            �           0    0    authorities_authority_id_seq1    SEQUENCE OWNED BY     Z   ALTER SEQUENCE auth.authorities_authority_id_seq1 OWNED BY auth.authorities.authority_id;
          auth          postgres    false    204            �            1259    37361    roles    TABLE     V   CREATE TABLE auth.roles (
    role_id integer NOT NULL,
    name character varying
);
    DROP TABLE auth.roles;
       auth         heap    postgres    false    8            �            1259    37374    roles_authorities    TABLE        CREATE TABLE auth.roles_authorities (
    role_authority_id integer NOT NULL,
    role_id integer,
    authority_id integer
);
 #   DROP TABLE auth.roles_authorities;
       auth         heap    postgres    false    8            �            1259    37370 '   roles_authorities_role_authority_id_seq    SEQUENCE     �   CREATE SEQUENCE auth.roles_authorities_role_authority_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 <   DROP SEQUENCE auth.roles_authorities_role_authority_id_seq;
       auth          postgres    false    8            �            1259    37372 (   roles_authorities_role_authority_id_seq1    SEQUENCE     �   CREATE SEQUENCE auth.roles_authorities_role_authority_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE auth.roles_authorities_role_authority_id_seq1;
       auth          postgres    false    8    211            �           0    0 (   roles_authorities_role_authority_id_seq1    SEQUENCE OWNED BY     p   ALTER SEQUENCE auth.roles_authorities_role_authority_id_seq1 OWNED BY auth.roles_authorities.role_authority_id;
          auth          postgres    false    210            �            1259    37357    roles_role_id_seq    SEQUENCE     �   CREATE SEQUENCE auth.roles_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 &   DROP SEQUENCE auth.roles_role_id_seq;
       auth          postgres    false    8            �            1259    37359    roles_role_id_seq1    SEQUENCE     �   CREATE SEQUENCE auth.roles_role_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE auth.roles_role_id_seq1;
       auth          postgres    false    208    8            �           0    0    roles_role_id_seq1    SEQUENCE OWNED BY     D   ALTER SEQUENCE auth.roles_role_id_seq1 OWNED BY auth.roles.role_id;
          auth          postgres    false    207            �            1259    37384    users    TABLE     �   CREATE TABLE auth.users (
    user_id integer NOT NULL,
    password character varying,
    name character varying,
    username character varying,
    looked boolean,
    expired boolean,
    enabled boolean
);
    DROP TABLE auth.users;
       auth         heap    postgres    false    8            �            1259    37397    users_roles    TABLE     o   CREATE TABLE auth.users_roles (
    user_role_id integer NOT NULL,
    user_id integer,
    role_id integer
);
    DROP TABLE auth.users_roles;
       auth         heap    postgres    false    8            �            1259    37393    users_roles_user_role_id_seq    SEQUENCE     �   CREATE SEQUENCE auth.users_roles_user_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 1   DROP SEQUENCE auth.users_roles_user_role_id_seq;
       auth          postgres    false    8            �            1259    37395    users_roles_user_role_id_seq1    SEQUENCE     �   CREATE SEQUENCE auth.users_roles_user_role_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE auth.users_roles_user_role_id_seq1;
       auth          postgres    false    217    8            �           0    0    users_roles_user_role_id_seq1    SEQUENCE OWNED BY     Z   ALTER SEQUENCE auth.users_roles_user_role_id_seq1 OWNED BY auth.users_roles.user_role_id;
          auth          postgres    false    216            �            1259    37380    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE auth.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 &   DROP SEQUENCE auth.users_user_id_seq;
       auth          postgres    false    8            �            1259    37382    users_user_id_seq1    SEQUENCE     �   CREATE SEQUENCE auth.users_user_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE auth.users_user_id_seq1;
       auth          postgres    false    214    8            �           0    0    users_user_id_seq1    SEQUENCE OWNED BY     D   ALTER SEQUENCE auth.users_user_id_seq1 OWNED BY auth.users.user_id;
          auth          postgres    false    213            �            1259    37403    Asignatura_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Asignatura_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 *   DROP SEQUENCE public."Asignatura_id_seq";
       public          postgres    false            �            1259    37413    caerer_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.caerer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 $   DROP SEQUENCE public.caerer_id_seq;
       public          postgres    false            �            1259    37417    career    TABLE     �   CREATE TABLE public.career (
    id integer NOT NULL,
    name character varying(100),
    duration integer,
    img text,
    status boolean
);
    DROP TABLE public.career;
       public         heap    postgres    false            �            1259    37415    career_id_seq    SEQUENCE     �   CREATE SEQUENCE public.career_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.career_id_seq;
       public          postgres    false    223                        0    0    career_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.career_id_seq OWNED BY public.career.id;
          public          postgres    false    222            	           1259    37572 	   catalogue    TABLE     �   CREATE TABLE public.catalogue (
    id integer NOT NULL,
    name character varying(50),
    value character varying(50),
    status boolean
);
    DROP TABLE public.catalogue;
       public         heap    postgres    false                       1259    37570    catalogue_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalogue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.catalogue_id_seq;
       public          postgres    false    265                       0    0    catalogue_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.catalogue_id_seq OWNED BY public.catalogue.id;
          public          postgres    false    264            �            1259    37430    classroom_types    TABLE     �   CREATE TABLE public.classroom_types (
    id integer NOT NULL,
    code character varying(20),
    name character varying(100),
    status boolean DEFAULT true
);
 #   DROP TABLE public.classroom_types;
       public         heap    postgres    false            �            1259    37426    classroom_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.classroom_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 -   DROP SEQUENCE public.classroom_types_id_seq;
       public          postgres    false            �            1259    37428    classroom_types_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.classroom_types_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.classroom_types_id_seq1;
       public          postgres    false    226                       0    0    classroom_types_id_seq1    SEQUENCE OWNED BY     R   ALTER SEQUENCE public.classroom_types_id_seq1 OWNED BY public.classroom_types.id;
          public          postgres    false    225            �            1259    37441 
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
       public         heap    postgres    false            �            1259    37437    classrooms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.classrooms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 (   DROP SEQUENCE public.classrooms_id_seq;
       public          postgres    false            �            1259    37439    classrooms_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.classrooms_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.classrooms_id_seq1;
       public          postgres    false    229                       0    0    classrooms_id_seq1    SEQUENCE OWNED BY     H   ALTER SEQUENCE public.classrooms_id_seq1 OWNED BY public.classrooms.id;
          public          postgres    false    228            �            1259    37451    color_id_seq    SEQUENCE     }   CREATE SEQUENCE public.color_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 #   DROP SEQUENCE public.color_id_seq;
       public          postgres    false            �            1259    37453    configuracion_horario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.configuracion_horario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 3   DROP SEQUENCE public.configuracion_horario_id_seq;
       public          postgres    false            �            1259    37467    day    TABLE     k   CREATE TABLE public.day (
    id integer NOT NULL,
    name character varying(20),
    posicion integer
);
    DROP TABLE public.day;
       public         heap    postgres    false            �            1259    37465 
   day_id_seq    SEQUENCE     �   CREATE SEQUENCE public.day_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.day_id_seq;
       public          postgres    false    236                       0    0 
   day_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.day_id_seq OWNED BY public.day.id;
          public          postgres    false    235            �            1259    37463 
   dia_id_seq    SEQUENCE     {   CREATE SEQUENCE public.dia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 !   DROP SEQUENCE public.dia_id_seq;
       public          postgres    false            �            1259    37473    distributivo_docente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.distributivo_docente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 2   DROP SEQUENCE public.distributivo_docente_id_seq;
       public          postgres    false            �            1259    37487    grade    TABLE     �   CREATE TABLE public.grade (
    id integer NOT NULL,
    name character varying(100),
    working_day integer,
    level integer,
    parallel integer,
    status boolean DEFAULT true,
    career integer
);
    DROP TABLE public.grade;
       public         heap    postgres    false            �            1259    37483    grade_id_seq    SEQUENCE     }   CREATE SEQUENCE public.grade_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 #   DROP SEQUENCE public.grade_id_seq;
       public          postgres    false            �            1259    37485    grade_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.grade_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.grade_id_seq1;
       public          postgres    false    242                       0    0    grade_id_seq1    SEQUENCE OWNED BY     >   ALTER SEQUENCE public.grade_id_seq1 OWNED BY public.grade.id;
          public          postgres    false    241                       1259    37553    hours_table    TABLE     x   CREATE TABLE public.hours_table (
    id integer NOT NULL,
    hour character varying(15),
    time_position integer
);
    DROP TABLE public.hours_table;
       public         heap    postgres    false                       1259    37551    hours_table_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hours_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hours_table_id_seq;
       public          postgres    false    260                       0    0    hours_table_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.hours_table_id_seq OWNED BY public.hours_table.id;
          public          postgres    false    259            �            1259    37498 	   locations    TABLE     �   CREATE TABLE public.locations (
    id integer NOT NULL,
    name character varying(300),
    description text,
    status boolean DEFAULT true,
    latitude bigint,
    longitude bigint
);
    DROP TABLE public.locations;
       public         heap    postgres    false            �            1259    37494    locations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 '   DROP SEQUENCE public.locations_id_seq;
       public          postgres    false            �            1259    37496    locations_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.locations_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.locations_id_seq1;
       public          postgres    false    245                       0    0    locations_id_seq1    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.locations_id_seq1 OWNED BY public.locations.id;
          public          postgres    false    244            �            1259    37512    means_classrom    TABLE     �   CREATE TABLE public.means_classrom (
    id integer NOT NULL,
    classroom integer,
    proyect character varying(200),
    chairs integer,
    tables integer,
    status boolean DEFAULT true
);
 "   DROP TABLE public.means_classrom;
       public         heap    postgres    false            �            1259    37508    means_classrom_id_seq    SEQUENCE     �   CREATE SEQUENCE public.means_classrom_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 ,   DROP SEQUENCE public.means_classrom_id_seq;
       public          postgres    false            �            1259    37510    means_classrom_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.means_classrom_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.means_classrom_id_seq1;
       public          postgres    false    248                       0    0    means_classrom_id_seq1    SEQUENCE OWNED BY     P   ALTER SEQUENCE public.means_classrom_id_seq1 OWNED BY public.means_classrom.id;
          public          postgres    false    247            �            1259    37519    periodo_lectivo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.periodo_lectivo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 -   DROP SEQUENCE public.periodo_lectivo_id_seq;
       public          postgres    false                       1259    37543    request    TABLE     �   CREATE TABLE public.request (
    id integer NOT NULL,
    school_time integer,
    date date,
    career integer,
    status boolean,
    requested_time integer
);
    DROP TABLE public.request;
       public         heap    postgres    false                        1259    37541    request_id_seq    SEQUENCE     �   CREATE SEQUENCE public.request_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.request_id_seq;
       public          postgres    false    257            	           0    0    request_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.request_id_seq OWNED BY public.request.id;
          public          postgres    false    256            �            1259    37523    school_period    TABLE     �   CREATE TABLE public.school_period (
    id integer NOT NULL,
    name character varying(100),
    start_date date,
    end_date date,
    status boolean
);
 !   DROP TABLE public.school_period;
       public         heap    postgres    false            �            1259    37521    school_period_id_seq    SEQUENCE     �   CREATE SEQUENCE public.school_period_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.school_period_id_seq;
       public          postgres    false    251            
           0    0    school_period_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.school_period_id_seq OWNED BY public.school_period.id;
          public          postgres    false    250            �            1259    37535    size_request    TABLE     �   CREATE TABLE public.size_request (
    id integer NOT NULL,
    request integer,
    teaching_subject integer,
    start_date date,
    end_date date,
    status boolean
);
     DROP TABLE public.size_request;
       public         heap    postgres    false            �            1259    37533    size_request_id_seq    SEQUENCE     �   CREATE SEQUENCE public.size_request_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.size_request_id_seq;
       public          postgres    false    255                       0    0    size_request_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.size_request_id_seq OWNED BY public.size_request.id;
          public          postgres    false    254            �            1259    37531    solicitud_detalle_id_seq    SEQUENCE     �   CREATE SEQUENCE public.solicitud_detalle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 /   DROP SEQUENCE public.solicitud_detalle_id_seq;
       public          postgres    false            �            1259    37529    solicitud_id_seq    SEQUENCE     �   CREATE SEQUENCE public.solicitud_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 '   DROP SEQUENCE public.solicitud_id_seq;
       public          postgres    false            �            1259    37407    subject    TABLE     �   CREATE TABLE public.subject (
    id integer NOT NULL,
    code character varying(20),
    name character varying(100),
    theoretical_hours integer,
    laboratory_hours integer,
    career integer,
    status boolean
);
    DROP TABLE public.subject;
       public         heap    postgres    false            �            1259    37405    subject_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subject_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.subject_id_seq;
       public          postgres    false    220                       0    0    subject_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.subject_id_seq OWNED BY public.subject.id;
          public          postgres    false    219                       1259    37549    tabla_horas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tabla_horas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 )   DROP SEQUENCE public.tabla_horas_id_seq;
       public          postgres    false                       1259    37563    teacher    TABLE     '  CREATE TABLE public.teacher (
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
       public         heap    postgres    false            �            1259    37477    teacher_distributive    TABLE     �   CREATE TABLE public.teacher_distributive (
    id integer NOT NULL,
    school_time integer,
    teacher integer,
    course integer,
    grade integer
);
 (   DROP TABLE public.teacher_distributive;
       public         heap    postgres    false            �            1259    37475    teacher_distributive_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teacher_distributive_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.teacher_distributive_id_seq;
       public          postgres    false    239                       0    0    teacher_distributive_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.teacher_distributive_id_seq OWNED BY public.teacher_distributive.id;
          public          postgres    false    238                       1259    37559    teacher_id_seq    SEQUENCE        CREATE SEQUENCE public.teacher_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 %   DROP SEQUENCE public.teacher_id_seq;
       public          postgres    false                       1259    37561    teacher_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.teacher_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.teacher_id_seq1;
       public          postgres    false    263                       0    0    teacher_id_seq1    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.teacher_id_seq1 OWNED BY public.teacher.id;
          public          postgres    false    262            �            1259    37457    time_configuration    TABLE     �   CREATE TABLE public.time_configuration (
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
       public         heap    postgres    false            �            1259    37455    time_configuration_id_seq    SEQUENCE     �   CREATE SEQUENCE public.time_configuration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.time_configuration_id_seq;
       public          postgres    false    233                       0    0    time_configuration_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.time_configuration_id_seq OWNED BY public.time_configuration.id;
          public          postgres    false    232            �           2604    37351    authorities authority_id    DEFAULT     �   ALTER TABLE ONLY auth.authorities ALTER COLUMN authority_id SET DEFAULT nextval('auth.authorities_authority_id_seq1'::regclass);
 E   ALTER TABLE auth.authorities ALTER COLUMN authority_id DROP DEFAULT;
       auth          postgres    false    204    205    205            �           2604    37364    roles role_id    DEFAULT     k   ALTER TABLE ONLY auth.roles ALTER COLUMN role_id SET DEFAULT nextval('auth.roles_role_id_seq1'::regclass);
 :   ALTER TABLE auth.roles ALTER COLUMN role_id DROP DEFAULT;
       auth          postgres    false    207    208    208            �           2604    37377 #   roles_authorities role_authority_id    DEFAULT     �   ALTER TABLE ONLY auth.roles_authorities ALTER COLUMN role_authority_id SET DEFAULT nextval('auth.roles_authorities_role_authority_id_seq1'::regclass);
 P   ALTER TABLE auth.roles_authorities ALTER COLUMN role_authority_id DROP DEFAULT;
       auth          postgres    false    211    210    211            �           2604    37387    users user_id    DEFAULT     k   ALTER TABLE ONLY auth.users ALTER COLUMN user_id SET DEFAULT nextval('auth.users_user_id_seq1'::regclass);
 :   ALTER TABLE auth.users ALTER COLUMN user_id DROP DEFAULT;
       auth          postgres    false    213    214    214            �           2604    37400    users_roles user_role_id    DEFAULT     �   ALTER TABLE ONLY auth.users_roles ALTER COLUMN user_role_id SET DEFAULT nextval('auth.users_roles_user_role_id_seq1'::regclass);
 E   ALTER TABLE auth.users_roles ALTER COLUMN user_role_id DROP DEFAULT;
       auth          postgres    false    216    217    217            �           2604    37420 	   career id    DEFAULT     f   ALTER TABLE ONLY public.career ALTER COLUMN id SET DEFAULT nextval('public.career_id_seq'::regclass);
 8   ALTER TABLE public.career ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    37575    catalogue id    DEFAULT     l   ALTER TABLE ONLY public.catalogue ALTER COLUMN id SET DEFAULT nextval('public.catalogue_id_seq'::regclass);
 ;   ALTER TABLE public.catalogue ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    265    265            �           2604    37433    classroom_types id    DEFAULT     y   ALTER TABLE ONLY public.classroom_types ALTER COLUMN id SET DEFAULT nextval('public.classroom_types_id_seq1'::regclass);
 A   ALTER TABLE public.classroom_types ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    37444    classrooms id    DEFAULT     o   ALTER TABLE ONLY public.classrooms ALTER COLUMN id SET DEFAULT nextval('public.classrooms_id_seq1'::regclass);
 <   ALTER TABLE public.classrooms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    37470    day id    DEFAULT     `   ALTER TABLE ONLY public.day ALTER COLUMN id SET DEFAULT nextval('public.day_id_seq'::regclass);
 5   ALTER TABLE public.day ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            �           2604    37490    grade id    DEFAULT     e   ALTER TABLE ONLY public.grade ALTER COLUMN id SET DEFAULT nextval('public.grade_id_seq1'::regclass);
 7   ALTER TABLE public.grade ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            �           2604    37556    hours_table id    DEFAULT     p   ALTER TABLE ONLY public.hours_table ALTER COLUMN id SET DEFAULT nextval('public.hours_table_id_seq'::regclass);
 =   ALTER TABLE public.hours_table ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    260    260            �           2604    37501    locations id    DEFAULT     m   ALTER TABLE ONLY public.locations ALTER COLUMN id SET DEFAULT nextval('public.locations_id_seq1'::regclass);
 ;   ALTER TABLE public.locations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244    245            �           2604    37515    means_classrom id    DEFAULT     w   ALTER TABLE ONLY public.means_classrom ALTER COLUMN id SET DEFAULT nextval('public.means_classrom_id_seq1'::regclass);
 @   ALTER TABLE public.means_classrom ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247    248            �           2604    37546 
   request id    DEFAULT     h   ALTER TABLE ONLY public.request ALTER COLUMN id SET DEFAULT nextval('public.request_id_seq'::regclass);
 9   ALTER TABLE public.request ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    257    257            �           2604    37526    school_period id    DEFAULT     t   ALTER TABLE ONLY public.school_period ALTER COLUMN id SET DEFAULT nextval('public.school_period_id_seq'::regclass);
 ?   ALTER TABLE public.school_period ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    250    251            �           2604    37538    size_request id    DEFAULT     r   ALTER TABLE ONLY public.size_request ALTER COLUMN id SET DEFAULT nextval('public.size_request_id_seq'::regclass);
 >   ALTER TABLE public.size_request ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    255    255            �           2604    37410 
   subject id    DEFAULT     h   ALTER TABLE ONLY public.subject ALTER COLUMN id SET DEFAULT nextval('public.subject_id_seq'::regclass);
 9   ALTER TABLE public.subject ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    37566 
   teacher id    DEFAULT     i   ALTER TABLE ONLY public.teacher ALTER COLUMN id SET DEFAULT nextval('public.teacher_id_seq1'::regclass);
 9   ALTER TABLE public.teacher ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    263    262    263            �           2604    37480    teacher_distributive id    DEFAULT     �   ALTER TABLE ONLY public.teacher_distributive ALTER COLUMN id SET DEFAULT nextval('public.teacher_distributive_id_seq'::regclass);
 F   ALTER TABLE public.teacher_distributive ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    37460    time_configuration id    DEFAULT     ~   ALTER TABLE ONLY public.time_configuration ALTER COLUMN id SET DEFAULT nextval('public.time_configuration_id_seq'::regclass);
 D   ALTER TABLE public.time_configuration ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            �          0    37348    authorities 
   TABLE DATA           7   COPY auth.authorities (authority_id, name) FROM stdin;
    auth          postgres    false    205   a�       �          0    37361    roles 
   TABLE DATA           ,   COPY auth.roles (role_id, name) FROM stdin;
    auth          postgres    false    208   ��       �          0    37374    roles_authorities 
   TABLE DATA           S   COPY auth.roles_authorities (role_authority_id, role_id, authority_id) FROM stdin;
    auth          postgres    false    211   �       �          0    37384    users 
   TABLE DATA           Z   COPY auth.users (user_id, password, name, username, looked, expired, enabled) FROM stdin;
    auth          postgres    false    214   K�       �          0    37397    users_roles 
   TABLE DATA           C   COPY auth.users_roles (user_role_id, user_id, role_id) FROM stdin;
    auth          postgres    false    217    �       �          0    37417    career 
   TABLE DATA           A   COPY public.career (id, name, duration, img, status) FROM stdin;
    public          postgres    false    223   '�       �          0    37572 	   catalogue 
   TABLE DATA           <   COPY public.catalogue (id, name, value, status) FROM stdin;
    public          postgres    false    265   2�       �          0    37430    classroom_types 
   TABLE DATA           A   COPY public.classroom_types (id, code, name, status) FROM stdin;
    public          postgres    false    226   ��       �          0    37441 
   classrooms 
   TABLE DATA           ]   COPY public.classrooms (id, type, location, name, capacity, status, description) FROM stdin;
    public          postgres    false    229   ��       �          0    37467    day 
   TABLE DATA           1   COPY public.day (id, name, posicion) FROM stdin;
    public          postgres    false    236   �       �          0    37487    grade 
   TABLE DATA           W   COPY public.grade (id, name, working_day, level, parallel, status, career) FROM stdin;
    public          postgres    false    242   n�       �          0    37553    hours_table 
   TABLE DATA           >   COPY public.hours_table (id, hour, time_position) FROM stdin;
    public          postgres    false    260   ��       �          0    37498 	   locations 
   TABLE DATA           W   COPY public.locations (id, name, description, status, latitude, longitude) FROM stdin;
    public          postgres    false    245   >�       �          0    37512    means_classrom 
   TABLE DATA           X   COPY public.means_classrom (id, classroom, proyect, chairs, tables, status) FROM stdin;
    public          postgres    false    248   u�       �          0    37543    request 
   TABLE DATA           X   COPY public.request (id, school_time, date, career, status, requested_time) FROM stdin;
    public          postgres    false    257   ��       �          0    37523    school_period 
   TABLE DATA           O   COPY public.school_period (id, name, start_date, end_date, status) FROM stdin;
    public          postgres    false    251   ��       �          0    37535    size_request 
   TABLE DATA           c   COPY public.size_request (id, request, teaching_subject, start_date, end_date, status) FROM stdin;
    public          postgres    false    255   �       �          0    37407    subject 
   TABLE DATA           f   COPY public.subject (id, code, name, theoretical_hours, laboratory_hours, career, status) FROM stdin;
    public          postgres    false    220   *�       �          0    37563    teacher 
   TABLE DATA           Y   COPY public.teacher (id, dni, name, color, phone, email, archived, lastname) FROM stdin;
    public          postgres    false    263   [�       �          0    37477    teacher_distributive 
   TABLE DATA           W   COPY public.teacher_distributive (id, school_time, teacher, course, grade) FROM stdin;
    public          postgres    false    239   ��       �          0    37457    time_configuration 
   TABLE DATA           w   COPY public.time_configuration (id, school_period, classroom, day, date, hour, occupied_by, status, color) FROM stdin;
    public          postgres    false    233   �                  0    0    authorities_authority_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth.authorities_authority_id_seq', 1, false);
          auth          postgres    false    203                       0    0    authorities_authority_id_seq1    SEQUENCE SET     J   SELECT pg_catalog.setval('auth.authorities_authority_id_seq1', 12, true);
          auth          postgres    false    204                       0    0 '   roles_authorities_role_authority_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('auth.roles_authorities_role_authority_id_seq', 1, false);
          auth          postgres    false    209                       0    0 (   roles_authorities_role_authority_id_seq1    SEQUENCE SET     T   SELECT pg_catalog.setval('auth.roles_authorities_role_authority_id_seq1', 4, true);
          auth          postgres    false    210                       0    0    roles_role_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth.roles_role_id_seq', 1, false);
          auth          postgres    false    206                       0    0    roles_role_id_seq1    SEQUENCE SET     >   SELECT pg_catalog.setval('auth.roles_role_id_seq1', 3, true);
          auth          postgres    false    207                       0    0    users_roles_user_role_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth.users_roles_user_role_id_seq', 1, false);
          auth          postgres    false    215                       0    0    users_roles_user_role_id_seq1    SEQUENCE SET     I   SELECT pg_catalog.setval('auth.users_roles_user_role_id_seq1', 2, true);
          auth          postgres    false    216                       0    0    users_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth.users_user_id_seq', 1, false);
          auth          postgres    false    212                       0    0    users_user_id_seq1    SEQUENCE SET     >   SELECT pg_catalog.setval('auth.users_user_id_seq1', 2, true);
          auth          postgres    false    213                       0    0    Asignatura_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Asignatura_id_seq"', 1, false);
          public          postgres    false    218                       0    0    caerer_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.caerer_id_seq', 1, false);
          public          postgres    false    221                       0    0    career_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.career_id_seq', 3, true);
          public          postgres    false    222                       0    0    catalogue_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.catalogue_id_seq', 12, true);
          public          postgres    false    264                       0    0    classroom_types_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.classroom_types_id_seq', 1, false);
          public          postgres    false    224                       0    0    classroom_types_id_seq1    SEQUENCE SET     F   SELECT pg_catalog.setval('public.classroom_types_id_seq1', 1, false);
          public          postgres    false    225                        0    0    classrooms_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.classrooms_id_seq', 1, false);
          public          postgres    false    227            !           0    0    classrooms_id_seq1    SEQUENCE SET     @   SELECT pg_catalog.setval('public.classrooms_id_seq1', 1, true);
          public          postgres    false    228            "           0    0    color_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.color_id_seq', 1, false);
          public          postgres    false    230            #           0    0    configuracion_horario_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.configuracion_horario_id_seq', 1, false);
          public          postgres    false    231            $           0    0 
   day_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.day_id_seq', 7, true);
          public          postgres    false    235            %           0    0 
   dia_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.dia_id_seq', 1, false);
          public          postgres    false    234            &           0    0    distributivo_docente_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.distributivo_docente_id_seq', 1, false);
          public          postgres    false    237            '           0    0    grade_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.grade_id_seq', 1, false);
          public          postgres    false    240            (           0    0    grade_id_seq1    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.grade_id_seq1', 4, true);
          public          postgres    false    241            )           0    0    hours_table_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hours_table_id_seq', 14, true);
          public          postgres    false    259            *           0    0    locations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.locations_id_seq', 1, false);
          public          postgres    false    243            +           0    0    locations_id_seq1    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.locations_id_seq1', 1, true);
          public          postgres    false    244            ,           0    0    means_classrom_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.means_classrom_id_seq', 1, false);
          public          postgres    false    246            -           0    0    means_classrom_id_seq1    SEQUENCE SET     E   SELECT pg_catalog.setval('public.means_classrom_id_seq1', 1, false);
          public          postgres    false    247            .           0    0    periodo_lectivo_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.periodo_lectivo_id_seq', 1, false);
          public          postgres    false    249            /           0    0    request_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.request_id_seq', 1, false);
          public          postgres    false    256            0           0    0    school_period_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.school_period_id_seq', 4, true);
          public          postgres    false    250            1           0    0    size_request_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.size_request_id_seq', 1, false);
          public          postgres    false    254            2           0    0    solicitud_detalle_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.solicitud_detalle_id_seq', 1, false);
          public          postgres    false    253            3           0    0    solicitud_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.solicitud_id_seq', 1, false);
          public          postgres    false    252            4           0    0    subject_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.subject_id_seq', 11, true);
          public          postgres    false    219            5           0    0    tabla_horas_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tabla_horas_id_seq', 1, false);
          public          postgres    false    258            6           0    0    teacher_distributive_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.teacher_distributive_id_seq', 6, true);
          public          postgres    false    238            7           0    0    teacher_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.teacher_id_seq', 1, false);
          public          postgres    false    261            8           0    0    teacher_id_seq1    SEQUENCE SET     =   SELECT pg_catalog.setval('public.teacher_id_seq1', 3, true);
          public          postgres    false    262            9           0    0    time_configuration_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.time_configuration_id_seq', 8, true);
          public          postgres    false    232            �           2606    37356    authorities authorities_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY auth.authorities
    ADD CONSTRAINT authorities_pkey PRIMARY KEY (authority_id);
 D   ALTER TABLE ONLY auth.authorities DROP CONSTRAINT authorities_pkey;
       auth            postgres    false    205            �           2606    37379 (   roles_authorities roles_authorities_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY auth.roles_authorities
    ADD CONSTRAINT roles_authorities_pkey PRIMARY KEY (role_authority_id);
 P   ALTER TABLE ONLY auth.roles_authorities DROP CONSTRAINT roles_authorities_pkey;
       auth            postgres    false    211            �           2606    37369    roles roles_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (role_id);
 8   ALTER TABLE ONLY auth.roles DROP CONSTRAINT roles_pkey;
       auth            postgres    false    208            �           2606    37392    users users_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 8   ALTER TABLE ONLY auth.users DROP CONSTRAINT users_pkey;
       auth            postgres    false    214                        2606    37402    users_roles users_roles_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY auth.users_roles
    ADD CONSTRAINT users_roles_pkey PRIMARY KEY (user_role_id);
 D   ALTER TABLE ONLY auth.users_roles DROP CONSTRAINT users_roles_pkey;
       auth            postgres    false    217                       2606    37412    subject Asignatura_pk 
   CONSTRAINT     U   ALTER TABLE ONLY public.subject
    ADD CONSTRAINT "Asignatura_pk" PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.subject DROP CONSTRAINT "Asignatura_pk";
       public            postgres    false    220                       2606    37425    career caerer_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public.career
    ADD CONSTRAINT caerer_pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.career DROP CONSTRAINT caerer_pk;
       public            postgres    false    223                        2606    37577    catalogue catalogue_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public.catalogue
    ADD CONSTRAINT catalogue_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.catalogue DROP CONSTRAINT catalogue_pk;
       public            postgres    false    265                       2606    37436 $   classroom_types classroom_types_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.classroom_types
    ADD CONSTRAINT classroom_types_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.classroom_types DROP CONSTRAINT classroom_types_pkey;
       public            postgres    false    226                       2606    37450    classrooms classrooms_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.classrooms
    ADD CONSTRAINT classrooms_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.classrooms DROP CONSTRAINT classrooms_pkey;
       public            postgres    false    229            
           2606    37462 +   time_configuration configuracion_horario_pk 
   CONSTRAINT     i   ALTER TABLE ONLY public.time_configuration
    ADD CONSTRAINT configuracion_horario_pk PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.time_configuration DROP CONSTRAINT configuracion_horario_pk;
       public            postgres    false    233                       2606    37472 
   day dia_pk 
   CONSTRAINT     H   ALTER TABLE ONLY public.day
    ADD CONSTRAINT dia_pk PRIMARY KEY (id);
 4   ALTER TABLE ONLY public.day DROP CONSTRAINT dia_pk;
       public            postgres    false    236                       2606    37482 ,   teacher_distributive distributivo_docente_pk 
   CONSTRAINT     j   ALTER TABLE ONLY public.teacher_distributive
    ADD CONSTRAINT distributivo_docente_pk PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.teacher_distributive DROP CONSTRAINT distributivo_docente_pk;
       public            postgres    false    239                       2606    37493    grade grade_pk 
   CONSTRAINT     L   ALTER TABLE ONLY public.grade
    ADD CONSTRAINT grade_pk PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.grade DROP CONSTRAINT grade_pk;
       public            postgres    false    242                       2606    37507    locations locations_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.locations DROP CONSTRAINT locations_pkey;
       public            postgres    false    245                       2606    37518 "   means_classrom means_classrom_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.means_classrom
    ADD CONSTRAINT means_classrom_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.means_classrom DROP CONSTRAINT means_classrom_pkey;
       public            postgres    false    248                       2606    37528     school_period periodo_lectivo_pk 
   CONSTRAINT     ^   ALTER TABLE ONLY public.school_period
    ADD CONSTRAINT periodo_lectivo_pk PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.school_period DROP CONSTRAINT periodo_lectivo_pk;
       public            postgres    false    251                       2606    37540 !   size_request solicitud_detalle_pk 
   CONSTRAINT     _   ALTER TABLE ONLY public.size_request
    ADD CONSTRAINT solicitud_detalle_pk PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.size_request DROP CONSTRAINT solicitud_detalle_pk;
       public            postgres    false    255                       2606    37548    request solicitud_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.request
    ADD CONSTRAINT solicitud_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.request DROP CONSTRAINT solicitud_pk;
       public            postgres    false    257                       2606    37558    hours_table tabla_horas_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.hours_table
    ADD CONSTRAINT tabla_horas_pk PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.hours_table DROP CONSTRAINT tabla_horas_pk;
       public            postgres    false    260                       2606    37569    teacher teacher_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT teacher_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.teacher DROP CONSTRAINT teacher_pkey;
       public            postgres    false    263            !           2606    37578    roles_authorities fk_auth    FK CONSTRAINT     �   ALTER TABLE ONLY auth.roles_authorities
    ADD CONSTRAINT fk_auth FOREIGN KEY (authority_id) REFERENCES auth.authorities(authority_id);
 A   ALTER TABLE ONLY auth.roles_authorities DROP CONSTRAINT fk_auth;
       auth          postgres    false    205    3064    211            "           2606    37583    roles_authorities fk_role    FK CONSTRAINT     y   ALTER TABLE ONLY auth.roles_authorities
    ADD CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES auth.roles(role_id);
 A   ALTER TABLE ONLY auth.roles_authorities DROP CONSTRAINT fk_role;
       auth          postgres    false    3066    208    211            #           2606    37588    users_roles fk_role    FK CONSTRAINT     x   ALTER TABLE ONLY auth.users_roles
    ADD CONSTRAINT fk_role FOREIGN KEY (user_role_id) REFERENCES auth.roles(role_id);
 ;   ALTER TABLE ONLY auth.users_roles DROP CONSTRAINT fk_role;
       auth          postgres    false    3066    208    217            $           2606    37593    users_roles fk_user    FK CONSTRAINT     s   ALTER TABLE ONLY auth.users_roles
    ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES auth.users(user_id);
 ;   ALTER TABLE ONLY auth.users_roles DROP CONSTRAINT fk_user;
       auth          postgres    false    217    214    3070            ,           2606    37633 "   teacher_distributive asignatura_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.teacher_distributive
    ADD CONSTRAINT asignatura_fk FOREIGN KEY (course) REFERENCES public.subject(id);
 L   ALTER TABLE ONLY public.teacher_distributive DROP CONSTRAINT asignatura_fk;
       public          postgres    false    3074    239    220            0           2606    37653    grade career_grade_fk    FK CONSTRAINT     t   ALTER TABLE ONLY public.grade
    ADD CONSTRAINT career_grade_fk FOREIGN KEY (career) REFERENCES public.career(id);
 ?   ALTER TABLE ONLY public.grade DROP CONSTRAINT career_grade_fk;
       public          postgres    false    223    242    3076            '           2606    37608    time_configuration classroom_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.time_configuration
    ADD CONSTRAINT classroom_fk FOREIGN KEY (classroom) REFERENCES public.classrooms(id);
 I   ALTER TABLE ONLY public.time_configuration DROP CONSTRAINT classroom_fk;
       public          postgres    false    3080    229    233            (           2606    37613    time_configuration dia_fk    FK CONSTRAINT     r   ALTER TABLE ONLY public.time_configuration
    ADD CONSTRAINT dia_fk FOREIGN KEY (day) REFERENCES public.day(id);
 C   ALTER TABLE ONLY public.time_configuration DROP CONSTRAINT dia_fk;
       public          postgres    false    236    3084    233            5           2606    37678 "   size_request fk-asignatura_docente    FK CONSTRAINT     �   ALTER TABLE ONLY public.size_request
    ADD CONSTRAINT "fk-asignatura_docente" FOREIGN KEY (teaching_subject) REFERENCES public.teacher_distributive(id);
 N   ALTER TABLE ONLY public.size_request DROP CONSTRAINT "fk-asignatura_docente";
       public          postgres    false    255    239    3086            %           2606    37598     classrooms fk_classroom_location    FK CONSTRAINT     �   ALTER TABLE ONLY public.classrooms
    ADD CONSTRAINT fk_classroom_location FOREIGN KEY (location) REFERENCES public.locations(id);
 J   ALTER TABLE ONLY public.classrooms DROP CONSTRAINT fk_classroom_location;
       public          postgres    false    3090    229    245            &           2606    37603    classrooms fk_classroom_type    FK CONSTRAINT     �   ALTER TABLE ONLY public.classrooms
    ADD CONSTRAINT fk_classroom_type FOREIGN KEY (type) REFERENCES public.classroom_types(id);
 F   ALTER TABLE ONLY public.classrooms DROP CONSTRAINT fk_classroom_type;
       public          postgres    false    226    3078    229            1           2606    37658    grade fk_level_catalogue    FK CONSTRAINT     y   ALTER TABLE ONLY public.grade
    ADD CONSTRAINT fk_level_catalogue FOREIGN KEY (level) REFERENCES public.catalogue(id);
 B   ALTER TABLE ONLY public.grade DROP CONSTRAINT fk_level_catalogue;
       public          postgres    false    242    3104    265            4           2606    37673     means_classrom fk_mean_classroom    FK CONSTRAINT     �   ALTER TABLE ONLY public.means_classrom
    ADD CONSTRAINT fk_mean_classroom FOREIGN KEY (classroom) REFERENCES public.classrooms(id);
 J   ALTER TABLE ONLY public.means_classrom DROP CONSTRAINT fk_mean_classroom;
       public          postgres    false    248    229    3080            /           2606    37648    teacher_distributive grade_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.teacher_distributive
    ADD CONSTRAINT grade_fk FOREIGN KEY (grade) REFERENCES public.grade(id);
 G   ALTER TABLE ONLY public.teacher_distributive DROP CONSTRAINT grade_fk;
       public          postgres    false    239    242    3088            )           2606    37618    time_configuration hora_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.time_configuration
    ADD CONSTRAINT hora_fk FOREIGN KEY (hour) REFERENCES public.hours_table(id);
 D   ALTER TABLE ONLY public.time_configuration DROP CONSTRAINT hora_fk;
       public          postgres    false    260    3100    233            3           2606    37668    grade paralell_catalogue_fk    FK CONSTRAINT        ALTER TABLE ONLY public.grade
    ADD CONSTRAINT paralell_catalogue_fk FOREIGN KEY (parallel) REFERENCES public.catalogue(id);
 E   ALTER TABLE ONLY public.grade DROP CONSTRAINT paralell_catalogue_fk;
       public          postgres    false    242    265    3104            *           2606    37623 %   time_configuration periodo_lectivo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.time_configuration
    ADD CONSTRAINT periodo_lectivo_fk FOREIGN KEY (school_period) REFERENCES public.school_period(id);
 O   ALTER TABLE ONLY public.time_configuration DROP CONSTRAINT periodo_lectivo_fk;
       public          postgres    false    233    251    3094            -           2606    37638 '   teacher_distributive periodo_lectivo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.teacher_distributive
    ADD CONSTRAINT periodo_lectivo_fk FOREIGN KEY (school_time) REFERENCES public.school_period(id);
 Q   ALTER TABLE ONLY public.teacher_distributive DROP CONSTRAINT periodo_lectivo_fk;
       public          postgres    false    239    251    3094            7           2606    37688    request periodo_lectivo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.request
    ADD CONSTRAINT periodo_lectivo_fk FOREIGN KEY (school_time) REFERENCES public.school_period(id);
 D   ALTER TABLE ONLY public.request DROP CONSTRAINT periodo_lectivo_fk;
       public          postgres    false    257    3094    251            6           2606    37683    size_request solicitud_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.size_request
    ADD CONSTRAINT solicitud_fk FOREIGN KEY (request) REFERENCES public.request(id);
 C   ALTER TABLE ONLY public.size_request DROP CONSTRAINT solicitud_fk;
       public          postgres    false    255    257    3098            +           2606    37628 :   time_configuration teacher_distributive-config_schedule-fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.time_configuration
    ADD CONSTRAINT "teacher_distributive-config_schedule-fk" FOREIGN KEY (occupied_by) REFERENCES public.teacher_distributive(id);
 f   ALTER TABLE ONLY public.time_configuration DROP CONSTRAINT "teacher_distributive-config_schedule-fk";
       public          postgres    false    233    3086    239            .           2606    37643    teacher_distributive teacher_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.teacher_distributive
    ADD CONSTRAINT teacher_fk FOREIGN KEY (teacher) REFERENCES public.teacher(id);
 I   ALTER TABLE ONLY public.teacher_distributive DROP CONSTRAINT teacher_fk;
       public          postgres    false    3102    239    263            2           2606    37663    grade working_day_catalogue_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.grade
    ADD CONSTRAINT working_day_catalogue_fk FOREIGN KEY (working_day) REFERENCES public.catalogue(id);
 H   ALTER TABLE ONLY public.grade DROP CONSTRAINT working_day_catalogue_fk;
       public          postgres    false    265    242    3104            �   j   x�M�K
�0D��a��wY$�@k%ڍ��J����#o�.���{���@$�Z�ˑ}���R���z')|�f�G��:)0mvI�������#�������5V      �   /   x�3���q�wt����2�r�]�����!<7G�� G�H� DnL      �   !   x�3�4�4�2�F\�@Ҙ�H�p��qqq 49q      �   �   x�5�M�0 @�ۯ��٩X�qIP䜔�J�5�f55]V�����@��fZ4ni%,��4�<-��sc_�'8�Y첖*�8㉽�?W��� �.B�u�f��ع*A��[�8%��N�3uGu��i'��0	Q�D3�>֕���k��	a\��O��B��5�      �      x�3�4�4�2�4�1z\\\ 	      �   �   x�5��n�0�3</`t[��JAZ���z�eRehC�%A���R�%����IC�c�9S����(yM4�$�U�L�g���$9c�]��Vy�y��gq������i�׸{��8���=�n��ݭ���O�q/����mS����nF}��$�����GD��
�S�#c�rKq1Lr��d��Xͨ���r+�J�ՓD9�!�Z���g!��9U�@�c�cF���5+�;O����i�      �   z   x�U��
�0@���cJm��n��J��:���ҿo"��W�FZ&p�$�!�H*�+�JT%UQ5�(��w�K����x�2[O}��$;���e&qv����=ѭ�1���Ub�NJ�?JN@�      �      x������ � �      �   %   x�3���4�t,�IT0�46�,��J,N����� `?      �   P   x�3�.�KI��4�2���3���9CJS�Alc.��Ԕ<τ˔3$���1�2�t+�1͸�9�KJ�@s�=... {��      �   ;   x�3�4,�Ws��w	wr�44�4�4�,�4�2K�"K�%M��~ȒFp�=... ��d      �   u   x�%���PCѵ���٩����l�sYI��͌���`E���+�݃VHݓV��7����<�B����Z�oX��}S����;��(�`�<RE�Q��AM�Q���C��5(5      �   '   x�3�,M�LNL��7�L,N�,�442� N#c�=... ��T      �      x������ � �      �      x������ � �      �   N   x�=��	�0�︋E/!�]2F��^4�;x�7�/��dSqj��
�+��4�+M�Mi�; �1#�5��k��� �?#      �      x������ � �      �   !  x�e��j�0F�����8��v��1X���썚�E���r���g%02ve��'u][f�`�͎�O�Z5X8�W�R���dXf�
��̷%�*�:�����y}��Rj��#�s�����՗��#1w:����sf��u�L�)E���%�ؓ,SMm�љ��E���|�b���[�
=���e`)��o���|�D��f3x�Tv���&-��j�m&Q�gS�,��>MB��v1'Xz)��kMd�E�v�%G1�Qrb�k9���T����~r�B�~�O�ᡪ�\��h      �   ~   x�U�1�0����`'��	����	˫-���%-��{��b���r���)K�nM�|o�0�;>2.��~Ɇ�@���������;�9�qvn��9���D��XwAeڮ�猢���q�h���>*�      �      x�3�4�4A.3 ��2����� (V      �   V   x�e��� Cѳ�1����1�_�"A��o�AQ�L�<3*�'��o+n<�#:��tխ�'}������Y�bl�n-̢������%e     