-- Base de Datos para Contactos y usuarios --

DROP TABLE IF EXISTS usuarios;

-- Tabla que almacenará los contactos
CREATE TABLE IF NOT EXISTS  usuarios(
    username varchar(50) NOT NULL PRIMARY KEY,
    password varchar(121) NOT NULL,
    token varchar(121) NOT NULL DEFAULT NULL,
    timestamps TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Patricio
-- Contraseña: 123456
INSERT INTO usuarios (username, password, token) VALUES ('patricio@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '');

-- Ani
-- Contrasñea: 12345
INSERT INTO usuarios (username, password, token) VALUES ('ani@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', '');


DROP TABLE IF EXISTS contactos;

-- Tabla que almacenará los registros de contactos
CREATE TABLE IF NOT EXISTS contactos (
    email TEXT PRIMARY KEY,
    nombre TEXT,
    telefono TEXT
);

INSERT INTO contactos (email, nombre, telefono) VALUES ('juan@example.com', 'Juan Pérez', '555-123-4567');

INSERT INTO contactos (email, nombre, telefono) VALUES ('maria@example.com', 'María García', '555-678-9012');
