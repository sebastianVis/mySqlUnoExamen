INSERT INTO biblioteca(nombre, direccion, nit) VALUES ('bendiciondedios','micasa','3');

INSERT INTO autores(rut, nombre, direccion, telefono) VALUES ('1234','jose','campuslands',''),
('12346','juan','campuslands',''),('12357','juanito','campuslands',''),('12','juancho','campuslands',''),('1248','juanjose','campuslands',''),
('safd','supapa','campuslands',''),('1','nicolas','campuslands',''),('2','merlo','campuslands',''),('3','morli','campuslands','');

INSERT INTO libros(autor_id, titulo, ISBN, disponibilidad) VALUES ('1','lunadepluton','23',false), ('2','cammpusito','32',false),
('3','harrto','93',false),('1','mustafa','19023879',true),('2','campollo','campollo',true);

INSERT INTO clientes(nombre, direccion, telefono) VALUES ('jose','campollo','123123'),('carlos','campollo',''),
('miguel','campollo',''),
('mamarre','campollo',''),
('comolomueve','campollo',''),
('esamuchachota','campollo',''),
('rebotarebota','campollo','');

INSERT INTO bibliotecarios(biblioteca_id, nombre, direccion, telefono) VALUES (1,'bendiciondedios','',''),(1,'josearturo','','');

