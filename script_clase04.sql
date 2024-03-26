CREATE DATABASE BibliotecaV3 

USE BibliotecaV3 

SET DATEFORMAT 'YMD'

-- Creación de las tablas
CREATE TABLE Libro (
    LibroID INT IDENTITY(1,1) PRIMARY KEY,
    Titulo VARCHAR(255),
    Autor VARCHAR(255),
    AñoPublicacion INT,
    Stock INT
);

CREATE TABLE Cliente (
    ClienteID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(255),
    Email VARCHAR(255)
);

CREATE TABLE Prestamo (
    PrestamoID INT IDENTITY(1,1) PRIMARY KEY,
    LibroID INT,
    ClienteID INT,
    FechaPrestamo DATE,
    FechaDevolucion DATE,
    FOREIGN KEY (LibroID) REFERENCES Libro(LibroID),
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID)
);

-- Inserción de datos dummy
-- Libros
INSERT INTO Libro (Titulo, Autor, AñoPublicacion, Stock) VALUES
('Cien Años de Soledad', 'Gabriel García Márquez', 1967, 3),
('1984', 'George Orwell', 1949, 5),
('El Principito', 'Antoine de Saint-Exupéry', 1943, 4),
('Historia de dos ciudades', 'Charles Dickens', 1859, 2);

-- Clientes
INSERT INTO Cliente (Nombre, Email) VALUES
('Ana Ruiz', 'ana.ruiz@example.com'),
('Carlos Gimenez', 'carlos.gimenez@example.com'),
('Luisa Pérez', 'luisa.perez@example.com');

-- Préstamos
INSERT INTO Prestamo (LibroID, ClienteID, FechaPrestamo, FechaDevolucion) VALUES
(1, 1, '2023-01-10', '2023-01-24'),
(2, 2, '2023-02-15', NULL),
(3, 3, '2023-03-20', '2023-04-05'),
(4, 1, '2023-04-10', NULL);

