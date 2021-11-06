create table sede (
    nombre_sede varchar (50),
    direccion varchar (400),
    estado varchar (40)
);

create table tipo_ambiente (
    tipo varchar (50),
    descripcion varchar (100),
    estado varchar (40)
);

create table ambiente (
    numero_ambiente varchar (50),
    nombre_sede varchar (50),
    descripcion varchar (1000),
    estado varchar (50),
    limitacion varchar (40),
    tipo varchar (50)
);

create table limitacion_ambiente (
    numero_ambiente varchar (50),
    nombre_sede varchar (50),
    codigo_resultadoigo varchar (40),
    codigo_competencia varchar (50),
    codigo_programa varchar (50),
    version_programa varchar (40)
);

