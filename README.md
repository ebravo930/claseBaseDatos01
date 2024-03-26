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
1. ``` SELECT * FROM Libros;```
2. ``` SELECT Autores.Nombre, Autores.Nacionalidad FROM Autores JOIN Libros ON Autores.ID = Libros.Autor_ID WHERE Libros.ID = 2;```
3. ``` SELECT Libros.Titulo, Autores.Nombre FROM Libros JOIN Autores ON Libros.Autor_ID = Autores.ID;```
4. ``` UPDATE Autores SET Nacionalidad = 'Argentino - Francés' WHERE ID = 3;```
5. ``` INSERT INTO Autores (ID, Nombre, Nacionalidad) VALUES (4, 'Isabel Allende', 'Chilena');```
6. ``` DELETE FROM Libros WHERE ID = 1;```

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
1. ``` SELECT * FROM Productos WHERE Categoría_ID = (SELECT ID FROM Categorías WHERE Nombre = 'Electrónica');```
2. ``` SELECT * FROM Pedidos WHERE Cliente_ID = 1;```
3. ``` UPDATE Productos SET Stock = Stock - 5 WHERE ID = 3;```
4. ``` INSERT INTO Clientes (Nombre, Email, Dirección) VALUES ('Ana López', 'ana@email.com', 'Calle 123, Ciudad');```

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


## Clase 03
En esta sesión, continuaremos nuestra exploración de las bases de datos con un enfoque en la implementación práctica de una tienda en línea. Aprenderemos a manejar y manipular datos relacionados con productos, clientes, ventas, y detalles de ventas.

Base de Datos: TiendaOnlineV2
Para esta clase, utilizaremos la base de datos TiendaOnlineV2, la cual incluye las siguientes tablas y relaciones:

Estructura de la Base de Datos:
Producto

ProductoID (Identificador único del producto)
Nombre (Nombre del producto)
Precio (Precio del producto)
Stock (Cantidad disponible en stock)
Cliente

ClienteID (Identificador único del cliente)
Nombre (Nombre del cliente)
Email (Correo electrónico del cliente)
Telefono (Número de teléfono del cliente)
Venta

VentaID (Identificador único de la venta)
ClienteID (Identificador del cliente que realiza la venta)
FechaVenta (Fecha en que se realiza la venta)
Venta_Detalle

VentaDetalleID (Identificador único del detalle de la venta)
VentaID (Identificador de la venta)
ProductoID (Identificador del producto vendido)
Cantidad (Cantidad del producto vendido)

## Ejercicios:
Basándote en el script de creación de TiendaOnlineV2 y los scripts de inserción proporcionados, realiza los siguientes ejercicios:

1. Consulta de Ventas por Cliente:
Muestra todas las ventas realizadas por el cliente con ID 1.

2. Consulta de Detalles de una Venta:
Muestra todos los detalles de la venta con ID 1.

3. Actualización de Stock de Producto:
Actualiza el stock del producto con ID 3, restando 5 unidades.

4. Inserción de un Nuevo Producto:
Agrega un nuevo producto a la tabla "Producto" con los siguientes datos:

Nombre: "Nuevo Producto"
Precio: 99.99
Stock: 50
Eliminación de una Venta:
Elimina la venta con ID 2 de la tabla "Venta".

## Respuestas de Ejemplo:
1. ``` SELECT * FROM Venta WHERE ClienteID = 1;```
2. ``` SELECT * FROM Venta_Detalle WHERE VentaID = 1;```
3. ``` UPDATE Producto SET Stock = Stock - 5 WHERE ProductoID = 3;```
4. ``` INSERT INTO Producto (Nombre, Precio, Stock) VALUES ('Nuevo Producto', 99.99, 50);```
5. ``` DELETE FROM Venta WHERE VentaID = 2;```

## Ejercicios Avanzados sin Solución:
Explora y resuelve los siguientes desafíos para profundizar tu comprensión:

1. Consulta de Productos Más Vendidos:
Muestra los productos más vendidos, ordenados por cantidad vendida.

2. Consulta de Ventas por Fecha:
Muestra todas las ventas realizadas en un rango de fechas específico.

3. Actualización de Precios:
Incrementa el precio de todos los productos en un 10%.

4. Inserción de una Venta Completa:
Agrega una nueva venta, incluyendo detalles de venta, para un cliente existente.

## Clase 04
En esta sesión, avanzaremos en nuestra comprensión de las bases de datos, centrándonos en consultas más complejas y operaciones de actualización. La sesión está diseñada para brindarte habilidades prácticas en la manipulación de datos para un sistema de gestión de biblioteca.

Base de Datos: BibliotecaV3
Para esta clase, trabajaremos con la base de datos BibliotecaV3, la cual incluye las siguientes tablas y relaciones:

Estructura de la Base de Datos:
Libro

LibroID (Identificador único del libro)
Titulo (Título del libro)
Autor (Autor del libro)
AñoPublicacion (Año de publicación del libro)
Stock (Cantidad disponible en stock)
Prestamo

PrestamoID (Identificador único del préstamo)
LibroID (Identificador del libro prestado)
ClienteID (Identificador del cliente que realiza el préstamo)
FechaPrestamo (Fecha en que se realiza el préstamo)
FechaDevolucion (Fecha en que se devuelve el libro)
Cliente

ClienteID (Identificador único del cliente)
Nombre (Nombre del cliente)
Email (Correo electrónico del cliente)

## Ejercicios:
Basándote en el script de creación de BibliotecaV3 y los scripts de inserción proporcionados, realiza los siguientes ejercicios:

1. Consulta de Préstamos por Cliente:
Muestra todos los préstamos realizados por el cliente con ID 2.

2. Consulta de Libros Prestados:
Muestra todos los libros que actualmente están prestados y no han sido devueltos (FechaDevolucion es NULL).

3. Actualización de Stock de Libro:
Actualiza el stock del libro con ID 4, sumando 2 unidades más.

4. Inserción de un Nuevo Cliente:
Agrega un nuevo cliente a la tabla "Cliente" con los siguientes datos:

Nombre: "Juan Pérez"
Email: "juan.perez@example.com"
5. Eliminación de un Préstamo:
Elimina el préstamo con ID 3 de la tabla "Prestamo".

## Respuestas de Ejemplo:
1. SELECT * FROM Prestamo WHERE ClienteID = 2;
2. SELECT * FROM Prestamo WHERE FechaDevolucion IS NULL;
3. UPDATE Libro SET Stock = Stock + 2 WHERE LibroID = 4;
4. INSERT INTO Cliente (Nombre, Email) VALUES ('Juan Pérez', 'juan.perez@example.com');
5. DELETE FROM Prestamo WHERE PrestamoID = 3;

## Ejercicios Avanzados sin Solución:
Profundiza tu comprensión con estos desafíos:

1. Consulta de Libros Nunca Prestados:
Muestra los libros que nunca han sido prestados.

2. Consulta de Préstamos Expirados:
Muestra todos los préstamos cuya fecha de devolución ha pasado pero el libro no ha sido devuelto.

3. Actualización Masiva de Stock:
Incrementa el stock de todos los libros publicados antes del año 2000 en 5 unidades.

4. Inserción de un Préstamo Completo:
Agrega un nuevo préstamo, incluyendo la actualización del stock del libro prestado, para un cliente existente.