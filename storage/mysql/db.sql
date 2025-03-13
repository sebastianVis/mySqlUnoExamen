CREATE DATABASE biblioteca_campus;

USE biblioteca_campus;

CREATE TABLE biblioteca(
    biblioteca_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30),
    direccion VARCHAR(30),
    nit VARCHAR(20)
);

CREATE TABLE bibliotecas(
    biblioteca_id INT,
    CONSTRAINT bibliotecas_biblioteca_fk FOREIGN KEY (biblioteca_id) REFERENCES biblioteca(biblioteca_id)
);

CREATE TABLE clientes(
    cliente_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    direccion VARCHAR(30),
    telefono VARCHAR(20)
);

CREATE TABLE bibliotecarios(
    bibliotecario_id INT PRIMARY KEY AUTO_INCREMENT,
    biblioteca_id INT,
    nombre VARCHAR(50),
    direccion VARCHAR(30),
    telefono VARCHAR(20),
    CONSTRAINT bibliotecarios_biblioteca FOREIGN KEY (biblioteca_id) REFERENCES biblioteca(biblioteca_id)
);

CREATE TABLE registro(
    registro_id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    bibliotecario_id INT,
    CONSTRAINT clienteid_cliente_fk FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
    CONSTRAINT bibliotecarioid_bibliotecario_fk FOREIGN KEY (bibliotecario_id) REFERENCES bibliotecarios(bibliotecario_id)
);

CREATE TABLE autores(
    autor_id INT PRIMARY KEY AUTO_INCREMENT,
    rut VARCHAR(20),
    nombre VARCHAR(50),
    direccion VARCHAR(30),
    telefono VARCHAR(20)
);

CREATE TABLE libros(
    libro_id INT PRIMARY KEY AUTO_INCREMENT,
    autor_id INT,
    titulo VARCHAR(30),
    ISBN VARCHAR(20),
    genero VARCHAR(20),
    disponibilidad BOOLEAN,
    CONSTRAINT libros_autor_fk FOREIGN KEY (autor_id) REFERENCES autores(autor_id)
);

CREATE TABLE registro_detalles(
    libro_id INT,
    fecha DATE,
    registro_id INT,
    CONSTRAINT registrodetalle_libro_fk FOREIGN KEY (libro_id) REFERENCES libros(libro_id),
    CONSTRAINT registrodetalle_registro_fk FOREIGN KEY (registro_id) REFERENCES registro(registro_id)
);

CREATE TABLE edicion(
    edicion_id INT PRIMARY KEY AUTO_INCREMENT,
    libro_id INT,
    nombre VARCHAR(20),
    valor FLOAT,
    publicacion DATE,
    CONSTRAINT edicion_libro_fk FOREIGN KEY (libro_id) REFERENCES libros(libro_id)
);

CREATE TABLE editor(
    libro_id INT,
    nombre VARCHAR(50),
    direccion VARCHAR(30),
    telefono VARCHAR(20),
    nit VARCHAR(20),
    CONSTRAINT editor_libro_fk FOREIGN KEY (libro_id) REFERENCES libros(libro_id)
);

CREATE TABLE coescritor(
    coescritor_id INT PRIMARY KEY AUTO_INCREMENT,
    telefono VARCHAR(20),
    rut VARCHAR(20)
);

CREATE TABLE coescritores(
    libro_id INT,
    coescritor_id INT,
    CONSTRAINT coescritor_libro_fk FOREIGN KEY (libro_id) REFERENCES libros(libro_id),
    CONSTRAINT coescritor_coescritor_fk FOREIGN KEY (coescritor_id) REFERENCES coescritor(coescritor_id)
);
