create table proyecto (
    codigo  varchar (40),
    nombre varchar (500),
    estado varchar (40),
    codigo_programa varchar (50),
    version varchar (40),
);

create table fase (
    nombre varchar (40),
    estado varchar (40),
    codigo_proyecto varchar (40)
);

create table actividad_proyecto (
    numero_actividad int (10),
    descripcion_actividad varchar (400),
    estado varchar (40),
    nombre_fase varchar (40),
    codigo_proyecto varchar (40)
);
