
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


USE ProveedoresDB;

-- Insertar más empresas
INSERT INTO Empresa (RutEmpresa, NombreEmpresa, Direccion) VALUES
('76543210-3', 'Empresa C', 'Avenida Tercera 789'),
('11223344-5', 'Empresa D', 'Boulevard Cuarta 101'),
('55667788-9', 'Empresa E', 'Camino Quinto 202'),
('22334455-6', 'Empresa F', 'Ruta Sexta 303');

-- Insertar más documentos de proveedores
INSERT INTO DocumentoProveedor (RutEmpresa, TipoDocumento, FolioDocumento, FechaEmision, FechaCarga) VALUES
('12345678-9', 'Factura', 1003, '2024-04-05', '2024-04-06'),
('12345678-9', 'Nota Crédito', 1004, '2024-04-06', '2024-04-07'),
('98765432-1', 'Boleta', 2002, '2024-04-04', '2024-04-07'),
('98765432-1', 'Guía Despacho', 2003, '2024-04-05', '2024-04-08'),
('76543210-3', 'Factura', 3001, '2024-04-01', '2024-04-05'),
('76543210-3', 'Nota Crédito', 3002, '2024-04-02', '2024-04-06'),
('11223344-5', 'Factura', 4001, '2024-04-03', '2024-04-07'),
('11223344-5', 'Boleta', 4002, '2024-04-04', '2024-04-08'),
('55667788-9', 'Guía Despacho', 5001, '2024-04-01', '2024-04-05'),
('55667788-9', 'Factura', 5002, '2024-04-03', '2024-04-06'),
('22334455-6', 'Boleta', 6001, '2024-04-02', '2024-04-07'),
('22334455-6', 'Nota Crédito', 6002, '2024-04-03', '2024-04-08');

-- Insertar más usuarios
INSERT INTO Usuario (Nombre, Email, Rol) VALUES
('Carlos Silva', 'carlos.silva@example.com', 'Administrador'),
('Laura Martínez', 'laura.martinez@example.com', 'Analista'),
('Pedro Torres', 'pedro.torres@example.com', 'Supervisor'),
('Ana Rivera', 'ana.rivera@example.com', 'Gerente');

-- Insertar más registros de acciones
INSERT INTO Registro (ID_Usuario, ID_Documento, Accion, FechaRegistro) VALUES
(3, 1, 'Carga', '2024-04-05 11:00:00')
INSERT INTO Registro (ID_Usuario, ID_Documento, Accion, FechaRegistro) VALUES(4, 2, 'Carga', '2024-04-05 11:30:00')
INSERT INTO Registro (ID_Usuario, ID_Documento, Accion, FechaRegistro) VALUES(1, 3, 'Modificación', '2024-04-06 12:00:00')
INSERT INTO Registro (ID_Usuario, ID_Documento, Accion, FechaRegistro) VALUES(2, 4, 'Eliminación', '2024-04-06 12:30:00')
INSERT INTO Registro (ID_Usuario, ID_Documento, Accion, FechaRegistro) VALUES(3, 5, 'Carga', '2024-04-06 13:00:00')
INSERT INTO Registro (ID_Usuario, ID_Documento, Accion, FechaRegistro) VALUES(4, 6, 'Carga', '2024-04-06 13:30:00')
INSERT INTO Registro (ID_Usuario, ID_Documento, Accion, FechaRegistro) VALUES(1, 7, 'Modificación', '2024-04-07 14:00:00')
INSERT INTO Registro (ID_Usuario, ID_Documento, Accion, FechaRegistro) VALUES(2, 8, 'Eliminación', '2024-04-07 14:30:00')
INSERT INTO Registro (ID_Usuario, ID_Documento, Accion, FechaRegistro) VALUES(3, 9, 'Carga', '2024-04-07 15:00:00')
INSERT INTO Registro (ID_Usuario, ID_Documento, Accion, FechaRegistro) VALUES(4, 10, 'Carga', '2024-04-07 15:30:00')
INSERT INTO Registro (ID_Usuario, ID_Documento, Accion, FechaRegistro) VALUES(1, 11, 'Modificación', '2024-04-08 16:00:00')
INSERT INTO Registro (ID_Usuario, ID_Documento, Accion, FechaRegistro) VALUES(2, 12, 'Eliminación', '2024-04-08 16:30:00')
INSERT INTO Registro (ID_Usuario, ID_Documento, Accion, FechaRegistro) VALUES(3, 13, 'Carga', '2024-04-08 17:00:00')
INSERT INTO Registro (ID_Usuario, ID_Documento, Accion, FechaRegistro) VALUES(4, 14, 'Carga', '2024-04-08 17:30:00')
INSERT INTO Registro (ID_Usuario, ID_Documento, Accion, FechaRegistro) VALUES(1, 15, 'Modificación', '2024-04-09 18:00:00')
