--GRUPO 3
-- SQLITE
--DESCRIPCION TABLAS
/*
NACIONALIDAD
NACIONALIDAD_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
NACIONALIDAD_NOMBRE TEXT NOT NULL
;


TIPO_DE_PRODUCTO 
TIPO_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
TIPO_NOMBRE TEXT NOT NULL
;


CLIENTES
CLIENTE_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
CLIENTE_NOMBRE TEXT NOT NULL,
CLIENTE_CIUDAD TEXT,
CLIENTE_TELEFONO INTEGER NOT NULL
;

PRODUCTO
PRODUCTO_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
PRODUCTO_NOMBRE TEXT NOT NULL,
PRODUCTO_PRECIO INTEGER,
NACIONALIDAD_ID INTEGER FOREIGN KEY NACIONALIDAD
TIPO_ID INTEGER FOREIGN KEY TIPO_DE_PRODUCTO
;



PROVEEDOR
PROVEEDOR_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
PROVEEDOR_NOMBRE TEXT NOT NULL,
TIPO_ID INTEGER FOREIGN KEY TIPO DE PRODUCTO
NACIONALIDAD_ID INTEGER FOREIGN KEY NACIONALIDAD
;

SUPERMERCADO
SUPER_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
SUPER_NOMBRE TEXT NOT NULL,
SUPER_CIUDAD TEXT NOT NULL,
SUPER_TELEFONO INTEGER NOT NULL,
NACIONALIDAD_ID INTEGER FOREIGN KEY NACIONALIDAD,
PROVEEDOR_ID INTEGER FOREIGN KEY PROVEEDOR
;

EMPLEADO
EMPLEADO_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
EMPLEADO_NOMBRE TEXT NOT NULL,
EDAD INTEGER NOT NULL,
EMPLEADO_CARGO TEXT NOT NULL,
NACIONALIDAD_ID INTEGER FOREIGN KEY NACIONALIDAD
SUPER_ID INTEGER FOREIGN KEY SUPERMERCADO
;



VENTAS
VENTA_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
VENTA_FECHA DATE,
SUPER_ID INTEGER FOREIGN KEY SUPERMERCADO
PRODUCTO_ID INTEGER FOREIGN KEY PRODUCTO
CLIENTE_ID INTEGER FOREIGN KEY CLIENTES
;
*/
--INSERTS
--NACIONALIDADES

INSERT INTO NACIONALIDAD (NACIONALIDAD_NOMBRE) VALUES
('Española'),
('Francesa'),
('Italiana'),
('Alemana'),
('Portuguesa'),
('Británica'),
('Holandesa'),
('Belga'),
('Sueca'),
('Noruega'),
('Mexicana'),
('Argentina'),
('Colombiana'),
('Chilena'),
('Peruana');


--TIPOS DE PRODUCTOS

INSERT INTO TIPO_DE_PRODUCTO (TIPO_NOMBRE) VALUES
('Lácteos'),
('Limpieza'),
('Carnes'),
('Bebidas'),
('Frutas y Verduras'),
('Panadería'),
('Pescados y Mariscos'),
('Cuidado Personal'),
('Congelados'),
('Dulces y Snacks'),
('Cereales y Granos'),
('Salsas y Condimentos'),
('Productos de Higiene'),
('Productos de Mascotas'),
('Bebés y Niños');






--CLIENTES

INSERT INTO CLIENTES (CLIENTE_NOMBRE, CLIENTE_CIUDAD, CLIENTE_TELEFONO) VALUES
('Carlos Gómez', 'Madrid', 612345678),
('Ana Rodríguez', 'Barcelona', 623456789),
('Juan Pérez', 'Valencia', 634567890),
('María Fernández', 'Sevilla', 645678901),
('Luis Martínez', 'Zaragoza', 656789012),
('Laura Sánchez', 'Málaga', 667890123),
('Pedro Ramírez', 'Murcia', 678901234),
('Carmen Torres', 'Palma de Mallorca', 689012345),
('Diego Morales', 'Las Palmas', 690123456),
('Lucía Vargas', 'Bilbao', 691234567),
('Andrés Castro', 'Alicante', 692345678),
('Gabriela Ruiz', 'Córdoba', 693456789),
('Felipe Herrera', 'Valladolid', 694567890),
('Isabel Pérez', 'Vigo', 695678901),
('Jorge Gutiérrez', 'Gijón', 696789012),
('Alejandro López', 'San Sebastián', 612987654),
('Sofía Ramírez', 'Santander', 623876543),
('Enrique Fernández', 'Badajoz', 634765432),
('Lorena Mendoza', 'Logroño', 645654321),
('Marcos Soto', 'Huelva', 656543210),
('Elena Rodríguez', 'Salamanca', 667432109),
('Francisco Jiménez', 'Almería', 678321098),
('Claudia Sánchez', 'Tarragona', 689210987),
('Julio Castillo', 'León', 690109876),
('Karla Navarro', 'Burgos', 691098765),
('Sergio García', 'Albacete', 692987654),
('Mariana Reyes', 'San Fernando', 693876543),
('Raúl Aguilar', 'Castellón de la Plana', 694765432),
('Lucía Torres', 'Getafe', 695654321),
('David Ortiz', 'Marbella', 696543210);



-- PRODUCTOS

INSERT INTO PRODUCTO (PRODUCTO_NOMBRE, PRODUCTO_PRECIO, NACIONALIDAD_ID, TIPO_ID)
VALUES
  ('Leche entera', ROUND(1.25, 0), 5, 1),
  ('Yogurt griego', ROUND(1.89, 0), 2, 1),
  ('Queso cheddar', ROUND(3.49, 0), 1, 1),
  ('Manzanas rojas', ROUND(1.99, 0), 3, 5),
  ('Bananas', ROUND(0.79, 0), 4, 5),
  ('Tomates cherry', ROUND(2.99, 0), 3, 5),
  ('Pan de molde', ROUND(1.59, 0), 2, 6),
  ('Baguettes', ROUND(1.29, 0), 1, 6),
  ('Salmón fresco', ROUND(12.99, 0), 1, 7),
  ('Atún en lata', ROUND(2.49, 0), 2, 7),
  ('Detergente líquido', ROUND(3.50, 0), 2, 2),
  ('Suavizante de telas', ROUND(2.99, 0), 1, 2),
  ('Papel higiénico', ROUND(4.99, 0), 3, 2),
  ('Shampoo', ROUND(4.29, 0), 2, 8),
  ('Jabón de baño', ROUND(1.99, 0), 3, 8),
  ('Pasta de dientes', ROUND(2.59, 0), 1, 8),
  ('Pizza congelada', ROUND(5.99, 0), 2, 9),
  ('Helado', ROUND(3.99, 0), 1, 9),
  ('Galletas', ROUND(2.99, 0), 3, 10),
  ('Arroz blanco', ROUND(1.99, 0), 4, 10),
  ('Café molido', ROUND(5.99, 0), 2, 11),
  ('Té negro', ROUND(3.49, 0), 1, 11),
  ('Salsa de tomate', ROUND(1.99, 0), 2, 12),
  ('Mayonesa', ROUND(2.59, 0), 1, 12),
  ('Alimento para perros', ROUND(15.99, 0), 3, 13),
  ('Arena para gatos', ROUND(7.99, 0), 2, 13),
  ('Pañales talla 3', ROUND(9.99, 0), 4, 14),
  ('Leche de fórmula', ROUND(12.99, 0), 1, 14),
  ('Carne picada', ROUND(8.99, 0), 3, 3),
  ('Pollo entero', ROUND(6.99, 0), 2, 3),
  ('Coca-Cola', ROUND(1.29, 0), 1, 4),
  ('Jugo de naranja', ROUND(2.49, 0), 3, 4),
  ('Cerveza', ROUND(1.99, 0), 2, 4),
  ('Agua mineral', ROUND(0.99, 0), 1, 4),
  ('Huevos', ROUND(2.99, 0), 3, 1),
  ('Mantequilla', ROUND(2.59, 0), 1, 1),
  ('Jamón cocido', ROUND(4.99, 0), 2, 3),
  ('Salchichas', ROUND(3.99, 0), 1, 3),
  ('Arroz integral', ROUND(2.49, 0), 4, 10),
  ('Avena', ROUND(2.99, 0), 3, 10),
  ('Frutos secos', ROUND(5.99, 0), 2, 5),
  ('Legumbres', ROUND(2.99, 0), 4, 10),
  ('Aceite de oliva', ROUND(5.99, 0), 1, 12),
  ('Vinagre', ROUND(1.99, 0), 2, 12),
  ('Azúcar', ROUND(1.59, 0), 3, 10),
  ('Harina', ROUND(1.99, 0), 2, 10),
  ('Chocolate', ROUND(3.99, 0), 1, 9),
  ('Papas fritas', ROUND(2.99, 0), 3, 9),
  ('Galletas saladas', ROUND(2.59, 0), 2, 9);

 
 
 
 --PROVEEDORES
 
 INSERT INTO PROVEEDOR (PROVEEDOR_NOMBRE, TIPO_ID, NACIONALIDAD_ID)
VALUES
  ('Delicias Italianas', 1, 3), 
  ('Limpiezas Express', 2, 4),  
  ('Carnes Premium Argentina', 3, 12),
  ('Bebidas Naturales Colombiana', 4, 15),
  ('Frutas Exóticas de Tailandia', 5,9),
  ('Panadería Francesa', 6, 2),
  ('Pescados Frescos del Pacífico', 7, 14),
  ('Cosmética Ecológica Española', 8, 1),
  ('Helados Artesanales', 9, 9),  
  ('Snacks Saludables', 10, 11),  
  ('Sabores del Mediterráneo', 1, 3),  
  ('Limpieza Ecológica', 2, 1),  
  ('Carnes de Pasto', 3, 12), 
  ('Bebidas Energéticas', 4, 15),  
  ('Frutas Tropicales Exóticas', 5, 8),  
  ('Panadería Artesanal Peruana', 6, 15),
  ('Pescados y Mariscos del Norte', 7, 10),  
  ('Royal Michi', 14, 5), 
  ('Foca_Polar', 9, 3),  
  ('Crispis Deliciosos', 10, 11)  
;

--SUPERMERCADOS

INSERT INTO SUPERMERCADO (SUPER_NOMBRE, SUPER_CIUDAD, SUPER_TELEFONO, NACIONALIDAD_ID,
PROVEEDOR_ID)
VALUES
  ('El Mercado Fresco', 'Madrid', 915551212, 1, 20),
  ('La Despensa de Munich', 'Barcelona', 934443333, 4, 8),
  ('SuperSol', 'Valencia', 963332222, 13,7),
  ('El Almacencito', 'Sevilla', 954445555, 11, 10),
  ('La Tienda del Barrio', 'Málaga', 952221111, 3, 1),
  ('Super Ahorro', 'Bilbao', 944446666, 12, 13),
  ('El Gourmet', 'Zaragoza', 976665555, 10, 11),
  ('La Bodeguita', 'A Coruña', 981114444, 14, 15),
  ('Super Cerca', 'Murcia', 968883333, 9, 18),
  ('El Mercado Central', 'Pamplona', 948882222, 7, 4),
  ('La Canasta del Consumidor', 'Granada', 958223344, 5, 16),
  ('El Super de la Esquina', 'Córdoba', 957221122, 2, 6),
  ('El Mercado del Pueblo', 'Alicante', 965112233, 6, 10),
  ('La Tienda de Barrio', 'Cádiz', 956223311, 7, 15),
  ('Super Ahorro Express', 'Gijón', 984113322, 5, 9),
  ('El Gourmet de la Plaza', 'Oviedo', 985221133, 8, 20),
  ('La Despensa Familiar', 'Badajoz', 924112244, 9, 6),
  ('Super Fresco', 'Huelva', 959223355, 4, 20),
  ('El Almacencito del Barrio', 'Santander', 942112266, 1, 19),
  ('La Tienda del Vecino', 'Las Palmas de Gran Canaria', 928223377, 3, 4);



--EMPLEADOS

INSERT INTO EMPLEADO (EMPLEADO_NOMBRE, EDAD, EMPLEADO_CARGO, NACIONALIDAD_ID,
SUPER_ID)
VALUES
  ('Anne Gabacho', 28, 'Cajas', 2, 20),
  ('Carlos Martínez', 35, 'Encargado de Sección', 1, 5),
  ('Sofía Ramírez', 22, 'Reposicion', 1, 8),
  ('Noa Thorsson', 42, 'Jefe de Supermercado', 10, 3),
  ('Anthony Smith', 30, 'Carniceria', 6, 12),
  ('Miguel Hernández', 27, 'Pescaderia', 15, 18),
  ('Lars Larssen', 38, 'Panaderia', 9, 16),
  ('Carlotte de Bruyne', 29, 'Fruteria', 8, 17),
  ('Isabel Khan', 33, 'Limpieza', 12, 4),
  ('Rodrigo Marchisio', 40, 'Seguridad', 3, 14),
  ('Rafaella Carini ', 32, 'Cajas', 3, 19),
  ('Pedro Gómez', 25, 'Fruteria', 14, 7),
  ('Mery Jane', 40, 'Carniceria', 6, 20),
  ('Luis López', 38, 'Pescaderia', 7, 9),
  ('Sofía Martínez', 27, 'Panaderia', 10, 1),
  ('David García', 35, 'Fruteria', 11, 13),
  ('Laura Hernández', 29, 'Almacen', 13, 11),
  ('Miguel Sánchez', 42, 'Mantenimiento', 13, 14),
  ('Antoine Zidane', 30, 'Reposicion', 8, 14),
  ('Joseph Rowling', 28, 'Mantenimiento', 6, 20),
  ('Antoine Hazard', 37, 'Carniceria', 8, 11),
  ('Rodrigo Díaz', 33, 'Cajas', 1, 5),
  ('Marie Giroud', 25, 'Almacen', 2, 7),
  ('Kai Van de Brugen', 30, 'Charcuteria', 7, 3),
  ('Willem Defutten', 28, 'Charcuteria', 7, 7),
  ('David Fernández', 32, 'Cajas', 15, 4),
  ('Laura Hernández', 27, 'Fruteria', 14, 12),
  ('Adolf Hutter', 35, 'Almacen', 4, 5),
  ('Patricia Jiménez', 30, 'Congelados', 1, 19),
  ('Joao Pedro', 28, 'Reposicion', 5, 17);

 
 --VENTAS
 
 INSERT INTO VENTAS (VENTA_FECHA, SUPER_ID, PRODUCTO_ID,
CLIENTE_ID)
VALUES
  ('2023-11-25', 15, 23, 20),
  ('2022-03-18', 7, 42, 22),
  ('2021-09-11', 3, 17, 12),
  ('2023-05-02', 20, 49, 7),
  ('2022-12-24', 12, 31, 29),
  ('2021-07-05', 9, 6, 3),
  ('2023-01-15', 5, 38, 15),
  ('2022-08-29', 18, 2, 18),
  ('2021-04-19', 11, 45, 21),
  ('2023-10-08', 2, 14, 23),
  ('2023-12-01', 5, 12, 25),  
  ('2022-02-14', 18, 37, 12), 
  ('2021-08-15', 11, 4, 27),  
  ('2023-04-05', 2, 29, 29),  
  ('2022-11-28', 15, 41, 3),  
  ('2021-06-21', 7, 9, 5), 
  ('2023-01-06', 20, 33, 30),  
  ('2022-09-12', 12, 16, 28),  
  ('2021-05-20', 9, 28, 12), 
  ('2023-03-17', 3, 40, 13), 
  ('2023-07-04', 1, 8, 25),  
  ('2022-10-31', 14, 35, 30),  
  ('2021-03-19', 6, 11, 1),  
  ('2023-02-12', 19, 26, 1),  
  ('2022-09-25', 13, 39, 2), 
  ('2021-06-06', 4, 7, 4),  
  ('2023-05-27', 17, 32, 6),  
  ('2022-12-26', 10, 15, 18),  
  ('2021-04-24', 8, 24, 22), 
  ('2023-01-22', 16, 36, 13),
  ('2023-12-02', 10, 25, 7),
  ('2022-01-15', 15, 3, 22),
  ('2021-08-20', 5, 18, 15),
  ('2023-04-07', 20, 42, 28),
  ('2022-11-29', 12, 31, 11),
  ('2021-06-22', 7, 9, 4),
  ('2023-01-07', 3, 38, 25),
  ('2022-09-13', 18, 2, 17),
  ('2021-05-21', 11, 45, 30),
  ('2023-03-18', 1, 14, 23),
  ('2023-07-05', 14, 8, 19),
  ('2022-10-31', 6, 35, 12),
  ('2021-03-20', 19, 11, 27),
  ('2023-02-13', 13, 26, 20),
  ('2022-09-26', 4, 39, 13),
  ('2021-06-07', 17, 7, 29),
  ('2023-05-28', 10, 32, 21),
  ('2022-12-27', 8, 15, 14),
  ('2021-04-25', 16, 24, 26),
  ('2023-01-23', 9, 36, 18),
  ('2022-05-21', 15, 14, 23);
 
 
--CONSULTAS
-- 1)DAME LAS 5 VENTAS MAS RECIENTES
SELECT * 
FROM VENTAS 
ORDER BY VENTA_FECHA DESC 
LIMIT 5;

-- 2)DAME LOS NOMBRES DE LOS CLIENTES CUYA CIUDAD EMPIECE POR V
SELECT CLIENTE_NOMBRE 
FROM CLIENTES 
WHERE CLIENTE_CIUDAD LIKE 'V%';

-- 3)CUANTOS CARGOS DIFERENTES HAY?
SELECT COUNT(DISTINCT EMPLEADO_CARGO) AS CANTIDAD_CARGOS 
FROM EMPLEADO;

-- 4)CUANTOS CLIENTES SE APELLIDAN 'Fernández'?
SELECT COUNT(*) AS CANTIDAD_CLIENTES 
FROM CLIENTES 
WHERE CLIENTE_NOMBRE LIKE '%Fernández';

-- 5)DAME EL PRECIO MEDIO DE LOS PRODUCTOS DE CATEGORIA CARNES

SELECT AVG(PRODUCTO_PRECIO) AS PRECIO_MEDIO_CATEGORIA_CARNES
FROM PRODUCTO
JOIN TIPO_DE_PRODUCTO ON PRODUCTO.TIPO_ID = TIPO_DE_PRODUCTO.TIPO_ID
WHERE TIPO_DE_PRODUCTO.TIPO_NOMBRE = 'Carnes';

-- 6)CUANTOS EMPLEADOS HAY EN CADA SUPERMERCADO

SELECT
	COUNT(e.EMPLEADO_ID)AS EMPLEADO_NOMBRE ,
	s.SUPER_NOMBRE
FROM
	SUPERMERCADO s
INNER JOIN EMPLEADO e ON
	s.SUPER_ID = e.SUPER_ID
GROUP BY
	s.SUPER_NOMBRE;


SELECT
	SUPERMERCADO.SUPER_NOMBRE,
	COUNT(EMPLEADO.EMPLEADO_ID) AS CANTIDAD_EMPLEADOS
FROM
	EMPLEADO
JOIN SUPERMERCADO ON
	EMPLEADO.SUPER_ID = SUPERMERCADO.SUPER_ID
GROUP BY
	SUPERMERCADO.SUPER_NOMBRE;
-- 7)DAME EL NOMBRE DEL PROVEEDOR MAS COMUN DE LOS SUPERMERCADOS

SELECT
	COUNT(s.PROVEEDOR_ID) AS CANTIDAD_SUPERMERCADOS,
	p.PROVEEDOR_NOMBRE
FROM
	SUPERMERCADO s
INNER JOIN PROVEEDOR p ON
	s.PROVEEDOR_ID = p.PROVEEDOR_ID
GROUP BY
	p.PROVEEDOR_NOMBRE
ORDER BY
	CANTIDAD_SUPERMERCADOS DESC
LIMIT 1;

-- 8)CUAL ES EL NOMBRE, LA CIUDAD Y LA CANTIDAD DE COMPRAS DEL CLIENTE QUE MAS HAYA COMPRADO

<<<<<<< HEAD
=======
SELECT
    CLIENTES.CLIENTE_NOMBRE,
    CLIENTES.CLIENTE_CIUDAD,
    COUNT(VENTAS.VENTA_ID) AS CANTIDAD_COMPRAS
FROM
    VENTAS
INNER JOIN
    CLIENTES ON VENTAS.CLIENTE_ID = CLIENTES.CLIENTE_ID
GROUP BY
    CLIENTES.CLIENTE_NOMBRE, CLIENTES.CLIENTE_CIUDAD
ORDER BY
    CANTIDAD_COMPRAS DESC
LIMIT 1;

>>>>>>> development
-- 9) CUAL ES EL PROVEEDOR DEL QUE SE VENDEN MAS PRODUCTOS
SELECT
	PROVEEDOR_NOMBRE,
	COUNT(v.VENTA_ID) AS PRODUCTO_VENDIDO
FROM
	VENTAS v
INNER JOIN PRODUCTO p ON
	v.PRODUCTO_ID = p.PRODUCTO_ID
INNER JOIN PROVEEDOR p2 ON
	p.TIPO_ID = p2.TIPO_ID
GROUP BY
	PROVEEDOR_NOMBRE
ORDER BY
	PRODUCTO_VENDIDO DESC
LIMIT 1;

 --10) CUAL ES EL NOMBRE Y CARGO DEL EMPLEADO Y EL NOMBRE DEL SUPER EN EL QUE TRABAJA, DONDE AMBOS QUE COMPARTEN NACIONALIDAD?
 
 SELECT
	EMPLEADO_NOMBRE,
	EMPLEADO_CARGO,
	SUPER_NOMBRE
FROM
	EMPLEADO e
INNER JOIN SUPERMERCADO s ON
	e.SUPER_ID = s.SUPER_ID
INNER JOIN NACIONALIDAD n ON
	e.NACIONALIDAD_ID = n.NACIONALIDAD_ID
WHERE e.NACIONALIDAD_ID = s.NACIONALIDAD_ID;

 --11) SELECCIONA EL NOMBRE DEL SUPERMERCADO CON LOS EMPLEADOS DE MAYOR MEDIA DE EDAD E INDICA DICHA EDAD
  
SELECT AVG(e.EDAD) AS MEDIA_EDADES, s.SUPER_NOMBRE
FROM EMPLEADO e
INNER JOIN SUPERMERCADO s ON e.SUPER_ID = s.SUPER_ID
GROUP BY s.SUPER_NOMBRE
ORDER BY MEDIA_EDADES DESC LIMIT 1;


 --12) CUAL ES EL PROVEEDOR DE SUDAMÉRICA QUE MÁS VENDE
 SELECT
	PROVEEDOR.PROVEEDOR_NOMBRE,
	COUNT(VENTAS.VENTA_ID) AS CANTIDAD_VENDIDOS
FROM
	VENTAS
JOIN
PRODUCTO ON
	VENTAS.PRODUCTO_ID = PRODUCTO.PRODUCTO_ID
JOIN
PROVEEDOR ON
	PRODUCTO.TIPO_ID = PROVEEDOR.TIPO_ID
JOIN
NACIONALIDAD ON
	PROVEEDOR.NACIONALIDAD_ID = NACIONALIDAD.NACIONALIDAD_ID
WHERE
	NACIONALIDAD.NACIONALIDAD_NOMBRE IN ('Argentina', 'Brasil', 'Chile', 'Colombia', 'Perú', 'Uruguay', 'Venezuela')
	-- Ajusta según las nacionalidades sudamericanas!!!!!
GROUP BY
	PROVEEDOR.PROVEEDOR_NOMBRE
ORDER BY
	CANTIDAD_VENDIDOS DESC
LIMIT 1;



