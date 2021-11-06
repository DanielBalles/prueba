create table dia (
    nombre_dia varchar (40),
    estado varchar (40)
);

create table modalidad (
    nombre_modalidad varchar (40),
    color varchar (50),
    estado varchar (40)
);

create table trimestre_vigente (
    trimestre_programado int (10),
    fecha_inicio date,
    fecha_fin date,
    estado varchar (40),
    number_year int (11 )
);

create table version_horario (
    numero_version varchar (40),
    estado varchar (40),
    number_year int (11),
    trimestre_programado int(10)
);

create table horario (
    hora_inicio time,
    hora_fin time,
    numero_documento varchar(50),
    sigla varchar (10),
    numero_ambiente varchar (50),
    nombre_sede varchar (50),
    numero_ficha varchar (100),
    sigla_jornada varchar (20),
    nivel varchar (40),
    nombre_trimestre int (11),
    nombre_dia varchar (40),
    nombre_modalidad varchar (40),
    numero_version varchar (40),
    number_year int(11),
    trimestre_programado int(10)
);