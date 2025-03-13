INSERT INTO biblioteca(nombre, direccion, nit) VALUES ('bendiciondedios','micasa','3');

INSERT INTO autores(rut, nombre, direccion, telefono) VALUES ('1234','jose','campuslands',''),
('12346','juan','campuslands',''),('12357','juanito','campuslands',''),('12','juancho','campuslands',''),('1248','juanjose','campuslands',''),
('safd','supapa','campuslands',''),('1','nicolas','campuslands',''),('2','merlo','campuslands',''),('3','morli','campuslands','');

INSERT INTO libros(autor_id, titulo, ISBN, genero, disponibilidad) VALUES (1,'lunadepluton','23', 'terror' ,false), (2,'cammpusito','32', 'terror' ,false),
(2,'harrto', 'comedia', '93',false),(1,'mustafa','19023879', 'comedia',true),(2,'campollo','campollo', 'comedia', true);

INSERT INTO clientes(nombre, direccion, telefono) VALUES ('jose','campollo','123123'),('carlos','campollo',''),
('miguel','campollo',''),
('mamarre','campollo',''),
('comolomueve','campollo',''),
('esamuchachota','campollo',''),
('rebotarebota','campollo','');

INSERT INTO bibliotecarios(biblioteca_id, nombre, direccion, telefono) VALUES (1,'bendiciondedios','',''),(1,'josearturo','','');

INSERT INTO registro(cliente_id, bibliotecario_id) VALUES (1,1), (1,1), (2,1);

INSERT INTO edicion(libro_id, nombre, valor, publicacion) VALUES (1,'roblox',100,'2025-01-01'),(1,'minecraft',90, '2025-01-01'),(2,'minecraft',90, '2025-01-01'),(2,'rublo',90, '2025-01-01');
