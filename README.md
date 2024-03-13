# Fundamentos de Bases de Datos

**Docente:** Eugenio Bravo

## Clase 01

En la primera clase, nos sumergiremos en los conceptos fundamentales de las bases de datos y exploraremos su importancia en el ámbito organizacional. Comenzaremos por comprender qué son las bases de datos y cómo los Sistemas de Gestión de Bases de Datos (DBMS) desempeñan un papel crucial en la gestión eficiente de los datos en las empresas.

## Ejercicios:

Usando el script de "script_clase 01.sql"

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


## Clase 02
En esta clase, profundizaremos en el modelado de bases de datos y aprenderemos sobre relaciones más complejas entre entidades. También exploraremos operaciones avanzadas como las transacciones y las vistas en SQL.

## Base de Datos
Para esta clase, utilizaremos una base de datos de una tienda en línea que gestiona productos, categorías, clientes y pedidos.

Estructura de la Base de Datos:
Productos:

ID (Identificador único del producto)
Nombre (Nombre del producto)
Descripción (Descripción del producto)
Precio (Precio del producto)
Stock (Cantidad disponible en stock)
Categoría_ID (Identificador único de la categoría del producto)
Categorías:

ID (Identificador único de la categoría)
Nombre (Nombre de la categoría)
Clientes:

ID (Identificador único del cliente)
Nombre (Nombre del cliente)
Email (Correo electrónico del cliente)
Dirección (Dirección del cliente)
Pedidos:

ID (Identificador único del pedido)
Cliente_ID (Identificador único del cliente que realizó el pedido)
Producto_ID (Identificador único del producto pedido)
Cantidad (Cantidad de productos pedidos)
Fecha_Pedido (Fecha en que se realizó el pedido)

## Ejercicios:

Usando el script de "script_clase 01.sql"

Usando el script de creación de la base de datos proporcionado, resuelve los siguientes ejercicios:

1. Consulta de Productos por Categoría:
Muestra todos los productos de la categoría "Electrónica".

2. Consulta de Pedidos de un Cliente:
Muestra todos los pedidos realizados por el cliente con ID 1.

3. Actualización de Stock:
Reduce el stock del producto con ID 3 en 5 unidades.

4. Inserción de Cliente:
Agrega un nuevo cliente a la tabla "Clientes" con los siguientes datos:

Nombre: "Ana López"
Email: "ana@email.com"
Dirección: "Calle 123, Ciudad"
Eliminación de Pedido:
Elimina el pedido con ID 2 de la tabla "Pedidos".

## Respuestas:
1. ```sql SELECT * FROM Productos WHERE Categoría_ID = (SELECT ID FROM Categorías WHERE Nombre = 'Electrónica');```
2. ```sql SELECT * FROM Pedidos WHERE Cliente_ID = 1;```
3. ```sql UPDATE Productos SET Stock = Stock - 5 WHERE ID = 3;```
4. ```sql INSERT INTO Clientes (Nombre, Email, Dirección) VALUES ('Ana López', 'ana@email.com', 'Calle 123, Ciudad');```

## Ejercicios sin solución:
1. Consulta de Productos por Precio:
Muestra todos los productos con un precio superior a $100.

2. Consulta de Clientes por Ciudad:
Muestra todos los clientes que viven en la ciudad de "Barcelona".

3. Actualización de Precio:
Incrementa el precio del producto con ID 4 en un 10%.

4. Inserción de Pedido:
Agrega un nuevo pedido a la tabla "Pedidos" con los siguientes datos:

Cliente_ID: 3
Producto_ID: 2
Cantidad: 2
Fecha_Pedido: (fecha actual)
Eliminación de Cliente:
Elimina el cliente con ID 2 de la tabla "Clientes".