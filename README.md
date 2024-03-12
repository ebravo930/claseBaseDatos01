# Fundamentos de Bases de Datos

**Docente:** Eugenio Bravo

## Clase 01

En la primera clase, nos sumergiremos en los conceptos fundamentales de las bases de datos y exploraremos su importancia en el ámbito organizacional. Comenzaremos por comprender qué son las bases de datos y cómo los Sistemas de Gestión de Bases de Datos (DBMS) desempeñan un papel crucial en la gestión eficiente de los datos en las empresas.

## Ejercicios:

1. **Consulta Básica**: Mostrar todos los libros de la tabla "Libros".
2. **Consulta con Filtro**: Mostrar el nombre y nacionalidad del autor del libro con ID 2.
3. **Consulta con JOIN**: Mostrar el título del libro y el nombre del autor de todos los libros.
4. **Actualización de Datos**: Cambiar la nacionalidad del autor con ID 3 a "Argentino - Francés".
5. **Inserción de Datos**: Agregar un nuevo autor a la tabla "Autores" con ID 4, nombre "Isabel Allende" y nacionalidad "Chilena".
6. **Eliminación de Datos**: Eliminar el libro con ID 1 de la tabla "Libros".

## Respuestas: 
1. ```sql SELECT * FROM Libros;```
2. ```sql SELECT Autores.Nombre, Autores.Nacionalidad FROM Autores JOIN Libros ON Autores.ID = Libros.Autor_ID WHERE Libros.ID = 2;```
3. ```sql SELECT Libros.Titulo, Autores.Nombre FROM Libros JOIN Autores ON Libros.Autor_ID = Autores.ID;```
4. ```sql UPDATE Autores SET Nacionalidad = 'Argentino - Francés' WHERE ID = 3;```
5. ```sql INSERT INTO Autores (ID, Nombre, Nacionalidad) VALUES (4, 'Isabel Allende', 'Chilena');```
6. ```sql DELETE FROM Libros WHERE ID = 1;```

## Ejercicios sin solucion :

1. **Crear un nuevo libro** : 
Inserta un nuevo registro en la tabla "Libros" con los siguientes datos:
ID: 4
Título: "El amor en los tiempos del cólera"
Autor_ID: 1
2. **Actualizar un libro** :
Actualiza el título del libro con ID 2 a "Conversación en la catedral".
3. **Eliminar un autor**:
Elimina el autor con ID 3 de la tabla "Autores" y todos los libros asociados a este autor.
Leer todos los libros de un autor:
4. **Muestra todos los libros escritos por el autor con ID 1**
5. **Actualizar la nacionalidad de un autor** :
Cambia la nacionalidad del autor con ID 2 a "Peruana".