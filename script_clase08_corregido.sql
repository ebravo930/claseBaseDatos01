-- Creación de la base de datos
CREATE DATABASE TiendaOnline;

-- Usar la base de datos TiendaOnline
USE TiendaOnline;

-- Creación de tablas
CREATE TABLE Categorias (
    CategoriaID INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100)
);

CREATE TABLE Productos (
    ProductoID INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100),
    Precio DECIMAL(10, 2),
    Stock INT,
    CategoriaID INT,
    FOREIGN KEY (CategoriaID) REFERENCES Categorias(CategoriaID)
);

CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100),
    Email VARCHAR(100),
    Direccion VARCHAR(255)
);

CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY IDENTITY(1,1),
    ClienteID INT,
    Fecha DATE,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

CREATE TABLE DetallesPedido (
    DetalleID INT PRIMARY KEY IDENTITY(1,1),
    PedidoID INT,
    ProductoID INT,
    Cantidad INT,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (ProductoID) REFERENCES Productos(ProductoID)
);

-- Insertar datos en las tablas
INSERT INTO Categorias (Nombre) VALUES
('Electrónica'),
('Ropa'),
('Libros'),
('Hogar'),
('Juegos');

INSERT INTO Productos (Nombre, Precio, Stock, CategoriaID) VALUES
('Producto 1', 24.99, 55, 1),
('Producto 2', 45.99, 65, 1),
('Producto 3', 56.99, 23, 2),
('Producto 4', 35.99, 62, 2),
('Producto 5', 88.99, 32, 3),
('Producto 6', 99.99, 75, 3),
('Producto 7', 22.99, 48, 4),
('Producto 8', 44.99, 50, 4),
('Producto 9', 77.99, 65, 5),
('Producto 10', 120.99, 45, 5),
('Producto 11', 130.99, 35, 1),
('Producto 12', 140.99, 30, 2),
('Producto 13', 150.99, 25, 3),
('Producto 14', 160.99, 20, 4),
('Producto 15', 170.99, 15, 5),
('Producto 16', 180.99, 40, 1),
('Producto 17', 190.99, 45, 2),
('Producto 18', 200.99, 50, 3),
('Producto 19', 210.99, 55, 4),
('Producto 20', 220.99, 60, 5),
('Producto 21', 230.99, 20, 1),
('Producto 22', 240.99, 25, 2),
('Producto 23', 250.99, 30, 3),
('Producto 24', 260.99, 35, 4),
('Producto 25', 270.99, 40, 5),
('Producto 26', 280.99, 45, 1),
('Producto 27', 290.99, 50, 2),
('Producto 28', 300.99, 55, 3),
('Producto 29', 310.99, 60, 4),
('Producto 30', 320.99, 65, 5);

INSERT INTO Clientes (Nombre, Email, Direccion) VALUES
('Cliente 1', 'cliente1@email.com', 'Calle 123, Ciudad'),
('Cliente 2', 'cliente2@email.com', 'Av. Principal, Pueblo'),
('Cliente 3', 'cliente3@email.com', 'Plaza Mayor, Ciudad'),
('Cliente 4', 'cliente4@email.com', 'Calle 234, Ciudad'),
('Cliente 5', 'cliente5@email.com', 'Av. Secundaria, Pueblo'),
('Cliente 6', 'cliente6@email.com', 'Calle 345, Ciudad'),
('Cliente 7', 'cliente7@email.com', 'Av. Tercera, Pueblo'),
('Cliente 8', 'cliente8@email.com', 'Plaza Menor, Ciudad'),
('Cliente 9', 'cliente9@email.com', 'Calle 456, Ciudad'),
('Cliente 10', 'cliente10@email.com', 'Av. Cuarta, Pueblo'),
('Cliente 11', 'cliente11@email.com', 'Calle 567, Ciudad'),
('Cliente 12', 'cliente12@email.com', 'Av. Quinta, Pueblo'),
('Cliente 13', 'cliente13@email.com', 'Plaza Central, Ciudad'),
('Cliente 14', 'cliente14@email.com', 'Calle 678, Ciudad'),
('Cliente 15', 'cliente15@email.com', 'Av. Sexta, Pueblo'),
('Cliente 16', 'cliente16@email.com', 'Calle 789, Ciudad'),
('Cliente 17', 'cliente17@email.com', 'Av. Séptima, Pueblo'),
('Cliente 18', 'cliente18@email.com', 'Plaza Secundaria, Ciudad'),
('Cliente 19', 'cliente19@email.com', 'Calle 890, Ciudad'),
('Cliente 20', 'cliente20@email.com', 'Av. Octava, Pueblo'),
('Cliente 21', 'cliente21@email.com', 'Calle 901, Ciudad'),
('Cliente 22', 'cliente22@email.com', 'Av. Novena, Pueblo'),
('Cliente 23', 'cliente23@email.com', 'Plaza Terciaria, Ciudad'),
('Cliente 24', 'cliente24@email.com', 'Calle 012, Ciudad'),
('Cliente 25', 'cliente25@email.com', 'Av. Décima, Pueblo'),
('Cliente 26', 'cliente26@email.com', 'Calle 123, Ciudad'),
('Cliente 27', 'cliente27@email.com', 'Av. Once, Pueblo'),
('Cliente 28', 'cliente28@email.com', 'Plaza Cuarta, Ciudad'),
('Cliente 29', 'cliente29@email.com', 'Calle 234, Ciudad'),
('Cliente 30', 'cliente30@email.com', 'Av. Doce, Pueblo');

INSERT INTO Pedidos (ClienteID, Fecha) VALUES
(1, '2024-01-15'),
(2, '2024-02-20'),
(5, '2024-01-22'),
(5, '2024-03-05'),
(7, '2024-02-28'),
(9, '2024-03-15'),
(10, '2024-01-10'),
(10, '2024-03-20'),
(11, '2024-02-25'),
(13, '2024-02-05'),
(15, '2024-03-10'),
(18, '2024-01-30'),
(20, '2024-03-07'),
(23, '2024-03-22'),
(24, '2024-01-18'),
(25, '2024-02-14'),
(28, '2024-01-11'),
(29, '2024-03-25');

INSERT INTO DetallesPedido (PedidoID, ProductoID, Cantidad) VALUES
(1, 3, 2),
(1, 5, 1),
(2, 1, 1),
(2, 10, 2),
(3, 15, 1),
(3, 20, 3),
(4, 6, 1),
(4, 9, 2),
(5, 12, 2),
(6, 25, 1),
(7, 7, 1),
(7, 8, 2),
(8, 14, 1),
(9, 17, 1),
(9, 19, 2),
(10, 22, 2),
(11, 24, 1),
(12, 26, 3),
(13, 28, 1),
(14, 29, 2),
(15, 2, 3),
(15, 4, 1),
(16, 11, 1),
(17, 13, 2),
(18, 16, 2),
(18, 18, 1),
(19, 21, 2),
(20, 23, 1),
(20, 27, 2),
(21, 30, 1);
