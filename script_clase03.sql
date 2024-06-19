CREATE DATABASE TiendaOnlineV2;

USE TiendaOnlineV2;

SET DATEFORMAT 'YMD'

CREATE TABLE Producto (
    ProductoID INT PRIMARY KEY IDENTITY,
    Nombre VARCHAR(255),
    Precio MONEY,
    Stock INT
);

CREATE TABLE Cliente (
    ClienteID INT PRIMARY KEY IDENTITY,
    Nombre VARCHAR(255),
    Email VARCHAR(255),
    Telefono VARCHAR(50),
	FechaNacimiento DATE,
	Direccion VARCHAR(255),
	Rut VARCHAR(10)
);

CREATE TABLE MedioPago(
	MedioPagoId INT PRIMARY KEY IDENTITY,
	Descripcion VARCHAR(100),
	Estado BIT
);

CREATE TABLE Venta (
    VentaID INT PRIMARY KEY IDENTITY,
    ClienteID INT,
    FechaVenta DATETIME,
	MontoTotal MONEY,
	MontoIva MONEY,
	MontoExento MONEY,
	MontoNeto MONEY,
	TipoMoneda VARCHAR(3),
	MedioPagoId INT, 
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID),
	FOREIGN KEY (MedioPagoId) REFERENCES MedioPago(MedioPagoId)
);

CREATE TABLE Venta_Detalle (
    VentaDetalleID INT PRIMARY KEY IDENTITY,
    VentaID INT,
    ProductoID INT,
	PrecioUnitario MONEY,
    Cantidad INT,
	DescuentoPorcentaje INT,
    FOREIGN KEY (VentaID) REFERENCES Venta(VentaID),
    FOREIGN KEY (ProductoID) REFERENCES Producto(ProductoID)
);



INSERT INTO Producto (Nombre, Precio, Stock) VALUES 
('Producto 1', 11.5, 105),
('Producto 2', 12.5, 110),
('Producto 3', 13.5, 115),
('Producto 4', 14.5, 120),
('Producto 5', 15.5, 125),
('Producto 6', 16.5, 130),
('Producto 7', 17.5, 135),
('Producto 8', 18.5, 140),
('Producto 9', 19.5, 145),
('Producto 10', 20.5, 150),
('Producto 11', 21.5, 155),
('Producto 12', 22.5, 160),
('Producto 13', 23.5, 165),
('Producto 14', 24.5, 170),
('Producto 15', 25.5, 175),
('Producto 16', 26.5, 180),
('Producto 17', 27.5, 185),
('Producto 18', 28.5, 190),
('Producto 19', 29.5, 195),
('Producto 20', 30.5, 200);

INSERT INTO Cliente (Nombre, Email, Telefono) VALUES 
('Cliente 1', 'cliente1@tienda.com', '1234567891'),
('Cliente 2', 'cliente2@tienda.com', '1234567892'),
('Cliente 3', 'cliente3@tienda.com', '1234567893'),
('Cliente 4', 'cliente4@tienda.com', '1234567894'),
('Cliente 5', 'cliente5@tienda.com', '1234567895'),
('Cliente 6', 'cliente6@tienda.com', '1234567896'),
('Cliente 7', 'cliente7@tienda.com', '1234567897'),
('Cliente 8', 'cliente8@tienda.com', '1234567898'),
('Cliente 9', 'cliente9@tienda.com', '1234567899'),
('Cliente 10', 'cliente10@tienda.com', '1234567890'),
('Cliente 11', 'cliente11@tienda.com', '1234567881'),
('Cliente 12', 'cliente12@tienda.com', '1234567882'),
('Cliente 13', 'cliente13@tienda.com', '1234567883'),
('Cliente 14', 'cliente14@tienda.com', '1234567884'),
('Cliente 15', 'cliente15@tienda.com', '1234567885'),
('Cliente 16', 'cliente16@tienda.com', '1234567886'),
('Cliente 17', 'cliente17@tienda.com', '1234567887'),
('Cliente 18', 'cliente18@tienda.com', '1234567888'),
('Cliente 19', 'cliente19@tienda.com', '1234567889'),
('Cliente 20', 'cliente20@tienda.com', '1234567870');

INSERT INTO Venta (ClienteID, FechaVenta) VALUES 
(1, '2023-01-02'),
(2, '2023-01-03'),
(3, '2023-01-04'),
(4, '2023-01-05'),
(5, '2023-01-06'),
(6, '2023-01-07'),
(7, '2023-01-08'),
(8, '2023-01-09'),
(9, '2023-01-10'),
(10, '2023-01-11'),
(11, '2023-01-12'),
(12, '2023-01-13'),
(13, '2023-01-14'),
(14, '2023-01-15'),
(15, '2023-01-16'),
(16, '2023-01-17'),
(17, '2023-01-18'),
(18, '2023-01-19'),
(19, '2023-01-20'),
(20, '2023-01-21');

INSERT INTO Venta_Detalle (VentaID, ProductoID, Cantidad) VALUES 
(1, 1, 2),
(1, 2, 1),
(2, 3, 2),
(2, 4, 3),
(3, 5, 1),
(3, 6, 2),
(4, 7, 3),
(4, 8, 1),
(5, 9, 2),
(5, 10, 3),
(6, 11, 1),
(6, 12, 2),
(7, 13, 3),
(7, 14, 1),
(8, 15, 2),
(8, 16, 3),
(9, 17, 1),
(9, 18, 2),
(10, 19, 3),
(10, 20, 1),
(11, 1, 2),
(11, 2, 3),
(12, 3, 1),
(12, 4, 2),
(13, 5, 3),
(13, 6, 1),
(14, 7, 2),
(14, 8, 3),
(15, 9, 1),
(15, 10, 2),
(16, 11, 3),
(16, 12, 1),
(17, 13, 2),
(17, 14, 3),
(18, 15, 1),
(18, 16, 2),
(19, 17, 3),
(19, 18, 1),
(20, 19, 2),
(20, 20, 3);

