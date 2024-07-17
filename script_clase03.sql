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


-- Clientes
INSERT INTO Cliente (Nombre, Email, Telefono, FechaNacimiento, Direccion, Rut)
VALUES ('Juan', 'a@a.cl', '+56996325814','1990-03-19','cccc','12-4')

SELECT * FROM Cliente

-- Medio de Pago
INSERT INTO MedioPago (Descripcion, Estado)
VALUES ('Debito',1)
SELECT * FROM MedioPago
-- PRODUCTO
INSERT INTO Producto (Nombre, Precio, Stock)
VALUES ('Tenedor',990,100)

-- Venta
INSERT INTO Venta (ClienteId, FechaVenta, MontoTotal, MontoIva, MontoExento, MontoNeto, TipoMoneda, MedioPagoId)
VALUES (1,'2024-06-19 19:21:00', 10000,1900,0, 8900,'CLP',1)

SELECT * FROM Venta