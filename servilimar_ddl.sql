------ Creacion de tablas:

-- Ciudad
CREATE TABLE ciudad(
	ciudad_id INT,
	nombre_ciudad VARCHAR(100),
	codigo_postal VARCHAR(20),
	PRIMARY KEY(ciudad_id)
);

-- Condicion
CREATE TABLE condicion(
	condicion_id INT,
	nombre_condicion VARCHAR(100),
	PRIMARY KEY(condicion_id)
);

-- Servicio
CREATE TABLE servicio(
	servicio_id INT,
	nombre VARCHAR(100),
	descripcion TEXT,
	estado VARCHAR(30),
	PRIMARY KEY(servicio_id)
);

-- Tipo de usuario
CREATE TABLE tipoUsuario(
	tipoUsuario_id INT,
	nombre_tipo VARCHAR(50),
	PRIMARY KEY(tipoUsuario_id)
);

-- Medios de notificacion
CREATE TABLE medioNotificacion(
	medio_id INT,
	nombre_medio VARCHAR(50),
	PRIMARY KEY(medio_id)
);

-- Usuario
CREATE TABLE usuario(
	usuario_id INT,
	ciudad_id INT,
	condicion_id INT,
	tipoUsuario_id INT,
	nombre VARCHAR(100),
	apellido VARCHAR(100),
	PRIMARY KEY(usuario_id),
	FOREIGN KEY(ciudad_id) REFERENCES ciudad(ciudad_id),
	FOREIGN KEY(condicion_id) REFERENCES condicion(condicion_id),
	FOREIGN KEY(tipoUsuario_id) REFERENCES tipoUsuario(tipoUsuario_id)
);

-- Usuario y medio de notificacion
CREATE TABLE usuarioMedio(
	usuarioMedio_id INT,
	usuario_id INT,
	medio_id INT,
	contacto VARCHAR(100),
	PRIMARY KEY(usuarioMedio_id),
	FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id),
	FOREIGN KEY(medio_id) REFERENCES medioNotificacion(medio_id)
);

-- Empleado
CREATE TABLE empleado(
	empleado_id INT,
	usuario_id INT,
	cargo VARCHAR(100),
	departamento VARCHAR(100),
	PRIMARY KEY(empleado_id),
	FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id)
);

-- Turno
CREATE TABLE turno(
	turno_id INT,
	usuario_id INT,
	servicio_id INT,
	empleado_id INT,
	fecha DATE,
	hora_inicio TIME,
	hora_fin TIME,
	estado VARCHAR(50),
	PRIMARY KEY(turno_id),
	FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id),
	FOREIGN KEY(servicio_id) REFERENCES servicio(servicio_id),
	FOREIGN KEY(empleado_id) REFERENCES empleado(empleado_id)
);

-- Notificacion
CREATE TABLE notificacion(
	notificacion_id INT,
	usuario_id INT,
	medio_id INT,
	mensaje TEXT,
	fecha_envio TIME,
	estado VARCHAR(50),
	PRIMARY KEY(notificacion_id),
	FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id),
	FOREIGN KEY(medio_id) REFERENCES medioNotificacion(medio_id)
);