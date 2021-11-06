/*  CONSTRAINT Pk_cliente PRIMARY KEY (id),
    CONSTRAINT uk_cliente UNIQUE (numero_documento, id_tipo_documento),
	CONSTRAINT fk_tido_clie FOREIGN KEY (id_tipo_documento) REFERENCES tipo_documento (id);
	*/

CREATE SCHEMA programa;

create table programa.nivel_formacion (
	nivel varchar(40),
	estado varchar(40),

	CONSTRAINT Pk_nivel_formacion PRIMARY KEY (nivel)
);

create table programa.planeacion (
	codigo varchar (40),
	estado varchar(40),
	fecha date,

	CONSTRAINT Pk_planeacion PRIMARY KEY (codigo) 

);




create table programa.programa (
	codigo_programa varchar (50),
	version_programa varchar(40),
	nombre varchar (500),
	sigla varchar(40),
	estado varchar(40),
	nivel varchar (40),

	CONSTRAINT Pk_programa PRIMARY KEY (codigo_programa,version_programa),
	CONSTRAINT fk_programa_nivel_deformacion FOREIGN KEY (nivel) REFERENCES programa.nivel_formacion (nivel)
);



create table programa.competencia (
	codigo_competencia varchar(50),
	denominacion varchar (1000),
	codigo_programa varchar (50),
	version_programa varchar (40),

	CONSTRAINT Pk_competencia PRIMARY KEY (codigo_competencia,codigo_programa,version_programa),
	CONSTRAINT fk_programa_competencias FOREIGN KEY (version_programa) REFERENCES programa.programa (version_programa)
	CONSTRAINT fk_programa_competencias FOREIGN KEY () REFERENCES programa.programa (id)

);

create table programa.resultado_aprendizaje (
	codigo_resultado varchar (40),
	denominacion varchar (1000),
	codigo_competencia varchar(50),
	codigo_programa varchar (50),
	version_programa varchar (40),

	CONSTRAINT Pk_resultado_aprendizaje PRIMARY KEY (codigo_resultado,codigo_competencia,codigo_programa,version_programa),
);

create table programa.planeaion_trimestre (
	codigo_resultado varchar(40),
	codigo_competencia varchar (50),
	codigo_programa varchar (50),
	version_programa varchar (40),
	sigla_jornada varchar (20),
	nivel varchar (40),
	nombre_trimestre int(11),
	codigo_planeacion varchar(40),

	CONSTRAINT Pk_planeacion_trimestre PRIMARY KEY (codigo_resultado,codigo_competencia,codigo_programa,version_programa,sigla_jornada,nivel,nombre_trimestre,codigo_planeacion),
	CONSTRAINT fk_programa_competencias FOREIGN KEY (codigo_resultado) REFERENCES programa.programa (codigo_resultado)
	CONSTRAINT fk_programa_competencias FOREIGN KEY (codigo_competencia) REFERENCES programa.programa (codigo_competencia)
	CONSTRAINT fk_programa_competencias FOREIGN KEY (codigo_programa) REFERENCES programa.programa (codigo_programa)
	CONSTRAINT fk_programa_competencias FOREIGN KEY (version_programa) REFERENCES programa.programa (version_programa)
	CONSTRAINT fk_programa_competencias FOREIGN KEY (sigla_jornada) REFERENCES programa.programa (sigla_jornada)
	CONSTRAINT fk_programa_competencias FOREIGN KEY (nivel) REFERENCES programa.programa (nivel)
	CONSTRAINT fk_programa_competencias FOREIGN KEY (nombre_trimestre) REFERENCES programa.programa (nombre_trimestre)
	CONSTRAINT fk_programa_competencias FOREIGN KEY (codigo_planeacion) REFERENCES programa.programa (codigo_planeacion)
);

create table programa.actividad_planeacion (
	codigo_resultado varchar (40),
	codigo_competencia varchar (50),
	codigo_programa varchar (50),
	version_programa varchar (40),
	sigla_jornada varchar(20),
	nivel varchar (40),
	nombre_trimestre int (11),
	nomre_fase varchar(40),
	codigo_proyecto varchar(40),
	numero_actividad int(10),
	codigo_planeacion varchar(40)
);
