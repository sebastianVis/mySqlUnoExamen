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
WHERE genero = 'genero_consultar';
```
Obtener información de un libro por ISBN
```sql
SELECT titulo, genero, disponibilidad
FROM libros
WHERE ISBN = 'ISBN_a_buscar';
```
Contar el número de libros en la biblioteca
```sql
SELECT COUNT(id) AS libros_en_biblioteca
FROM libros;
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
WHERE nombre = 'nombre_a_buscar';
```
Obtener todos los libros de un autor específico
```sql
SELECT l.titulo, a.nombre
FROM autores AS a
INNER JOIN libros AS l ON a.autor_id = l.autor_id
WHERE a.nombre = 'autor_libro_a_buscar' ;
```
Listar todas las ediciones de un libro
```sql

SELECT e.nombre, l.titulo
FROM libros AS l
INNER JOIN edicion AS e ON l.libro_id = e.libro_id
WHERE l.titulo = 'titulo_a_buscar_ediciones';

```
Obtener la última edición de un libro
```sql
SELECT e.nombre, l.titulo
FROM libros AS l
INNER JOIN edicion AS e ON l.libro_id = e.libro_id
ORDER BY e.publicacion DESC
WHERE l.titulo = 'titulo_a_buscar_ultima_edicion';
```
Contar cuántas ediciones hay de un libro específico
```sql
SELECT l.titulo, COUNT(e.nombre)
FROM libros AS l
INNER JOIN edicion AS e ON l.libro_id = e.libro_id
WHERE l.titulo = 'titulo_a_buscar_ediciones_especificas';
```
Listar todas las transacciones de préstamo
```sql
# Introduce aquí las consultas.
```
Obtener los libros prestados actualmente
```sql
SELECT titulo AS libro_prestado
FROM libros;
WHERE disponibilidad = FALSE;
```
Contar el número de transacciones de un miembro específico
```sql
SELECT b.nombre, COUNT(r.registro_id)
FROM bibliotecarios AS b
INNER JOIN registro AS r ON b.bibliotecario_id = r.bibliotecario_id
WHERE b.nombre = 'nombre_bibliotecario_a_buscar_transacciones';
```
Listar todos los miembros de la biblioteca
```sql
SELECT nombre
FROM bibliotecarios;
```
Buscar un miembro por nombre:
```sql
SELECT nombre
FROM bibliotecarios
WHERE nombre = 'nombre_miembro';
```
Obtener las transacciones de un miembro específico
```sql
# Introduce aquí las consultas.
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
WHERE l.titulo = 'historial_prestamo_a_buscar';
```
Contar cuántos libros han sido prestados en total
```sql
SELECT COUNT(id) AS libros_en_biblioteca
FROM libros;
WHERE disponibilidad = FALSE;
```
Listar todos los libros junto con su última edición y estado de disponibilidad
```sql
SELECT l.titulo, COUNT(e.nombre), l.disponibilidad
FROM libros AS l
INNER JOIN edicion AS e ON l.libro_id = e.libro_id:
```