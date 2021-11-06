/*PRIMARY KEY (id),
    CONSTRAINT uk_cliente UNIQUE (numero_documento, id_tipo_documento),
	CONSTRAINT fk_tido_clie FOREIGN KEY (id_tipo_documento) REFERENCES tipo_documento (id);
	*/



create SCHEMA cliente;

create table cliente.Rol (
	name_rol varchar(50),

	CONSTRAINT PK_rol PRIMARY KEY (name_rol)
);

create table cliente.tipo_documento (
	sigla varchar (10),
	nombre_documento varchar (100),
	estado varchar (40),

	CONSTRAINT PK_tipoDocumento PRIMARY KEY (sigla),
	CONSTRAINT uk_tipodocumento UNIQUE (nombre_documento),

);

create table cliente.customer_user (
	login varchar (50),
	password varchar(60),
	email varchar(254) unique,
	activated int(11) notnull,
	lang_key varchar(6) notnull,
	image_url (256),
	activation_key varchar (20),
	reset_date timestamp,

	CONSTRAINT PK_customerUser PRIMARY KEY (login)
);

create table cliente.user_aurhority (
	name_rol varchar(50),
	login varchar(50),

	CONSTRAINT Pk_user_Aurority PRIMARY KEY (name_rol,login)
	CONSTRAINT FK_rol-user_aurhority FOREIGN KEY (name_rol) REFERENCES cliente.Rol (name_rol)
	CONSTRAINT FK_customer_user-user_aurhority FOREIGN KEY (login) REFERENCES cliente.customer_user (login)
);

create table cliente.cliente (
	numero_documento varchar (50),
	primer_nombre varchar (50),
	segundo_nombre varchar (50),
	primer_apellido varchar (50),
	segundo_apelido varchar (50),
	sigla varchar (10),
	login varchar (50),

	CONSTRAINT PK_cliente PRIMARY KEY (numero_documento,sigla),
	CONSTRAINT uk_login UNIQUE (login),
	CONSTRAINT fk_tpoDoc_cliente FOREIGN KEY (sigla) REFERENCES cliente.tipo_documento (sigla),
	CONSTRAINT fk_CustomerUser_cliente FOREIGN KEY (login) REFERENCES cliente.customer_user (login)
);






