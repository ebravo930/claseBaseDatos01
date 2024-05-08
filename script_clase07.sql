CREATE DATABASE ProveedoresDB;
USE ProveedoresDB;

-- Crear tabla de empresas
CREATE TABLE Empresa (
    RutEmpresa VARCHAR(20) PRIMARY KEY,
    NombreEmpresa VARCHAR(255),
    Direccion VARCHAR(255)
);

-- Crear tabla de documentos de proveedores
CREATE TABLE DocumentoProveedor (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    RutEmpresa VARCHAR(20),
    TipoDocumento VARCHAR(50),
    FolioDocumento INT,
    FechaEmision DATE,
    FechaCarga DATE,
    FOREIGN KEY (RutEmpresa) REFERENCES Empresa(RutEmpresa)
);

-- Crear tabla de usuarios
CREATE TABLE Usuario (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(50),
    Email VARCHAR(100),
    Rol VARCHAR(50)
);

-- Crear tabla de registros
CREATE TABLE Registro (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    ID_Usuario INT,
    ID_Documento INT,
    Accion VARCHAR(50),
    FechaRegistro DATETIME,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID),
    FOREIGN KEY (ID_Documento) REFERENCES DocumentoProveedor(ID)
);

-- Insertar datos de prueba en la tabla Empresa
INSERT INTO Empresa (RutEmpresa, NombreEmpresa, Direccion) VALUES
('12345678-9', 'Empresa A', 'Av. Principal 123'),
('98765432-1', 'Empresa B', 'Calle Secundaria 456');

-- Insertar datos de prueba en la tabla DocumentoProveedor
INSERT INTO DocumentoProveedor (RutEmpresa, TipoDocumento, FolioDocumento, FechaEmision, FechaCarga) VALUES
('12345678-9', 'Factura', 1001, '2024-04-01', '2024-04-05'),
('12345678-9', 'Boleta', 1002, '2024-04-03', '2024-04-05'),
('98765432-1', 'Factura', 2001, '2024-04-02', '2024-04-06');

-- Insertar datos de prueba en la tabla Usuario
INSERT INTO Usuario (Nombre, Email, Rol) VALUES
('Juan Perez', 'juan.perez@example.com', 'Administrador'),
('Maria Gomez', 'maria.gomez@example.com', 'Analista');

-- Insertar datos de prueba en la tabla Registro
INSERT INTO Registro (ID_Usuario, ID_Documento, Accion, FechaRegistro) VALUES
(1, 1, 'Carga', '2024-04-05 10:00:00'),
(2, 2, 'Carga', '2024-04-05 10:30:00'),
(1, 3, 'Carga', '2024-04-06 11:00:00');
