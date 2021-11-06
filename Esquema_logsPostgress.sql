 create SCHEMA logs;
 
 create table logs.log_errores (
 	id int (10),
	nivel varchar (400),
	log_name varchar (400),
	mensaje varchar (400),
	fecha date,
	numero_documento varchar (50),
	sigla varchar (10),

	CONSTRAINT PK_log_errores PRIMARY KEY (id),
	CONSTRAINT FK_log_errores-cliente_cliente FOREIGN KEY (numero_documento) REFERENCES cliente.cliente (numero_documento),
	CONSTRAINT FK_log_errores-cliente_cliente FOREIGN KEY (sigla) REFERENCES cliente.cliente (sigla),

 );
 
 
 create table logs.log_auditoria (
 	id int (10),
	nivel varchar (400),
	log_name varchar (400),
	mensaje varchar (400),
	fecha date,
	numero_documento varchar(50),
	sigla varchar (10),

	CONSTRAINT PK_log_auditoria PRIMARY KEY (id),
	CONSTRAINT FK_log_errores-cliente_cliente FOREIGN KEY (numero_documento) REFERENCES cliente.cliente (numero_documento),
	CONSTRAINT FK_log_errores-cliente_cliente FOREIGN KEY (sigla) REFERENCES cliente.cliente (sigla),
 );