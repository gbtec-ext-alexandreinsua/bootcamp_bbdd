/*DESCRIPCIÓN DE LAS TABLAS:
 * 
 *EN SQLITE
 * 
 * TABLA CLIENTES
 * CLIENTES_ID
 * CLIENTE_NAME
 * TLF
 * DIRECCION
 * 
 * TABLA ALQUILER
 * ALQUILER_ID
 * CLIENTES_ID
 * COCHE_ID
 * FECHA_INICIO
 * FECHA_FIN
 * COSTE_TOTAL
 * 
 * TABLA MANTENIMIENTO
 * MANTENIMIENTO_ID
 * TIPOS_MANTENIMIENTO
 * 
 * TABLA TIPOS_DE_COMBUSTIBLE
 * TIPO_COMBUSTIBLE_ID
 * TIPO_COMBUSTIBLE
 * 
 * TABLA TIPOS_DE_CAMBIO
 * TIPOS_CAMBIO_ID
 * TIPO_DE_CAMBIO
 * 
 * 
 * TABLA COCHES
 * COCHE_ID
 * MARCA
 * YEAR
 * COLOR
 * MATRICULA
 * DISPONIBILIDAD
 * TIPOS_CAMBIO_ID
 * MANTENIMIENTO_ID
 * TIPO_DE_COMBUSTIBLE
 */









--INSERCCIÓN DE DATOS

INSERT INTO COCHES (COCHE_ID, MARCA, "YEAR", COLOR, MATRICULA, DISPONIBILIDAD, TIPOS_CAMBIO_ID, MANTENIMIENTO_ID, TIPO_DE_COMBUSTIBLE_ID ) VALUES
(1, 'Toyota', 2020, 'Blanco', 'ABC123', 'Disponible', 1, 1, 2), 
(2, 'Honda', 2019, 'Negro', 'XYZ456', 'No disponible', 1, 2, 2), 
(3, 'Ford', 2021, 'Rojo', 'LMN789', 'Disponible', 1, 1, 3), 
(4, 'Chevrolet', 2018, 'Azul', 'JKL012', 'No disponible', 1, 2, 2), 
(5, 'Nissan', 2022, 'Gris', 'DEF345', 'Disponible', 1, 1, 3), 
(6, 'Volkswagen', 2020, 'Verde', 'GHI678', 'Disponible', 1, 1, 4), 
(7, 'Hyundai', 2021, 'Amarillo', 'RST901', 'No disponible', 1, 2, 1), 
(8, 'Kia', 2019, 'Blanco', 'UVW234', 'Disponible', 2, 1, 3), 
(9, 'Mazda', 2022, 'Rojo', 'QRS567', 'No disponible', 2, 2, 2), 
(10, 'Subaru', 2020, 'Negro', 'TUV890', 'Disponible', 2, 1, 2),
(11, 'BMW', 2021, 'Negro', 'JKL345', 'Disponible', 3, 1, 1), 
(12, 'Audi', 2020, 'Plata', 'MNO678', 'No disponible', 3, 2, 1), 
(13, 'Mercedes-Benz', 2022, 'Blanco', 'PQR901', 'Disponible', 3, 1, 4), 
(14, 'Lexus', 2019, 'Rojo', 'STU234', 'No disponible', 1, 2, 2), 
(15, 'Porsche', 2021, 'Amarillo', 'VWX567', 'Disponible', 1, 1, 2), 
(16, 'Jaguar', 2020, 'Verde', 'YZA890', 'Disponible', 2, 1, 2), 
(17, 'Land Rover', 2021, 'Gris', 'BCD123', 'No disponible', 1, 2, 2), 
(18, 'Chrysler', 2018, 'Negro', 'EFG456', 'Disponible', 1, 1, 2), 
(19, 'Dodge', 2020, 'Rojo', 'HIJ789', 'No disponible', 1, 2, 2), 
(20, 'Ram', 2021, 'Azul', 'KLM012', 'Disponible', 2, 1, 1),
(21, 'Fiat', 2020, 'Blanco', 'NOP345', 'Disponible', 2, 1, 4),
(22, 'Peugeot', 2019, 'Negro', 'QRS678', 'No disponible', 2, 2, 4), 
(23, 'Renault', 2021, 'Rojo', 'TUV901', 'Disponible', 2, 1, 4), 
(24, 'Opel', 2020, 'Gris', 'WXY234', 'No disponible', 1, 2, 2), 
(25, 'Citroën', 2022, 'Verde', 'ZAB567', 'Disponible', 1, 1, 3), 
(26, 'Seat', 2021, 'Amarillo', 'CDE890', 'Disponible', 2, 1, 1), 
(27, 'Skoda', 2019, 'Azul', 'FGH123', 'No disponible', 2, 2, 3), 
(28, 'Mazda', 2020, 'Negro', 'IJK456', 'Disponible', 1, 1, 1), 
(29, 'Honda', 2021, 'Blanco', 'LMN789', 'No disponible', 1, 2, 4), 
(30, 'Subaru', 2022, 'Rojo', 'OPQ012', 'Disponible', 3 , 1, 4),
(31, 'Volvo', 2021, 'Negro', 'RST345', 'Disponible', 1, 1, 3), 
(32, 'Mitsubishi', 2019, 'Blanco', 'UVW678', 'No disponible', 1, 2, 4), 
(33, 'Honda', 2020, 'Gris', 'XYZ901', 'Disponible', 1, 1, 3), 
(34, 'Kia', 2022, 'Azul', 'ABC234', 'No disponible', 3, 2, 3), 
(35, 'Hyundai', 2021, 'Rojo', 'DEF567', 'Disponible', 2, 1, 1), 
(36, 'Ford', 2019, 'Amarillo', 'GHI890', 'No disponible', 1, 2, 2), 
(37, 'Chevrolet', 2020, 'Verde', 'JKL123', 'Disponible', 1, 1, 4), 
(38, 'Nissan', 2021, 'Negro', 'MNO456', 'Disponible', 1, 1, 1), 
(39, 'Fiat', 2022, 'Plata', 'PQR789', 'No disponible', 1, 2, 3), 
(40, 'Peugeot', 2020, 'Rojo', 'STU012', 'Disponible', 1, 1, 4);

INSERT INTO CLIENTES (CLIENTE_NAME, TLF, DIRECCION) VALUES 
('Luis Martínez', 654321789, 'Calle Nueva 202'), 
('Elena Sánchez', 789456123, 'Calle Vieja 303'), 
('Fernando Díaz', 147258369, 'Avenida del Sol 404'), 
('Lucía Fernández', 258369147, 'Calle del Mar 505'), 
('Santiago Ruiz', 369258147, 'Calle del Río 606'),
('Patricia Jiménez', 123123123, 'Calle del Campo 707'),
('Javier Morales', 987987987, 'Calle del Bosque 808'), 
('Laura Ruiz', 456789123, 'Calle del Lago 909'), 
('Fernando Castro', 321789654, 'Avenida de la Libertad 111'), 
('Sofía Romero', 654789321, 'Calle del Sol 222'), 
('Diego Ortega', 789123456, 'Calle del Puente 333'), 
('Nuria López', 159753486, 'Avenida de la Paz 444'),
('Andrés Soto', 753159486, 'Calle del Viento 555'), 
('Clara González', 852369741, 'Calle de la Esperanza 666'),
('Marcelo Méndez', 951753846, 'Calle de los Jardines 777'), 
('Valeria Castro', 147852369, 'Avenida del Río 888'),
('Ricardo Silva', 789456123, 'Calle del Arco 999'),
('Gabriela Torres', 654123987, 'Calle del Té 1011'), 
('Victor Ramos', 321987654, 'Avenida de la Cultura 2022'),
('Isabel Pérez', 456321789, 'Calle de la Alegría 3033'), 
('Samuel Núñez', 159753258, 'Calle del Mar 4044'), 
('Patricia León', 753159852, 'Avenida del Cielo 5055'), 
('Cecilia Moya', 852147963, 'Calle del Amanecer 6066'), 
('Eduardo Cruz', 951258144, 'Calle del Ocaso 7077'), 
('Sara Delgado', 369147258, 'Avenida de los Pinos 8088'), 
('Martín Vega', 258963147, 'Calle del Sol Naciente 9099'),
('Alberto Castillo', 147258369, 'Calle de la Luz 1010'), 
('Beatriz Salazar', 258963741, 'Avenida del Mar 2020'), 
('Carlos Ramírez', 369258147, 'Calle de los Olivos 3030'), 
('Mónica Herrera', 456789321, 'Calle del Aire 4040'), 
('Felipe Jiménez', 654987321, 'Avenida de los Abetos 5050'), 
('Silvia Morales', 789321456, 'Calle del Estrella 6060'), 
('Julián Torres',  159753258, 'Calle de la Brisa 7070'), 
('Angela Cortés',  753258159, 'Calle de la Montaña 8080'), 
('Esteban Castro', 852963147, 'Avenida de la Libertad 9090'), 
('Raquel Paredes', 951369852, 'Calle del Jardín 1001');

 
INSERT INTO ALQUILER (ALQUILER_ID, CLIENTES_ID, COCHE_ID, FECHA_INICIO, FECHA_FIN, COSTE_TOTAL) VALUES
(1, 2, 15, '2024-01-01', '2024-01-7', 175.00),
(2, 25, 4, '2024-01-05', '2024-01-10', 175.00),
(3, 26, 14, '2024-01-10', '2024-01-15', 175.00), 
(4, 22, 34, '2024-01-15', '2024-01-20', 160.00), 
(5, 19, 23, '2024-01-20', '2024-01-25', 180.00), 
(6, 17, 32, '2024-01-25', '2024-01-30', 190.00), 
(7, 15, 12, '2024-01-30', '2024-02-05', 210.00), 
(8, 6, 8, '2024-02-05', '2024-02-12', 155.00), 
(9, 10, 11, '2024-02-12', '2024-02-18', 170.00), 
(10, 12, 13, '2024-02-18', '2024-02-25', 220.00),
(11, 27, 22, '2024-03-01', '2024-03-07', 240.00), 
(12, 20, 15, '2024-03-05', '2024-03-12', 180.00), 
(13, 21, 19, '2024-03-10', '2024-03-15', 200.00), 
(14, 35, 31, '2024-03-15', '2024-03-20', 190.00), 
(15, 13, 16, '2024-03-20', '2024-03-27', 210.00),
(16, 3, 39, '2024-03-25', '2024-04-01', 220.00), 
(17, 27, 18, '2024-04-01', '2024-04-05', 160.00);

INSERT INTO ALQUILER (ALQUILER_ID, CLIENTES_ID, COCHE_ID, FECHA_INICIO, FECHA_FIN, COSTE_TOTAL) VALUES
(18, 18, 19, '2024-04-05', '2024-04-10', 175.00), 
(19, 2, 15, '2024-04-10', '2024-04-15', 190.00), 
(20, 20, 14, '2024-04-15', '2024-04-20', 230.00),
(21, 25, 38, '2024-04-20', '2024-04-27', 250.00), 
(22, 5, 5, '2024-04-25', '2024-05-02', 210.00), 
(23, 17, 14, '2024-05-01', '2024-05-07', 195.00), 
(24, 24, 4, '2024-05-05', '2024-05-12', 220.00), 
(25, 19, 25, '2024-05-10', '2024-05-17', 230.00),
(26, 8, 18, '2024-05-15', '2024-05-22', 240.00), 
(27, 26, 11, '2024-05-20', '2024-05-27', 180.00),
(28, 10, 34, '2024-05-25', '2024-06-01', 200.00), 
(29, 25, 37, '2024-06-01', '2024-06-08', 170.00), 
(30, 12, 6, '2024-06-05', '2024-06-12', 190.00),
(31, 9, 9, '2024-06-10', '2024-06-17', 260.00), 
(32, 15, 32, '2024-06-15', '2024-06-22', 220.00), 
(33, 29, 10, '2024-06-20', '2024-06-27', 210.00), 
(34, 15, 7, '2024-06-25', '2024-07-02', 230.00), 
(35, 12, 1, '2024-07-01', '2024-07-08', 240.00), 
(36, 1, 2, '2024-07-05', '2024-07-12', 200.00), 
(37, 5, 3, '2024-07-10', '2024-07-17', 180.00), 
(38, 18, 17, '2024-07-15', '2024-07-22', 190.00), 
(39, 15, 7, '2024-07-20', '2024-07-27', 220.00), 
(40, 40, 18, '2024-07-25', '2024-08-01', 250.00);


INSERT INTO TIPOS_DE_CAMBIO (TIPOS_CAMBIO_ID, TIPO_DE_CAMBIO) VALUES (1, 'Manual'), (2, 'Automático'), (3, 'Secuencial');


INSERT INTO TIPOS_DE_COMBUSTIBLE (TIPO_COMBUSTIBLE_ID, TIPO_COMBUSTIBLE) VALUES (1, 'Hibrido'), (2, 'Gasolina'), (3, 'Diesel'),
(4, 'Eléctrico');

INSERT INTO MANTENIMIENTO (MANTENIMIENTO_ID, TIPOS_MANTENIMIENTO) VALUES ('1','ITV'),('2', 'NO ITV');




-- Consultas Fáciles:
 
-- 1. Obtener todos los coches disponibles.
-- 2. Obten una lista de todos los clientes que estan en la base de datos.
SELECT
	*
FROM
	CLIENTES c;
-- 3. Mostrar todas las marcas de coches que utilizan gasolina.
-- 4. Obtener los datos de los alquileres de coche en los que el coste final fue mayor a 200

 
-- Consultas Medias
 
-- 1. Contar cuantos coches hay disponibles y cuantos no lo estan.
-- 2. Listar los coches que son automaticos.
SELECT
	*
FROM
	COCHES c
INNER JOIN TIPOS_DE_CAMBIO tdc ON
	c.TIPOS_CAMBIO_ID = tdc.TIPOS_CAMBIO_ID
WHERE
	tdc.TIPO_DE_CAMBIO LIKE 'Automático';
-- 3. Moatrar los clientes que han alquilado un coche de color rojo.
-- 4. Consulta cuántos coches de cada tipo de combustible hay.

 
-- Consultas Dificiles
 
-- 1. Obtener el nombre de los clientes que han alquilado coches más de una vez.
-- 2. Listar los coches cuyo último alquiler fue en JUNIO 2024
SELECT
	*
FROM
	COCHES c
INNER JOIN ALQUILER a ON
	c.COCHE_ID = a.COCHE_ID
WHERE
	a.FECHA_INICIO LIKE '2024-06-%';
-- 3. Obtener el coche que más ha sido alquilado y el número de veces que ha sido alquilado.
-- 4. Calcular el ingreso total generado por los alquileres de coches en color negro


