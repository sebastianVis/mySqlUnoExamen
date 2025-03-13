Listar todos los libros disponibles
```sql
SELECT titulo
FROM libros
WHERE disponibilidad = TRUE;

```
Buscar libros por género
```sql
SELECT titulo, genero
FROM libros
WHERE genero = 'terror';
```
Obtener información de un libro por ISBN
```sql
SELECT titulo, genero, disponibilidad
FROM libros
WHERE ISBN = '23';
```
Contar el número de libros en la biblioteca
```sql
SELECT COUNT(libro_id) AS libros_en_biblioteca
FROM libros
WHERE disponibilidad = TRUE;
```
Listar todos los autores
```sql
SELECT nombre
FROM autores;
```
Buscar autores por nombre
```sql
SELECT nombre
FROM autores
WHERE nombre = 'juan';
```
Obtener todos los libros de un autor específico
```sql
SELECT l.titulo, a.nombre
FROM autores AS a
INNER JOIN libros AS l ON a.autor_id = l.autor_id
WHERE a.nombre = 'jose' ;
```
Listar todas las ediciones de un libro
```sql

SELECT e.nombre, l.titulo
FROM libros AS l
INNER JOIN edicion AS e ON l.libro_id = e.libro_id
WHERE l.titulo = 'lunadepluton';

```
Obtener la última edición de un libro
```sql
SELECT e.nombre, l.titulo
FROM libros AS l
INNER JOIN edicion AS e ON l.libro_id = e.libro_id
WHERE l.titulo = 'lunadepluton'
LIMIT 1;
```
Contar cuántas ediciones hay de un libro específico
```sql
SELECT l.titulo, COUNT(e.nombre) AS ediciones_del_libro
FROM libros AS l
INNER JOIN edicion AS e ON l.libro_id = e.libro_id
WHERE l.titulo = 'lunadepluton';
```
Listar todas las transacciones de préstamo
```sql
SELECT b.nombre, r.registro_id
FROM bibliotecarios AS b
INNER JOIN registro AS r ON b.bibliotecario_id = r.bibliotecario_id;
```
Obtener los libros prestados actualmente
```sql
SELECT titulo AS libro_prestado
FROM libros
WHERE disponibilidad = FALSE;
```
Contar el número de transacciones de un miembro específico
```sql
SELECT b.nombre, COUNT(r.registro_id) AS numero_transacciones
FROM bibliotecarios AS b
INNER JOIN registro AS r ON b.bibliotecario_id = r.bibliotecario_id
WHERE b.nombre = 'bendiciondedios';
```
Listar todos los miembros de la biblioteca
```sql
SELECT nombre
FROM bibliotecarios;
```
Buscar un miembro por nombre:
```sql
SELECT nombre AS nombre_encontrado
FROM bibliotecarios
WHERE nombre = 'josearturo';
```
Obtener las transacciones de un miembro específico
```sql
SELECT b.nombre AS miembro, COUNT(r.registro_id) AS numero_transacciones
FROM registro AS r
INNER JOIN bibliotecarios AS b ON r.bibliotecario_id = b.bibliotecario_id
WHERE b.nombre = 'bendiciondedios';
```
Listar todos los libros y sus autores
```sql
SELECT l.titulo, a.nombre
FROM autores AS a
INNER JOIN libros AS l ON a.autor_id = l.autor_id;
```
Obtener el historial de préstamos de un libro específico
```sql
SELECT l.titulo, rd.fecha
FROM libros AS l
INNER JOIN registro_detalles AS rd ON l.libro_id = rd.libro_id
WHERE l.titulo = 'lunadepluton';
```
Contar cuántos libros han sido prestados en total
```sql
SELECT COUNT(libro_id) AS libros_en_biblioteca
FROM libros
WHERE disponibilidad = FALSE;
```
Listar todos los libros junto con su última edición y estado de disponibilidad
```sql
SELECT l.titulo, e.nombre, l.disponibilidad
FROM edicion AS e
INNER JOIN libros AS l ON e.libro_id = l.libro_id;
```
