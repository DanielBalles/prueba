create table varloracion (
    tipo_valoracion varchar (50),
    estado varchar (40)
);

create table respuesta_grupo (
    fecha datetime,
    tipo_valoracion varchar(50),
    numero_grupo int (10),
    numero_ficha varchar(100),
    lista varchar (50),
    numero_item int (10),
);

create table onservacion_respuesta (
    numero_observacion int (10),
    observacion varchar (400),
    jurados varchar (400),
    fecha datetime,
    numero_documento varchar (50),
    sigla varchar (10),
    numero_grupo int (10),
    numero_ficha varchar (100),
    lista varchar (50),
    numero_item int (10)
);

create table observacion_genera (
    numero int (10),
    observacion varchar (500),
    jurado varchar (500),
    fecha datetime,
    numero_documento varchar (50),
    sigla varchar (10),
    numero_grupo int (10),
    numero_ficha varchar (100)
);


create table integrantes_grupo (
    numero_documento varchar (50),
    sigla varchar (10),
    numero_ficha varchar (100),
    numero_grupo int (10),
    numero_ficha2 varchar (100),
);

create table grupo_proyecto (
    numero_grupo int (10),
    nombre_proyecto varchar (300),
    estado varchar (40),
    numero_ficha varchar (100),
);


create table lista_ficha (
    numero_ficha varchar (100),
    lista varchar (50)
);

create table item_lista (
    lista varchar (50),
    numero_item int (10),
    pregunta varchar (1000),
    id_resultado_aprendizaje int (10),
    codigo_resultado varchar (40),
    codigo_competencia varchar (50),
    codigo_programa varchar (50),
    version_programa varchar (40)
);

