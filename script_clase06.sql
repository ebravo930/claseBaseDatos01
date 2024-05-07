CREATE DATABASE Libreria;
USE Libreria;

CREATE TABLE Libros (
    ID_Libro INT PRIMARY KEY,
    Titulo VARCHAR(255),
    Autor VARCHAR(100),
    Precio DECIMAL(10, 2),
    Categoria VARCHAR(50)
);

CREATE TABLE Clientes (
    ID_Cliente INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Email VARCHAR(100),
    Ciudad VARCHAR(100)
);

CREATE TABLE Ventas (
    ID_Venta INT PRIMARY KEY,
    ID_Libro INT,
    ID_Cliente INT,
    Fecha DATE,
    Cantidad INT,
    FOREIGN KEY (ID_Libro) REFERENCES Libros(ID_Libro),
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente)
);

-- Insertar datos dummy en la tabla Libros
INSERT INTO Libros (ID_Libro, Titulo, Autor, Precio, Categoria) VALUES
(1, 'El señor de los anillos', 'J.R.R. Tolkien', 12.99, 'Fantasía'),
(2, 'Cien años de soledad', 'Gabriel García Márquez', 15.50, 'Novela'),
(3, 'La sombra del viento', 'Carlos Ruiz Zafón', 17.80, 'Misterio'),
(4, 'Harry Potter y la piedra filosofal', 'J.K. Rowling', 10.20, 'Fantasía'),
(5, '1984', 'George Orwell', 14.40, 'Ficción');

-- Insertar datos dummy en la tabla Clientes
INSERT INTO Clientes (ID_Cliente, Nombre, Email, Ciudad) VALUES
(1, 'Juan Perez', 'juan.perez@example.com', 'Madrid'),
(2, 'María López', 'maria.lopez@example.com', 'Barcelona'),
(3, 'Carlos Jimenez', 'carlos.jimenez@example.com', 'Sevilla'),
(4, 'Lucia Gomez', 'lucia.gomez@example.com', 'Valencia');

-- Insertar datos dummy en la tabla Ventas
INSERT INTO Ventas (ID_Venta, ID_Libro, ID_Cliente, Fecha, Cantidad) VALUES
(1, 1, 1, '2024-05-01', 1),
(2, 1, 2, '2024-05-01', 2),
(3, 2, 3, '2024-05-02', 1),
(4, 3, 4, '2024-05-02', 1),
(5, 3, 1, '2024-05-03', 1),
(6, 4, 2, '2024-05-03', 1),
(7, 5, 3, '2024-05-03', 2),
(8, 1, 4, '2024-05-04', 1),
(9, 2, 1, '2024-05-04', 3),
(10, 4, 2, '2024-05-05', 2);
