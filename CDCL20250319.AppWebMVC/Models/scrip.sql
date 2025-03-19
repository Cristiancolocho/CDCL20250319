-- Creación de la base de datos (Creación de la base de datos)
CREATE DATABASE Test20250319DB;
GO

USE Test20250319DB;
GO

-- Tabla: Categories (Tabla: Categorías)
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY IDENTITY(1,1), -- ID de categoría (ID de categoría)
    CategoryName VARCHAR(255) NOT NULL,    -- Nombre de la categoría (Nombre de la categoría)
    Description TEXT                       -- Descripción de la categoría (Descripción de la categoría)
);
GO

-- Tabla: Brands (Tabla: Marcas)
CREATE TABLE Brands (
    BrandID INT PRIMARY KEY IDENTITY(1,1),    -- ID de la marca (ID de la marca)
    BrandName VARCHAR(255) NOT NULL,       -- Nombre de la marca (Nombre de la marca)
    Country VARCHAR(255)                   -- País de origen de la marca (País de origen de la marca)
);
GO

-- Tabla: Products (Tabla: Productos)
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),  -- ID del producto (ID del producto)
    ProductName VARCHAR(255) NOT NULL,      -- Nombre del producto (Nombre del producto)
    Description TEXT,                       -- Descripción del producto (Descripción del producto)
    Price DECIMAL(10, 2) NOT NULL,          -- Precio del producto (Precio del producto)
    CategoryID INT FOREIGN KEY REFERENCES Categories(CategoryID), -- ID de la categoría (ID de la categoría)
    BrandID INT FOREIGN KEY REFERENCES Brands(BrandID)             -- ID de la marca (ID de la marca)
);
GO

-- Tabla: Users (Tabla: Usuarios)
CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY(1,1),     -- ID del usuario (ID del usuario)
    Username VARCHAR(255) NOT NULL,         -- Nombre de usuario (Nombre de usuario)
    Email VARCHAR(255) UNIQUE NOT NULL,     -- Correo electrónico del usuario (Correo electrónico del usuario)
    PasswordHash CHAR(32) NOT NULL,     -- Hash de la contraseña del usuario (Hash de la contraseña del usuario)
    Role VARCHAR(50) NOT NULL                -- Rol del usuario (Rol del usuario)
);
GO


    INSERT INTO Products (ProductName, Description, Price, BrandID, CategoryID) VALUES
('Producto 1', 'Descripción del Producto 1', 10.99, 1, 1),
('Producto 2', 'Descripción del Producto 2', 15.50, 1, 1),
('Producto 3', 'Descripción del Producto 3', 20.00, 1, 1),
('Producto 4', 'Descripción del Producto 4', 12.75, 1, 1),
('Producto 5', 'Descripción del Producto 5', 18.25, 1, 1),
('Producto 6', 'Descripción del Producto 6', 22.50, 1, 1),
('Producto 7', 'Descripción del Producto 7', 14.99, 1, 1),
('Producto 8', 'Descripción del Producto 8', 19.75, 1, 1),
('Producto 9', 'Descripción del Producto 9', 24.00, 1, 1),
('Producto 10', 'Descripción del Producto 10', 16.50, 1, 1),
('Producto 11', 'Descripción del Producto 11', 21.25, 1, 1),
('Producto 12', 'Descripción del Producto 12', 26.00, 1, 1),
('Producto 13', 'Descripción del Producto 13', 13.99, 1, 1),
('Producto 14', 'Descripción del Producto 14', 17.75, 1, 1),
('Producto 15', 'Descripción del Producto 15', 23.50, 1, 1),
('Producto 16', 'Descripción del Producto 16', 11.50, 1, 1),
('Producto 17', 'Descripción del Producto 17', 20.75, 1, 1),
('Producto 18', 'Descripción del Producto 18', 25.00, 1, 1),
('Producto 19', 'Descripción del Producto 19', 15.99, 1, 1),
('Producto 20', 'Descripción del Producto 20', 19.25, 1, 1),
('Producto 21', 'Descripción del Producto 21', 27.00, 1, 1),
('Producto 22', 'Descripción del Producto 22', 17.25, 1, 1),
('Producto 23', 'Descripción del Producto 23', 22.75, 1, 1),
('Producto 24', 'Descripción del Producto 24', 28.50, 1, 1),
('Producto 25', 'Descripción del Producto 25', 12.50, 1, 1),
('Producto 26', 'Descripción del Producto 26', 21.75, 1, 1),
('Producto 27', 'Descripción del Producto 27', 29.00, 1, 1),
('Producto 28', 'Descripción del Producto 28', 14.50, 1, 1),
('Producto 29', 'Descripción del Producto 29', 23.25, 1, 1),
('Producto 30', 'Descripción del Producto 30', 30.00, 1, 1),
('Producto 31', 'Descripción del Producto 31', 16.25, 1, 1),
('Producto 32', 'Descripción del Producto 32', 24.75, 1, 1),
('Producto 33', 'Descripción del Producto 33', 31.50, 1, 1),
('Producto 34', 'Descripción del Producto 34', 18.00, 1, 1),
('Producto 35', 'Descripción del Producto 35', 26.25, 1, 1),
('Producto 36', 'Descripción del Producto 36', 32.00, 1, 1),
('Producto 37', 'Descripción del Producto 37', 13.50, 1, 1),
('Producto 38', 'Descripción del Producto 38', 25.50, 1, 1),
('Producto 39', 'Descripción del Producto 39', 33.00, 1, 1),
('Producto 40', 'Descripción del Producto 40', 19.50, 1, 1);



 INSERT INTO Products (ProductName, Description, Price, BrandID, CategoryID) VALUES
('Producto 41', 'Descripción del Producto 41', 20.25, 2, 2),
('Producto 42', 'Descripción del Producto 42', 27.75, 2, 2),
('Producto 43', 'Descripción del Producto 43', 34.00, 2, 2),
('Producto 44', 'Descripción del Producto 41', 20.25, 2, 2),
('Producto 45', 'Descripción del Producto 42', 27.75, 2, 2),
('Producto 46', 'Descripción del Producto 43', 34.00, 2, 2),
('Producto 47', 'Descripción del Producto 41', 20.25, 2, 2),
('Producto 48', 'Descripción del Producto 42', 27.75, 2, 2),
('Producto 49', 'Descripción del Producto 43', 34.00, 2, 2),
('Producto 50', 'Descripción del Producto 41', 20.25, 2, 2),
('Producto 51', 'Descripción del Producto 42', 27.75, 2, 2),
('Producto 52', 'Descripción del Producto 43', 34.00, 2, 2),
('Producto 53', 'Descripción del Producto 41', 20.25, 2, 2),
('Producto 54', 'Descripción del Producto 42', 27.75, 2, 2),
('Producto 55', 'Descripción del Producto 43', 34.00, 2, 2),
('Producto 56', 'Descripción del Producto 41', 20.25, 2, 2),
('Producto 57', 'Descripción del Producto 42', 27.75, 2, 2),
('Producto 58', 'Descripción del Producto 43', 34.00, 2, 2),
('Producto 59', 'Descripción del Producto 41', 20.25, 2, 2),
('Producto 60', 'Descripción del Producto 42', 27.75, 2, 2),
('Producto 61', 'Descripción del Producto 43', 34.00, 2, 2);
