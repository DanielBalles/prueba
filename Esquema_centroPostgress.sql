#############tipo catalogo

create table vinculacion (
	tipo_vinculacion varchar(40),
	horas int(10),
	estado varchar (40)
);

create table jornada_instructor (
	nombre_jornada varchar(80),
	descripcion varchar (200),
	estado varchar (40)
);

create table area (
	nombre_area varchar (40),
	estado varchar (40),
	url_logo varchar (1000)
);

crate table years (
	number_years int (11),
	estado varchar (40)
);

################## tablas normales
create table instructor (
	estado varchar (40),
	numero_documento varchar (50),
	sigla varchar (10)
);

create table area_instructor (
	numero_documento varchar (80),
	sigla varchar (10),
	nombre_area varchar(40),
	estado varchar (40)
);

create table vinculacion_instructor (
	fecha_inicio date,
	fecha_fin date,
	numero_documento varchar (50),
	sigla varchar (10),
	number_years int (11),
	tipo_vinculacion varchar (40)
);

create table dia_jornada (
	hora_inicio int(11),
	hora_fin int(11),
	nombre_jornada varchar(80),
	nombre_dia varchar (40)
);

create table disponibilidad_competencias (
	codigo_competencia varchar (50),
	codigo_programa varchar (50),
	version_programa varchar (40),
	numero_documento varchar (50),
	sigla varchar (10),
	number_year int(11),
	tipo_vinculacion varchar (40),
	fecha_inicio date
);

create table disponivilidad_horaria (
	numero_documento varchar (50),
	sigla varchar (10),
	number_year int(11),
	tipo_vinculacion varchar (40),
	fecha_inicio date,
	nombre_jornada varchar (80)
);

