CREATE SCHEMA ficha;


create table ficha.estado_ficha (
	nombre_estado varchar (20),
	estado tinyint(3),

	CONSTRAINT Pk_estado_ficha PRIMARY KEY (nombre_estado)
);

create table ficha.estado_formacion (
	nombre_estado varchar(40),
	estado varchar(40),

	CONSTRAINT Pk_estado_formacion PRIMARY KEY (nombre_estado)

);

create table ficha.jornada (
	sigla_jornada varchar(20),
	nombre_jornada varchar(40),
	descripcion varchar (100),
	imagen_url varchar (1000),
	estado varchar (40),

	CONSTRAINT Pk_jornada PRIMARY KEY (sigla_jornada),
	CONSTRAINT uk_jornada UNIQUE (nombre_jornada),
);

create table ficha.ficha (
	numero_ficha varchar(100),
	fecha_inicio date,
	fecha_fin date,
	ruta varchar (40),
	codigo varchar (50),
	version varchar (40),
	nombre_estado varchar (20),
	sigla_jornada varchar(20),

	CONSTRAINT Pk_ficha PRIMARY KEY (numero_ficha),

	/*CONSTRAINT fk_ficha_ FOREIGN KEY (codigo) REFERENCES lorem (codigo)------------insertar Despues*/
	/*CONSTRAINT fk_ficha_ FOREIGN KEY (version) REFERENCES lorem (version)------------insertar Despues*/
	CONSTRAINT fk_ficha_estado_focha FOREIGN KEY (nombre_estado) REFERENCES ficha.estado_ficha (nombre_estado)
	CONSTRAINT fk_ficha_ficha-jornada FOREIGN KEY (sigla_jornada) REFERENCES ficha.jornada (sigla_jornada)
);

create table ficha.trimestre (
	nombre_trimestre int(11),
	nivel varchar (40),
	sigla_jornada varchar(20),
	estado varchar (40),

	CONSTRAINT Pk_trimestre PRIMARY KEY (nombre_trimestre,nivel,sigla_jornada,),

	/*CONSTRAINT fk_trimestre_jornada FOREIGN KEY (nivel) REFERENCES ficha.jornada (nivel)------------insertar Despues*/
	CONSTRAINT fk_trimestre_jornada FOREIGN KEY (sigla_jornada) REFERENCES ficha.jornada (sigla_jornada)
);





create table ficha.aprendiz (
	numero_documento varchar(50),
	sigla varchar(10),
	numero_ficha varchar (100),
	nombre_estado varchar(40),

	CONSTRAINT Pk_aprendiz PRIMARY KEY (numero_documento,sigla,numero_ficha),

	CONSTRAINT fk_aprendiz-cliente FOREIGN KEY (numero_documento) REFERENCES cliente.cliente (numero_documento),

);








create table ficha.ficha_planeacion (
	numero_ficha varchar (100),
	codigo_planeaceon varchar (40),
	estado varchar (40),
);

create table ficha.ficha_has_trimestre (
	numero_ficha varchar(100),
	ficha_jornada varchar (20),
	nivel varchar (40),
	Nombre_trimestre int (11),
);





create table ficha.resultado_vistos (
	codigo_resultado varchar (40),
	codigo_competencia varchar(50),
	codigo_programa varchar (50),
	version_programa varchar (40),
	numero_ficha varchar (100),
	sigla_jornada varchar (20),
	nivel varchar (40),
	nombre_trimestre int (11),
	codigo_planeacon varchar(40)
);

