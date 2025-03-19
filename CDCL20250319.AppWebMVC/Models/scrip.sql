-- Creaci�n de la base de datos (Creaci�n de la base de datos)
CREATE DATABASE Test20250319DB;
GO

USE Test20250319DB;
GO

-- Tabla: Categories (Tabla: Categor�as)
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY IDENTITY(1,1), -- ID de categor�a (ID de categor�a)
    CategoryName VARCHAR(255) NOT NULL,    -- Nombre de la categor�a (Nombre de la categor�a)
    Description TEXT                       -- Descripci�n de la categor�a (Descripci�n de la categor�a)
);
GO

-- Tabla: Brands (Tabla: Marcas)
CREATE TABLE Brands (
    BrandID INT PRIMARY KEY IDENTITY(1,1),    -- ID de la marca (ID de la marca)
    BrandName VARCHAR(255) NOT NULL,       -- Nombre de la marca (Nombre de la marca)
    Country VARCHAR(255)                   -- Pa�s de origen de la marca (Pa�s de origen de la marca)
);
GO

-- Tabla: Products (Tabla: Productos)
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),  -- ID del producto (ID del producto)
    ProductName VARCHAR(255) NOT NULL,      -- Nombre del producto (Nombre del producto)
    Description TEXT,                       -- Descripci�n del producto (Descripci�n del producto)
    Price DECIMAL(10, 2) NOT NULL,          -- Precio del producto (Precio del producto)
    CategoryID INT FOREIGN KEY REFERENCES Categories(CategoryID), -- ID de la categor�a (ID de la categor�a)
    BrandID INT FOREIGN KEY REFERENCES Brands(BrandID)             -- ID de la marca (ID de la marca)
);
GO

-- Tabla: Users (Tabla: Usuarios)
CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY(1,1),     -- ID del usuario (ID del usuario)
    Username VARCHAR(255) NOT NULL,         -- Nombre de usuario (Nombre de usuario)
    Email VARCHAR(255) UNIQUE NOT NULL,     -- Correo electr�nico del usuario (Correo electr�nico del usuario)
    PasswordHash CHAR(32) NOT NULL,     -- Hash de la contrase�a del usuario (Hash de la contrase�a del usuario)
    Role VARCHAR(50) NOT NULL                -- Rol del usuario (Rol del usuario)
);
GO


    INSERT INTO Products (ProductName, Description, Price, BrandID, CategoryID) VALUES
('Producto 1', 'Descripci�n del Producto 1', 10.99, 1, 1),
('Producto 2', 'Descripci�n del Producto 2', 15.50, 1, 1),
('Producto 3', 'Descripci�n del Producto 3', 20.00, 1, 1),
('Producto 4', 'Descripci�n del Producto 4', 12.75, 1, 1),
('Producto 5', 'Descripci�n del Producto 5', 18.25, 1, 1),
('Producto 6', 'Descripci�n del Producto 6', 22.50, 1, 1),
('Producto 7', 'Descripci�n del Producto 7', 14.99, 1, 1),
('Producto 8', 'Descripci�n del Producto 8', 19.75, 1, 1),
('Producto 9', 'Descripci�n del Producto 9', 24.00, 1, 1),
('Producto 10', 'Descripci�n del Producto 10', 16.50, 1, 1),
('Producto 11', 'Descripci�n del Producto 11', 21.25, 1, 1),
('Producto 12', 'Descripci�n del Producto 12', 26.00, 1, 1),
('Producto 13', 'Descripci�n del Producto 13', 13.99, 1, 1),
('Producto 14', 'Descripci�n del Producto 14', 17.75, 1, 1),
('Producto 15', 'Descripci�n del Producto 15', 23.50, 1, 1),
('Producto 16', 'Descripci�n del Producto 16', 11.50, 1, 1),
('Producto 17', 'Descripci�n del Producto 17', 20.75, 1, 1),
('Producto 18', 'Descripci�n del Producto 18', 25.00, 1, 1),
('Producto 19', 'Descripci�n del Producto 19', 15.99, 1, 1),
('Producto 20', 'Descripci�n del Producto 20', 19.25, 1, 1),
('Producto 21', 'Descripci�n del Producto 21', 27.00, 1, 1),
('Producto 22', 'Descripci�n del Producto 22', 17.25, 1, 1),
('Producto 23', 'Descripci�n del Producto 23', 22.75, 1, 1),
('Producto 24', 'Descripci�n del Producto 24', 28.50, 1, 1),
('Producto 25', 'Descripci�n del Producto 25', 12.50, 1, 1),
('Producto 26', 'Descripci�n del Producto 26', 21.75, 1, 1),
('Producto 27', 'Descripci�n del Producto 27', 29.00, 1, 1),
('Producto 28', 'Descripci�n del Producto 28', 14.50, 1, 1),
('Producto 29', 'Descripci�n del Producto 29', 23.25, 1, 1),
('Producto 30', 'Descripci�n del Producto 30', 30.00, 1, 1),
('Producto 31', 'Descripci�n del Producto 31', 16.25, 1, 1),
('Producto 32', 'Descripci�n del Producto 32', 24.75, 1, 1),
('Producto 33', 'Descripci�n del Producto 33', 31.50, 1, 1),
('Producto 34', 'Descripci�n del Producto 34', 18.00, 1, 1),
('Producto 35', 'Descripci�n del Producto 35', 26.25, 1, 1),
('Producto 36', 'Descripci�n del Producto 36', 32.00, 1, 1),
('Producto 37', 'Descripci�n del Producto 37', 13.50, 1, 1),
('Producto 38', 'Descripci�n del Producto 38', 25.50, 1, 1),
('Producto 39', 'Descripci�n del Producto 39', 33.00, 1, 1),
('Producto 40', 'Descripci�n del Producto 40', 19.50, 1, 1);



 INSERT INTO Products (ProductName, Description, Price, BrandID, CategoryID) VALUES
('Producto 41', 'Descripci�n del Producto 41', 20.25, 2, 2),
('Producto 42', 'Descripci�n del Producto 42', 27.75, 2, 2),
('Producto 43', 'Descripci�n del Producto 43', 34.00, 2, 2),
('Producto 44', 'Descripci�n del Producto 41', 20.25, 2, 2),
('Producto 45', 'Descripci�n del Producto 42', 27.75, 2, 2),
('Producto 46', 'Descripci�n del Producto 43', 34.00, 2, 2),
('Producto 47', 'Descripci�n del Producto 41', 20.25, 2, 2),
('Producto 48', 'Descripci�n del Producto 42', 27.75, 2, 2),
('Producto 49', 'Descripci�n del Producto 43', 34.00, 2, 2),
('Producto 50', 'Descripci�n del Producto 41', 20.25, 2, 2),
('Producto 51', 'Descripci�n del Producto 42', 27.75, 2, 2),
('Producto 52', 'Descripci�n del Producto 43', 34.00, 2, 2),
('Producto 53', 'Descripci�n del Producto 41', 20.25, 2, 2),
('Producto 54', 'Descripci�n del Producto 42', 27.75, 2, 2),
('Producto 55', 'Descripci�n del Producto 43', 34.00, 2, 2),
('Producto 56', 'Descripci�n del Producto 41', 20.25, 2, 2),
('Producto 57', 'Descripci�n del Producto 42', 27.75, 2, 2),
('Producto 58', 'Descripci�n del Producto 43', 34.00, 2, 2),
('Producto 59', 'Descripci�n del Producto 41', 20.25, 2, 2),
('Producto 60', 'Descripci�n del Producto 42', 27.75, 2, 2),
('Producto 61', 'Descripci�n del Producto 43', 34.00, 2, 2);
