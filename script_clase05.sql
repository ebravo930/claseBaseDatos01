CREATE DATABASE RestauranteV1  

USE RestauranteV1  

SET DATEFORMAT 'YMD'

-- Creación de las tablas
CREATE TABLE Cliente (
    ClienteID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(255),
    Telefono VARCHAR(20),
    Email VARCHAR(255)
);

CREATE TABLE Mesa (
    MesaID INT IDENTITY(1,1) PRIMARY KEY,
    Numero INT,
    Capacidad INT
);

CREATE TABLE Menu (
    MenuID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(255),
    Descripcion TEXT,
    Precio DECIMAL(10, 2)
);

CREATE TABLE Reservacion (
    ReservacionID INT IDENTITY(1,1) PRIMARY KEY,
    ClienteID INT,
    MesaID INT,
    Fecha DATETIME,
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID),
    FOREIGN KEY (MesaID) REFERENCES Mesa(MesaID)
);

-- Inserción de datos dummy
-- Clientes
INSERT INTO Cliente (Nombre, Telefono, Email) VALUES
('Ana Torres', '555-1234', 'ana.torres@example.com'),
('Luis Navarro', '555-5678', 'luis.navarro@example.com'),
('Carmen López', '555-9101', 'carmen.lopez@example.com'),
('Sofía Martín', '555-2345', 'sofia.martin@example.com'),
('Jorge Gutiérrez', '555-6789', 'jorge.gutierrez@example.com');

-- Mesas
INSERT INTO Mesa (Numero, Capacidad) VALUES
(1, 4),
(2, 2),
(3, 6),
(4, 8),
(5, 2),
(6, 4);

-- Menús
INSERT INTO Menu (Nombre, Descripcion, Precio) VALUES
('Ensalada César', 'Lechuga, crutones, parmesano, aderezo César.', 10.00),
('Pizza Margarita', 'Tomate, mozzarella, albahaca fresca.', 12.00),
('Spaghetti Carbonara', 'Pasta, panceta, queso pecorino, huevo.', 15.00),
('Tarta de Chocolate', 'Tarta de chocolate con base de galleta.', 7.00),
('Lasaña Boloñesa', 'Lasaña con carne boloñesa y queso mozzarella.', 14.00),
('Paella Valenciana', 'Arroz con mariscos al estilo Valenciano.', 18.00);

-- Reservaciones
INSERT INTO Reservacion (ClienteID, MesaID, Fecha) VALUES
(1, 1, '2024-04-30 19:00:00'),
(2, 2, '2024-04-30 20:00:00'),
(3, 3, '2024-05-01 19:00:00'),
(4, 5, '2024-05-02 18:00:00'),
(5, 6, '2024-05-03 20:00:00'),
(NULL, 4, '2024-05-04 20:00:00'); 
