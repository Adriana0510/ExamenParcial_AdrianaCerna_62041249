USE master 
GO
DROP DATABASE IF EXISTS ExamenParcial_AdrianaCerna_62041249
CREATE DATABASE ExamenParcial_62041249_AdrianaCerna
GO

USE ExamenParcial_62041249_AdrianaCerna
GO

--------------------Modulo 2--------------------

CREATE TABLE TipoProveedor(
ID_Tipo int IDENTITY PRIMARY KEY,
Tipo varchar(max)
);

CREATE TABLE TipoPago(
ID_Pago int IDENTITY PRIMARY KEY,
Tipo varchar(max)
);

CREATE TABLE Proveedor(
ID_Proveedor int IDENTITY PRIMARY KEY,
Nombre varchar(max),
Correo varchar(max),
Numero varchar(max),
ID_Tipo int
FOREIGN KEY (ID_Tipo) REFERENCES TipoProveedor(ID_Tipo)
);

CREATE TABLE Producto(
ID_Producto int IDENTITY PRIMARY KEY,
Nombre varchar(max),
ID_Proveedor int,
Precio_Unidad int,
Estado varchar(max),
FOREIGN KEY (ID_Proveedor) REFERENCES Proveedor(ID_Proveedor)
);

CREATE TABLE Inventario(
ID_Inventario int IDENTITY PRIMARY KEY,
ID_Producto int,
Cantidad_Ingreso int,
Cantidad_Actual int,
Cantidad_Exhibicion int,
FOREIGN KEY (ID_Producto) REFERENCES Producto(ID_Producto)
);

CREATE TABLE Compra(
ID_Compra int IDENTITY PRIMARY KEY,
ID_Proveedor int,
ID_Producto int,
Cantidad int,
ID_Pago int,
Total int,
Fecha_Pago DATETIME,
FOREIGN KEY (ID_Proveedor) REFERENCES Proveedor(ID_Proveedor),
FOREIGN KEY (ID_Producto) REFERENCES Producto(ID_Producto),
FOREIGN KEY (ID_Pago) REFERENCES TipoPago(ID_Pago)
);

CREATE TABLE Venta(
ID_Venta int IDENTITY PRIMARY KEY,
ID_Producto int,
Cantidad int,
ID_Pago int,
Total int,
Fecha_Pago DATETIME,
FOREIGN KEY (ID_Producto) REFERENCES Producto(ID_Producto),
FOREIGN KEY (ID_Pago) REFERENCES TipoPago(ID_Pago)
);

--------------------Modulo 2--------------------

CREATE TABLE TipoCliente(
ID_TipoCliente int IDENTITY PRIMARY KEY,
Tipo varchar(max)
);

CREATE TABLE Caja(
ID_Turno int IDENTITY PRIMARY KEY,
Apertura DATETIME,
Cierre DATETIME,
Fecha DATETIME,
Cobrante varchar(max),
Total_Venta int
);

CREATE TABLE TiposGasto(
ID_Tipo int IDENTITY PRIMARY KEY,
Gasto varchar(max),
);

CREATE TABLE PagoCliente(
ID_Pago int IDENTITY PRIMARY KEY
ID_Cliente int,
Nombre varchar(max),
Deuda int,
PagoRelizado int,
Fecha DATETIME,
FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente)
);

CREATE TABLE Cliente(
ID_Cliente int IDENTITY PRIMARY KEY,
ID_TipoCliente int,
Nombre varchar(max),
Deuda int,
Correo varchar(max),
Telefono int,
FOREIGN KEY (ID_TipoCliente) REFERENCES TipoCliente(ID_TipoCliente)
);

CREATE TABLE Factura(
ID_Factura int IDENTITY PRIMARY KEY,
ID_Cliente int,
ID_Producto int,
Fecha DATETIME,
Hora DATETIME,
Total_Venta int,
FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente),
FOREIGN KEY (ID_Producto) REFERENCES Producto(ID_Producto)
);

CREATE TABLE GastoCasa(
ID_Gasto int IDENTITY PRIMARY KEY,
ID_Tipo int, 
Total int,
Fecha DATETIME,
FOREIGN KEY (ID_Tipo) REFERENCES TiposGasto(ID_Tipo),
);

--------------------Insertar Valores--------------------

USE [ExamenParcial_62041249_AdrianaCerna]
GO
SET IDENTITY_INSERT [dbo].[TipoProveedor] ON 
GO
INSERT [dbo].[TipoProveedor] ([ID_Tipo], [Tipo]) VALUES (1, N'Credito')
GO
INSERT [dbo].[TipoProveedor] ([ID_Tipo], [Tipo]) VALUES (2, N'Al contado')
GO
INSERT [dbo].[TipoProveedor] ([ID_Tipo], [Tipo]) VALUES (3, N'A')
GO
INSERT [dbo].[TipoProveedor] ([ID_Tipo], [Tipo]) VALUES (4, N'B')
GO
INSERT [dbo].[TipoProveedor] ([ID_Tipo], [Tipo]) VALUES (5, N'C')
GO
INSERT [dbo].[TipoProveedor] ([ID_Tipo], [Tipo]) VALUES (6, N'D')
GO
INSERT [dbo].[TipoProveedor] ([ID_Tipo], [Tipo]) VALUES (7, N'E')
GO
INSERT [dbo].[TipoProveedor] ([ID_Tipo], [Tipo]) VALUES (8, N'F')
GO
INSERT [dbo].[TipoProveedor] ([ID_Tipo], [Tipo]) VALUES (9, N'G')
GO
INSERT [dbo].[TipoProveedor] ([ID_Tipo], [Tipo]) VALUES (10, N'H')
GO
SET IDENTITY_INSERT [dbo].[TipoProveedor] OFF
GO
SET IDENTITY_INSERT [dbo].[Proveedor] ON 
GO
INSERT [dbo].[Proveedor] ([ID_Proveedor], [Nombre], [Correo], [Numero], [ID_Tipo]) VALUES (1, N'Bimbo', N'bimbo@gmail.com', N'9590-9783', 1)
GO
INSERT [dbo].[Proveedor] ([ID_Proveedor], [Nombre], [Correo], [Numero], [ID_Tipo]) VALUES (2, N'Pepsi', N'pepsi@gmail.com', N'9590-9784', 2)
GO
INSERT [dbo].[Proveedor] ([ID_Proveedor], [Nombre], [Correo], [Numero], [ID_Tipo]) VALUES (3, N'Moderna', N'moderna@gmail.com', N'1568-4516', 2)
GO
INSERT [dbo].[Proveedor] ([ID_Proveedor], [Nombre], [Correo], [Numero], [ID_Tipo]) VALUES (4, N'Dormicentro', N'dormicentro@gmail.com', N'1864-1568', 2)
GO
INSERT [dbo].[Proveedor] ([ID_Proveedor], [Nombre], [Correo], [Numero], [ID_Tipo]) VALUES (5, N'Salva Vidas', N'salvavidas@gmail.com', N'8453-1562', 1)
GO
INSERT [dbo].[Proveedor] ([ID_Proveedor], [Nombre], [Correo], [Numero], [ID_Tipo]) VALUES (6, N'Sula', N'sula@gmail.com', N'9456-1654', 2)
GO
INSERT [dbo].[Proveedor] ([ID_Proveedor], [Nombre], [Correo], [Numero], [ID_Tipo]) VALUES (7, N'Deli', N'deli@gmail.com', N'9841-4813', 1)
GO
INSERT [dbo].[Proveedor] ([ID_Proveedor], [Nombre], [Correo], [Numero], [ID_Tipo]) VALUES (8, N'Burger King', N'burgerking@gmail.com', N'5615-1586', 1)
GO
INSERT [dbo].[Proveedor] ([ID_Proveedor], [Nombre], [Correo], [Numero], [ID_Tipo]) VALUES (9, N'Mentos', N'mentos@gmail.com', N'1564-3454', 2)
GO
INSERT [dbo].[Proveedor] ([ID_Proveedor], [Nombre], [Correo], [Numero], [ID_Tipo]) VALUES (10, N'M&M', N'm&m@gmail.com', N'6459-4846', 1)
GO
SET IDENTITY_INSERT [dbo].[Proveedor] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoPago] ON 
GO
INSERT [dbo].[TipoPago] ([ID_Pago], [Tipo]) VALUES (1, N'Credito')
GO
INSERT [dbo].[TipoPago] ([ID_Pago], [Tipo]) VALUES (2, N'Contado')
GO
INSERT [dbo].[TipoPago] ([ID_Pago], [Tipo]) VALUES (3, N'A')
GO
INSERT [dbo].[TipoPago] ([ID_Pago], [Tipo]) VALUES (4, N'B')
GO
INSERT [dbo].[TipoPago] ([ID_Pago], [Tipo]) VALUES (5, N'C')
GO
INSERT [dbo].[TipoPago] ([ID_Pago], [Tipo]) VALUES (6, N'D')
GO
INSERT [dbo].[TipoPago] ([ID_Pago], [Tipo]) VALUES (7, N'E')
GO
INSERT [dbo].[TipoPago] ([ID_Pago], [Tipo]) VALUES (8, N'F')
GO
INSERT [dbo].[TipoPago] ([ID_Pago], [Tipo]) VALUES (9, N'G')
GO
INSERT [dbo].[TipoPago] ([ID_Pago], [Tipo]) VALUES (10, N'H')
GO
SET IDENTITY_INSERT [dbo].[TipoPago] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 
GO
INSERT [dbo].[Producto] ([ID_Producto], [Nombre], [ID_Proveedor], [Precio_Unidad], [Estado]) VALUES (1, N'Pan', 1, 25, N'Activo')
GO
INSERT [dbo].[Producto] ([ID_Producto], [Nombre], [ID_Proveedor], [Precio_Unidad], [Estado]) VALUES (2, N'Refresco', 2, 20, N'Activo')
GO
INSERT [dbo].[Producto] ([ID_Producto], [Nombre], [ID_Proveedor], [Precio_Unidad], [Estado]) VALUES (3, N'Semitas', 3, 10, N'No Activo')
GO
INSERT [dbo].[Producto] ([ID_Producto], [Nombre], [ID_Proveedor], [Precio_Unidad], [Estado]) VALUES (4, N'Semillas', 4, 20, N'No Activo')
GO
INSERT [dbo].[Producto] ([ID_Producto], [Nombre], [ID_Proveedor], [Precio_Unidad], [Estado]) VALUES (5, N'Cerbeza', 5, 22, N'Activo')
GO
INSERT [dbo].[Producto] ([ID_Producto], [Nombre], [ID_Proveedor], [Precio_Unidad], [Estado]) VALUES (6, N'Queso', 6, 81, N'Activo')
GO
INSERT [dbo].[Producto] ([ID_Producto], [Nombre], [ID_Proveedor], [Precio_Unidad], [Estado]) VALUES (7, N'Jamon', 7, 32, N'No Activo')
GO
INSERT [dbo].[Producto] ([ID_Producto], [Nombre], [ID_Proveedor], [Precio_Unidad], [Estado]) VALUES (8, N'Peperoni', 8, 15, N'No Activo')
GO
INSERT [dbo].[Producto] ([ID_Producto], [Nombre], [ID_Proveedor], [Precio_Unidad], [Estado]) VALUES (9, N'Chicles', 9, 32, N'Activo')
GO
INSERT [dbo].[Producto] ([ID_Producto], [Nombre], [ID_Proveedor], [Precio_Unidad], [Estado]) VALUES (10, N'Chocolates', 10, 22, N'Activo')
GO
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO
SET IDENTITY_INSERT [dbo].[Compra] ON 
GO
INSERT [dbo].[Compra] ([ID_Compra], [ID_Proveedor], [ID_Producto], [Cantidad], [ID_Pago], [Total], [Fecha_Pago]) VALUES (11, 1, 1, 40, 1, 1000, CAST(N'2023-01-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Compra] ([ID_Compra], [ID_Proveedor], [ID_Producto], [Cantidad], [ID_Pago], [Total], [Fecha_Pago]) VALUES (12, 2, 2, 125, 2, 2500, CAST(N'2023-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Compra] ([ID_Compra], [ID_Proveedor], [ID_Producto], [Cantidad], [ID_Pago], [Total], [Fecha_Pago]) VALUES (13, 3, 3, 131, 2, 1310, CAST(N'2023-09-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Compra] ([ID_Compra], [ID_Proveedor], [ID_Producto], [Cantidad], [ID_Pago], [Total], [Fecha_Pago]) VALUES (14, 4, 4, 15, 1, 300, NULL)
GO
INSERT [dbo].[Compra] ([ID_Compra], [ID_Proveedor], [ID_Producto], [Cantidad], [ID_Pago], [Total], [Fecha_Pago]) VALUES (15, 5, 5, 23, 1, 506, NULL)
GO
INSERT [dbo].[Compra] ([ID_Compra], [ID_Proveedor], [ID_Producto], [Cantidad], [ID_Pago], [Total], [Fecha_Pago]) VALUES (16, 6, 6, 15, 2, 1215, CAST(N'2023-09-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Compra] ([ID_Compra], [ID_Proveedor], [ID_Producto], [Cantidad], [ID_Pago], [Total], [Fecha_Pago]) VALUES (17, 7, 7, 94, 1, 3008, CAST(N'2023-06-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Compra] ([ID_Compra], [ID_Proveedor], [ID_Producto], [Cantidad], [ID_Pago], [Total], [Fecha_Pago]) VALUES (18, 8, 8, 45, 2, 675, NULL)
GO
INSERT [dbo].[Compra] ([ID_Compra], [ID_Proveedor], [ID_Producto], [Cantidad], [ID_Pago], [Total], [Fecha_Pago]) VALUES (19, 9, 9, 15, 2, 480, NULL)
GO
INSERT [dbo].[Compra] ([ID_Compra], [ID_Proveedor], [ID_Producto], [Cantidad], [ID_Pago], [Total], [Fecha_Pago]) VALUES (20, 10, 10, 95, 1, 2090, CAST(N'2023-04-02T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Compra] OFF
GO
SET IDENTITY_INSERT [dbo].[Venta] ON 
GO
INSERT [dbo].[Venta] ([ID_Venta], [ID_Producto], [Cantidad], [ID_Pago], [Total], [Fecha_Pago]) VALUES (1, 1, 20, 2, 1000, CAST(N'2023-01-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Venta] ([ID_Venta], [ID_Producto], [Cantidad], [ID_Pago], [Total], [Fecha_Pago]) VALUES (2, 2, 25, 2, 2500, CAST(N'2023-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Venta] ([ID_Venta], [ID_Producto], [Cantidad], [ID_Pago], [Total], [Fecha_Pago]) VALUES (3, 3, 67, 1, 670, NULL)
GO
INSERT [dbo].[Venta] ([ID_Venta], [ID_Producto], [Cantidad], [ID_Pago], [Total], [Fecha_Pago]) VALUES (4, 4, 5, 1, 100, NULL)
GO
INSERT [dbo].[Venta] ([ID_Venta], [ID_Producto], [Cantidad], [ID_Pago], [Total], [Fecha_Pago]) VALUES (5, 5, 15, 2, 330, CAST(N'2023-04-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Venta] ([ID_Venta], [ID_Producto], [Cantidad], [ID_Pago], [Total], [Fecha_Pago]) VALUES (6, 6, 5, 1, 405, NULL)
GO
INSERT [dbo].[Venta] ([ID_Venta], [ID_Producto], [Cantidad], [ID_Pago], [Total], [Fecha_Pago]) VALUES (7, 7, 64, 2, 2048, NULL)
GO
INSERT [dbo].[Venta] ([ID_Venta], [ID_Producto], [Cantidad], [ID_Pago], [Total], [Fecha_Pago]) VALUES (8, 8, 30, 2, 450, CAST(N'2023-09-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Venta] ([ID_Venta], [ID_Producto], [Cantidad], [ID_Pago], [Total], [Fecha_Pago]) VALUES (9, 9, 9, 1, 288, NULL)
GO
INSERT [dbo].[Venta] ([ID_Venta], [ID_Producto], [Cantidad], [ID_Pago], [Total], [Fecha_Pago]) VALUES (10, 10, 61, 1, 1342, NULL)
GO
SET IDENTITY_INSERT [dbo].[Venta] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventario] ON 
GO
INSERT [dbo].[Inventario] ([ID_Inventario], [ID_Producto], [Cantidad_Ingreso], [Cantidad_Actual], [Cantidad_Exhibicion]) VALUES (21, 1, 100, 50, 25)
GO
INSERT [dbo].[Inventario] ([ID_Inventario], [ID_Producto], [Cantidad_Ingreso], [Cantidad_Actual], [Cantidad_Exhibicion]) VALUES (22, 2, 50, 25, 5)
GO
INSERT [dbo].[Inventario] ([ID_Inventario], [ID_Producto], [Cantidad_Ingreso], [Cantidad_Actual], [Cantidad_Exhibicion]) VALUES (23, 3, 51, 15, 10)
GO
INSERT [dbo].[Inventario] ([ID_Inventario], [ID_Producto], [Cantidad_Ingreso], [Cantidad_Actual], [Cantidad_Exhibicion]) VALUES (24, 4, 98, 54, 30)
GO
INSERT [dbo].[Inventario] ([ID_Inventario], [ID_Producto], [Cantidad_Ingreso], [Cantidad_Actual], [Cantidad_Exhibicion]) VALUES (25, 5, 26, 10, 5)
GO
INSERT [dbo].[Inventario] ([ID_Inventario], [ID_Producto], [Cantidad_Ingreso], [Cantidad_Actual], [Cantidad_Exhibicion]) VALUES (26, 6, 84, 61, 40)
GO
INSERT [dbo].[Inventario] ([ID_Inventario], [ID_Producto], [Cantidad_Ingreso], [Cantidad_Actual], [Cantidad_Exhibicion]) VALUES (27, 7, 62, 32, 15)
GO
INSERT [dbo].[Inventario] ([ID_Inventario], [ID_Producto], [Cantidad_Ingreso], [Cantidad_Actual], [Cantidad_Exhibicion]) VALUES (28, 8, 57, 25, 10)
GO
INSERT [dbo].[Inventario] ([ID_Inventario], [ID_Producto], [Cantidad_Ingreso], [Cantidad_Actual], [Cantidad_Exhibicion]) VALUES (29, 9, 58, 13, 7)
GO
INSERT [dbo].[Inventario] ([ID_Inventario], [ID_Producto], [Cantidad_Ingreso], [Cantidad_Actual], [Cantidad_Exhibicion]) VALUES (30, 10, 98, 20, 15)
GO
SET IDENTITY_INSERT [dbo].[Inventario] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoCliente] ON 
GO
INSERT [dbo].[TipoCliente] ([ID_TipoCliente], [Tipo]) VALUES (1, N'Con Linea de credito')
GO
INSERT [dbo].[TipoCliente] ([ID_TipoCliente], [Tipo]) VALUES (2, N'Sin linea de Credito')
GO
INSERT [dbo].[TipoCliente] ([ID_TipoCliente], [Tipo]) VALUES (3, N'A')
GO
INSERT [dbo].[TipoCliente] ([ID_TipoCliente], [Tipo]) VALUES (4, N'B')
GO
INSERT [dbo].[TipoCliente] ([ID_TipoCliente], [Tipo]) VALUES (5, N'C')
GO
INSERT [dbo].[TipoCliente] ([ID_TipoCliente], [Tipo]) VALUES (6, N'D')
GO
INSERT [dbo].[TipoCliente] ([ID_TipoCliente], [Tipo]) VALUES (7, N'E')
GO
INSERT [dbo].[TipoCliente] ([ID_TipoCliente], [Tipo]) VALUES (8, N'F')
GO
INSERT [dbo].[TipoCliente] ([ID_TipoCliente], [Tipo]) VALUES (9, N'G')
GO
INSERT [dbo].[TipoCliente] ([ID_TipoCliente], [Tipo]) VALUES (10, N'H')
GO
SET IDENTITY_INSERT [dbo].[TipoCliente] OFF
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 
GO
INSERT [dbo].[Cliente] ([ID_Cliente], [ID_TipoCliente], [Nombre], [Deuda], [Correo], [Telefono]) VALUES (1, 1, N'Fernando', 1000, N'fernando@gmail.com', NULL)
GO
INSERT [dbo].[Cliente] ([ID_Cliente], [ID_TipoCliente], [Nombre], [Deuda], [Correo], [Telefono]) VALUES (2, 2, N'Jose', 0, N'jose@gmail.com', NULL)
GO
INSERT [dbo].[Cliente] ([ID_Cliente], [ID_TipoCliente], [Nombre], [Deuda], [Correo], [Telefono]) VALUES (3, 2, N'Rolando', 0, N'roland@gmail.com', NULL)
GO
INSERT [dbo].[Cliente] ([ID_Cliente], [ID_TipoCliente], [Nombre], [Deuda], [Correo], [Telefono]) VALUES (4, 1, N'Maria', 4326, N'maria@gmail.com', NULL)
GO
INSERT [dbo].[Cliente] ([ID_Cliente], [ID_TipoCliente], [Nombre], [Deuda], [Correo], [Telefono]) VALUES (5, 1, N'Juan', 5314, N'juan@gmail.com', NULL)
GO
INSERT [dbo].[Cliente] ([ID_Cliente], [ID_TipoCliente], [Nombre], [Deuda], [Correo], [Telefono]) VALUES (6, 1, N'Jorge', 8621, N'jorge@gmail.com', NULL)
GO
INSERT [dbo].[Cliente] ([ID_Cliente], [ID_TipoCliente], [Nombre], [Deuda], [Correo], [Telefono]) VALUES (7, 2, N'Carlos', 0, N'carlos@gmail.com', NULL)
GO
INSERT [dbo].[Cliente] ([ID_Cliente], [ID_TipoCliente], [Nombre], [Deuda], [Correo], [Telefono]) VALUES (8, 1, N'Andrea', 10000, N'andrea@gmail.com', NULL)
GO
INSERT [dbo].[Cliente] ([ID_Cliente], [ID_TipoCliente], [Nombre], [Deuda], [Correo], [Telefono]) VALUES (9, 2, N'Andres', 0, N'andres@gmail.com', NULL)
GO
INSERT [dbo].[Cliente] ([ID_Cliente], [ID_TipoCliente], [Nombre], [Deuda], [Correo], [Telefono]) VALUES (10, 2, N'Alejandra', 0, N'alejandra@gmail.com', NULL)
GO
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[Factura] ON 
GO
INSERT [dbo].[Factura] ([ID_Factura], [ID_Cliente], [ID_Producto], [Fecha], [Hora], [Total_Venta]) VALUES (21, 1, 1, NULL, CAST(N'2023-02-18T06:50:00.000' AS DateTime), 1566)
GO
INSERT [dbo].[Factura] ([ID_Factura], [ID_Cliente], [ID_Producto], [Fecha], [Hora], [Total_Venta]) VALUES (22, 2, 2, NULL, CAST(N'2023-02-18T06:00:00.000' AS DateTime), 8123)
GO
INSERT [dbo].[Factura] ([ID_Factura], [ID_Cliente], [ID_Producto], [Fecha], [Hora], [Total_Venta]) VALUES (23, 3, 3, CAST(N'2023-04-02T00:00:00.000' AS DateTime), CAST(N'2023-02-18T08:25:00.000' AS DateTime), 4131)
GO
INSERT [dbo].[Factura] ([ID_Factura], [ID_Cliente], [ID_Producto], [Fecha], [Hora], [Total_Venta]) VALUES (24, 4, 4, CAST(N'2023-09-02T00:00:00.000' AS DateTime), CAST(N'2023-02-18T08:19:00.000' AS DateTime), 2614)
GO
INSERT [dbo].[Factura] ([ID_Factura], [ID_Cliente], [ID_Producto], [Fecha], [Hora], [Total_Venta]) VALUES (25, 5, 5, NULL, CAST(N'2023-02-18T12:31:00.000' AS DateTime), 5156)
GO
INSERT [dbo].[Factura] ([ID_Factura], [ID_Cliente], [ID_Producto], [Fecha], [Hora], [Total_Venta]) VALUES (26, 6, 6, NULL, CAST(N'2023-02-18T11:50:00.000' AS DateTime), 1853)
GO
INSERT [dbo].[Factura] ([ID_Factura], [ID_Cliente], [ID_Producto], [Fecha], [Hora], [Total_Venta]) VALUES (27, 7, 7, CAST(N'2023-09-02T00:00:00.000' AS DateTime), CAST(N'2023-02-18T02:38:00.000' AS DateTime), 4853)
GO
INSERT [dbo].[Factura] ([ID_Factura], [ID_Cliente], [ID_Producto], [Fecha], [Hora], [Total_Venta]) VALUES (28, 8, 8, CAST(N'2023-06-02T00:00:00.000' AS DateTime), CAST(N'2023-02-18T06:04:00.000' AS DateTime), 1235)
GO
INSERT [dbo].[Factura] ([ID_Factura], [ID_Cliente], [ID_Producto], [Fecha], [Hora], [Total_Venta]) VALUES (29, 9, 9, NULL, CAST(N'2023-02-18T07:02:00.000' AS DateTime), 861)
GO
INSERT [dbo].[Factura] ([ID_Factura], [ID_Cliente], [ID_Producto], [Fecha], [Hora], [Total_Venta]) VALUES (30, 10, 10, NULL, CAST(N'2023-02-18T01:00:00.000' AS DateTime), 156)
GO
SET IDENTITY_INSERT [dbo].[Factura] OFF
GO
SET IDENTITY_INSERT [dbo].[TiposGasto] ON 
GO
INSERT [dbo].[TiposGasto] ([ID_Tipo], [Gasto]) VALUES (1, N'Telefono')
GO
INSERT [dbo].[TiposGasto] ([ID_Tipo], [Gasto]) VALUES (2, N'Luz')
GO
INSERT [dbo].[TiposGasto] ([ID_Tipo], [Gasto]) VALUES (3, N'Agua')
GO
INSERT [dbo].[TiposGasto] ([ID_Tipo], [Gasto]) VALUES (4, N'Impuestos')
GO
INSERT [dbo].[TiposGasto] ([ID_Tipo], [Gasto]) VALUES (5, N'Cable')
GO
INSERT [dbo].[TiposGasto] ([ID_Tipo], [Gasto]) VALUES (6, N'Gasolina')
GO
INSERT [dbo].[TiposGasto] ([ID_Tipo], [Gasto]) VALUES (7, N'Internet')
GO
INSERT [dbo].[TiposGasto] ([ID_Tipo], [Gasto]) VALUES (8, N'Comida')
GO
INSERT [dbo].[TiposGasto] ([ID_Tipo], [Gasto]) VALUES (9, N'Extra I')
GO
INSERT [dbo].[TiposGasto] ([ID_Tipo], [Gasto]) VALUES (10, N'Extra II')
GO
SET IDENTITY_INSERT [dbo].[TiposGasto] OFF
GO
SET IDENTITY_INSERT [dbo].[GastoCasa] ON 
GO
INSERT [dbo].[GastoCasa] ([ID_Gasto], [ID_Tipo], [Total], [Fecha]) VALUES (1, 1, 700, NULL)
GO
INSERT [dbo].[GastoCasa] ([ID_Gasto], [ID_Tipo], [Total], [Fecha]) VALUES (2, 2, 9500, NULL)
GO
INSERT [dbo].[GastoCasa] ([ID_Gasto], [ID_Tipo], [Total], [Fecha]) VALUES (3, 3, 600, CAST(N'2023-04-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[GastoCasa] ([ID_Gasto], [ID_Tipo], [Total], [Fecha]) VALUES (4, 4, 2000, CAST(N'2023-09-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[GastoCasa] ([ID_Gasto], [ID_Tipo], [Total], [Fecha]) VALUES (5, 5, 400, NULL)
GO
INSERT [dbo].[GastoCasa] ([ID_Gasto], [ID_Tipo], [Total], [Fecha]) VALUES (6, 6, 1250, NULL)
GO
INSERT [dbo].[GastoCasa] ([ID_Gasto], [ID_Tipo], [Total], [Fecha]) VALUES (7, 7, 1000, CAST(N'2023-09-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[GastoCasa] ([ID_Gasto], [ID_Tipo], [Total], [Fecha]) VALUES (8, 8, 4500, CAST(N'2023-06-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[GastoCasa] ([ID_Gasto], [ID_Tipo], [Total], [Fecha]) VALUES (9, 9, 250, NULL)
GO
INSERT [dbo].[GastoCasa] ([ID_Gasto], [ID_Tipo], [Total], [Fecha]) VALUES (10, 10, 640, NULL)
GO
SET IDENTITY_INSERT [dbo].[GastoCasa] OFF
GO
SET IDENTITY_INSERT [dbo].[Caja] ON 
GO
INSERT [dbo].[Caja] ([ID_Turno], [Apertura], [Cierre], [Fecha], [Cobrante], [Total_Venta]) VALUES (1, CAST(N'2023-02-18T07:30:00.000' AS DateTime), CAST(N'2023-02-18T02:30:00.000' AS DateTime), CAST(N'2023-01-02T00:00:00.000' AS DateTime), N'Sonia', 10000)
GO
INSERT [dbo].[Caja] ([ID_Turno], [Apertura], [Cierre], [Fecha], [Cobrante], [Total_Venta]) VALUES (2, CAST(N'2023-02-18T02:30:00.000' AS DateTime), CAST(N'2023-02-18T11:30:00.000' AS DateTime), CAST(N'2023-01-02T00:00:00.000' AS DateTime), N'Israel', 6450)
GO
INSERT [dbo].[Caja] ([ID_Turno], [Apertura], [Cierre], [Fecha], [Cobrante], [Total_Venta]) VALUES (3, CAST(N'2023-02-18T07:30:00.000' AS DateTime), CAST(N'2023-02-18T02:30:00.000' AS DateTime), CAST(N'2023-01-03T00:00:00.000' AS DateTime), N'Eduaam', 3218)
GO
INSERT [dbo].[Caja] ([ID_Turno], [Apertura], [Cierre], [Fecha], [Cobrante], [Total_Venta]) VALUES (4, CAST(N'2023-02-18T02:30:00.000' AS DateTime), CAST(N'2023-02-18T11:30:00.000' AS DateTime), CAST(N'2023-01-03T00:00:00.000' AS DateTime), N'Keneth', 1546)
GO
INSERT [dbo].[Caja] ([ID_Turno], [Apertura], [Cierre], [Fecha], [Cobrante], [Total_Venta]) VALUES (5, CAST(N'2023-02-18T07:30:00.000' AS DateTime), CAST(N'2023-02-18T02:30:00.000' AS DateTime), CAST(N'2023-01-04T00:00:00.000' AS DateTime), N'Daniel', 5684)
GO
INSERT [dbo].[Caja] ([ID_Turno], [Apertura], [Cierre], [Fecha], [Cobrante], [Total_Venta]) VALUES (6, CAST(N'2023-02-18T02:30:00.000' AS DateTime), CAST(N'2023-02-18T11:30:00.000' AS DateTime), CAST(N'2023-01-04T00:00:00.000' AS DateTime), N'Lalis', 6481)
GO
INSERT [dbo].[Caja] ([ID_Turno], [Apertura], [Cierre], [Fecha], [Cobrante], [Total_Venta]) VALUES (7, CAST(N'2023-02-18T07:30:00.000' AS DateTime), CAST(N'2023-02-18T02:30:00.000' AS DateTime), CAST(N'2023-01-05T00:00:00.000' AS DateTime), N'Stephany', 9281)
GO
INSERT [dbo].[Caja] ([ID_Turno], [Apertura], [Cierre], [Fecha], [Cobrante], [Total_Venta]) VALUES (8, CAST(N'2023-02-18T02:30:00.000' AS DateTime), CAST(N'2023-02-18T11:30:00.000' AS DateTime), CAST(N'2023-01-05T00:00:00.000' AS DateTime), N'Sadia', 6816)
GO
INSERT [dbo].[Caja] ([ID_Turno], [Apertura], [Cierre], [Fecha], [Cobrante], [Total_Venta]) VALUES (9, CAST(N'2023-02-18T07:30:00.000' AS DateTime), CAST(N'2023-02-18T02:30:00.000' AS DateTime), CAST(N'2023-01-06T00:00:00.000' AS DateTime), N'Juanita', 75416)
GO
INSERT [dbo].[Caja] ([ID_Turno], [Apertura], [Cierre], [Fecha], [Cobrante], [Total_Venta]) VALUES (10, CAST(N'2023-02-18T02:30:00.000' AS DateTime), CAST(N'2023-02-18T11:30:00.000' AS DateTime), CAST(N'2023-01-06T00:00:00.000' AS DateTime), N'Fernanda', 8156)
GO
SET IDENTITY_INSERT [dbo].[Caja] OFF
GO
SET IDENTITY_INSERT [dbo].[PagoCliente] ON 
GO
INSERT [dbo].[PagoCliente] ([ID_Cliente], [Nombre], [Deuda], [PagoRelizado], [Fecha]) VALUES (1, N'Fernando', 1000, 200, CAST(N'2023-02-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PagoCliente] ([ID_Cliente], [Nombre], [Deuda], [PagoRelizado], [Fecha]) VALUES (2, N'Maria', 4326, 3515, CAST(N'2023-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PagoCliente] ([ID_Cliente], [Nombre], [Deuda], [PagoRelizado], [Fecha]) VALUES (3, N'Juan', 5314, 2351, CAST(N'2023-04-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PagoCliente] ([ID_Cliente], [Nombre], [Deuda], [PagoRelizado], [Fecha]) VALUES (4, N'Jorge', 8621, 8451, CAST(N'2023-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PagoCliente] ([ID_Cliente], [Nombre], [Deuda], [PagoRelizado], [Fecha]) VALUES (5, N'Andrea', 10000, 5165, CAST(N'2023-02-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PagoCliente] ([ID_Cliente], [Nombre], [Deuda], [PagoRelizado], [Fecha]) VALUES (6, N'Ronald', 1561, 984, CAST(N'2023-02-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PagoCliente] ([ID_Cliente], [Nombre], [Deuda], [PagoRelizado], [Fecha]) VALUES (7, N'Richard', 846, 213, CAST(N'2023-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PagoCliente] ([ID_Cliente], [Nombre], [Deuda], [PagoRelizado], [Fecha]) VALUES (8, N'Frank', 4613, 1354, CAST(N'2023-02-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PagoCliente] ([ID_Cliente], [Nombre], [Deuda], [PagoRelizado], [Fecha]) VALUES (9, N'Amelia', 846, 654, CAST(N'2023-02-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PagoCliente] ([ID_Cliente], [Nombre], [Deuda], [PagoRelizado], [Fecha]) VALUES (10, N'David', 1949, 235, CAST(N'2023-02-03T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[PagoCliente] OFF
GO
