CREATE DATABASE TiendaOnline;

USE TiendaOnline;

SET DATEFORMAT 'YMD'

CREATE TABLE Productos (
    ID INT PRIMARY KEY IDENTITY,
    Nombre VARCHAR(100),
    Descripción VARCHAR(255),
    Precio DECIMAL(10, 2),
    Stock INT,
    Categoría_ID INT,
    FOREIGN KEY (Categoría_ID) REFERENCES Categorías(ID)
);

CREATE TABLE Categorías (
    ID INT PRIMARY KEY IDENTITY,
    Nombre VARCHAR(100)
);

CREATE TABLE Clientes (
    ID INT PRIMARY KEY IDENTITY,
    Nombre VARCHAR(100),
    Email VARCHAR(255),
    Dirección VARCHAR(255)
);

CREATE TABLE Pedidos (
    ID INT PRIMARY KEY IDENTITY,
    Cliente_ID INT,
    Producto_ID INT,
    Cantidad INT,
    Fecha_Pedido DATE,
    FOREIGN KEY (Cliente_ID) REFERENCES Clientes(ID),
    FOREIGN KEY (Producto_ID) REFERENCES Productos(ID)
);

-- INSERTAR DATOS DE EJEMPLO
INSERT INTO Categorías ( Nombre) VALUES
( 'Electrónica'),
( 'Ropa'),
( 'Hogar');

INSERT INTO Productos (Nombre, Descripción, Precio, Stock, Categoría_ID) VALUES
( 'Smartphone', 'Teléfono inteligente de última generación', 599.99, 50, 1),
( 'Televisor', 'Televisor LED de 55 pulgadas', 799.99, 30, 1),
( 'Camisa', 'Camisa de manga larga para hombre', 29.99, 100, 2),
( 'Sofá', 'Sofá de tres plazas color gris', 499.99, 10, 3);

INSERT INTO Clientes ( Nombre, Email, Dirección) VALUES
( 'Juan Pérez', 'juan@email.com', 'Calle 123, Ciudad'),
( 'María López', 'maria@email.com', 'Av. Principal, Pueblo'),
( 'Carlos Martínez', 'carlos@email.com', 'Plaza Mayor, Ciudad');

INSERT INTO Pedidos ( Cliente_ID, Producto_ID, Cantidad, Fecha_Pedido) VALUES
( 1, 1, 2, '2024-03-10'),
( 2, 3, 1, '2024-03-11'),
( 3, 2, 1, '2024-03-12');
