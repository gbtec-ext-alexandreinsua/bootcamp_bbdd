/* 	GRUPO 5 - HOSPITAL 
TABLA PACIENTES
	ID_PACIENTE PRYMARY
	NOMBRE TEXT NOT NULL
	EDAD INTEGER NOT NULL
	GENERO TEXT NOT NULL
	TELEFONO TEXT
	DIRECCION TEXT NOT NULL
	NACIMIENTO TEXT NOT NULL
	ID_DOCTOR REFERENCES DOCTORES(ID_DOCTOR)


TABLA DOCTORES
    ID_DOCTOR PRIMARY
    NOMBRE TEXT NOT NULL
    EDAD INTEGER NOT NULL
    HORARIOS TEXT
    ID_ESPECIALIDAD REFERENCES ESPECIALIDADES(ID_ESPECIALIDAD)
	
	
TABLA MEDICAMENTOS
    ID_MEDICAMENTO PRIMARY
    NOMBRE TEXT NOT NULL
    DESCRIPCION TEXT
    COSTE REAL NOT NULL
    STOCK INTEGER NOT NULL


TABLA RECETAS
    ID_RECETA PRIMARY
    FECHA TEXT NOT NULL
    DURACION TEXT NOT NULL
    FRECUENCIA TEXT NOT NULL
    ID_DOCTOR REFERENCES DOCTORES(ID_DOCTOR)
    ID_MEDICAMENTO REFERENCES MEDICAMENTOS(ID_MEDICAMENTO)
    ID_PACIENTE REFERENCES PACIENTES(ID_PACIENTE)


TABLA SALAS
    ID_SALA PRIMARY
    UBICACION TEXT NOT NULL
    ID_DOCTOR REFERENCES DOCTORES(ID_DOCTOR)


TABLA ESPECIALIDADES
    ID_ESPECIALIDAD PRIMARY
    NOMBRE_ESPECIALIDAD TEXT NOT NULL
    DESCRIPCION TEXT
	
	
CREATE TABLE CITAS
	ID_CITA PRIMARY
	FECHA TEXT NOT NULL
	HORA TEXT NOT NULL
	ID_PACIENTE INTEGER REFERENCES PACIENTES(ID_PACIENTE)
	
*/	


INSERT INTO MEDICAMENTOS (NOMBRE , DESCRIPCION , COSTE , STOCK)
	VALUES
		('Paracetamol', 'Analgésico', '2.5', 1),
		('Ibuprofeno', 'Antiinflamatorio', '3', 1),
		('Amoxicilina', 'Antibiótico', '5.45', 0),
		('Lansoprazol', NULL, '23.99', 0),
    	('Metformina', 'Antidiabético', '15.30', 1),
   	 	('Simvastatina', 'Hipolipemiante', '8.75', 1),
   		('Omeprazol', 'Antiacido', '10.99', 0),
   		('Lorazepam', 'Ansiolítico', '12.50', 1);
	
INSERT INTO SALAS (ID_DOCTOR, UBICACION)
	VALUES
    	(1, 'Piso 1 - Consulta General'),
    	(2, 'Piso 2 - Sala de Cardiología'),
    	(3, 'Piso 3 - Laboratorio de Radiología'),
    	(NULL, 'Piso 1 - Recepción'),
    	(4, 'Piso 2 - Sala de Emergencias'),
    	(5, 'Piso 3 - Sala de Cirugía'),
    	(NULL, 'Piso 1 - Área de Observación'),
    	(6,	'Piso 2 - Consulta Pediátrica');
   
INSERT INTO CITAS (FECHA, HORA, ID_PACIENTE)
	VALUES
		('2024-05-13', '14:02', 7),
		('2024-06-23', '17:43', 6),
		('2024-07-19', '09:15', 3),
		('2024-08-05', '11:30', 8),
		('2024-09-01', '10:45', 2),
		('2024-10-10', '13:50', 5),
		('2024-11-03', '16:20', 4),
		('2024-12-15', '08:10', 9),
		('2025-01-05', '13:23', 6);

INSERT INTO ESPECIALIDADES(NOMBRE_ESPECIALIDAD, DESCRIPCION)
	VALUES
		('CARDIOLOGIA', 'Estudio, prevención, diagnóstico y tratamiento de las enfermedades del corazón.'),
		('DERMATOLOGIA', 'Diagnóstico, tratamiento y manejo de las enfermedades y desórdenes de la piel.'),
		('GINECOLOGIA', 'Especialidad médica y quirúrgica que estudia el sistema reproductor femenino.'),
		('OFTALMOLOGIA', 'Especialidad médica que estudia las enfermedades de los ojos y su tratamiento.'),
		('PEDIATRIA', 'Especialidad médica y es la rama de la medicina que involucra la atención médica de bebés, niños y adolescentes.'),
		('UROLOGIA', 'Especialidad médico-quirúrgica que se ocupa del estudio, diagnóstico y tratamiento de las patologías que afectan al aparato urinario, glándulas suprarrenales y retroperitoneo de ambos sexos, y el aparato reproductor masculino.'),
		('ONCOLOGIA', 'Estudia y trata las neoplasias, con especial atención a los tumores malignos o cáncer.'),
		('OTORRINOLARINGOLOGIA', 'Especialidad médico-quirúrgica que se encarga del estudio de las enfermedades del oído.');
								  
INSERT INTO DOCTORES (NOMBRE, EDAD, HORARIOS, ID_ESPECIALIDAD)
	VALUES
	    ('Dr. Carlos Méndez', 45, 'Lunes a Viernes 08:00 - 14:00', 1),
	    ('Dra. Laura González', 38, 'Martes y Jueves 10:00 - 18:00', 2),
	    ('Dr. Ricardo López', 50, NULL, 3),
	    ('Dra. Ana Rodríguez', 42, 'Martes a Sábado 07:00 - 15:00', 4),
	    ('Dr. Fernando García', 55, 'Lunes a Jueves 12:00 - 20:00', 5),
	    ('Dra. María Sánchez', 34, NULL, 1),
    	('Dr. Javier Torres', 39, 'Martes y Jueves 09:00 - 15:00', 3),
	    ('Dra. Isabel Martínez', 48, NULL, 2)
	   	('Dr. Pedro Ares', 26, NULL, 5),
	    ('Dr. Alfonso Vidal', 30, NULL, 7),
	    ('Dr. Rubén García', 24, NULL, 3),
	    ('Dr. Jahziel Pérez', 17, NULL, 6);
	    ('Dra. Laura Mena', 45, 'Miércoles a Sábado 08:30 - 16:30', 1),  
    	('Dr. Carlos Ruiz', 40, NULL, 4),  
    	('Dra. Elena Torres', 38, 'Lunes a Viernes 11:00 - 19:00', 2), 
    	('Dr. Santiago López', 50, NULL, 8);
   
INSERT INTO RECETAS (FECHA, DURACION, FRECUENCIA, ID_DOCTOR, ID_MEDICAMENTO, ID_PACIENTE)
	VALUES
		('2024-01-15', '15D', '6H', 1, 3, 5),
		('2024-02-20', '15D', '8H', 2, 1, 4),
		('2024-03-05', '15D', '5H', 3, 2, 6),
		('2024-04-18', '15D', '7H', 4, 4, 3),
		('2024-05-22', '15D', '6H', 5, 1, 8),
		('2024-06-30', '15D', '8H', 6, 3, 7),
		('2024-07-10', '15D', '5H', 7, 2, 2),
		('2024-08-25', '15D', '7H', 8, 4, 1),
		('2024-01-15', '15D', '6H', 1, 3, 2),
		('2024-01-15', '15D', '6H', 1, 3, 5),
		('2024-01-15', '15D', '6H', 1, 3, 6),
		('2024-02-20', '15D', '8H', 2, 1, 4),
		('2024-03-05', '15D', '5H', 3, 2, 6),
		('2024-04-18', '15D', '7H', 4, 4, 3),
		('2024-05-22', '15D', '6H', 5, 1, 8),
		('2024-06-30', '15D', '8H', 6, 3, 7),
		('2024-07-10', '15D', '5H', 7, 2, 7),
		('2024-07-10', '15D', '5H', 7, 2, 2),
		('2024-07-10', '15D', '5H', 7, 2, 5),
		('2024-07-10', '15D', '5H', 7, 2, 3),
		('2024-07-10', '15D', '5H', 7, 2, 2),
		('2024-07-10', '15D', '5H', 7, 2, 2),
		('2024-08-25', '15D', '7H', 8, 4, 8),
		('2024-08-25', '15D', '7H', 8, 4, 1),
		('2024-08-25', '15D', '7H', 8, 4, 1);
	
INSERT INTO PACIENTES (NOMBRE, EDAD, GENERO, TELEFONO, DIRECCION, NACIMIENTO, ID_DOCTOR)
	VALUES
		('Alonso Ramírez', 50, 'Masculino', '654-214-217', 'Praza Mar, 8, 7º B', '26-08-1974', 7),
		('Adriana Badillo', 26, 'Femenino', '977-180-889', 'Camino Esther, 91, 56º 0º', '05-01-1998', 5),
		('Joel Robledo Tercero', 28, 'Masculino', '944-707-612', 'Rúa Ariadna, 12, 56º F', '06-07-1996', 3),
		('Omar Delgadillo', 25, 'Masculino', '930-008-641', 'Camino Daniela, 89, 0º 9º', '29-07-1999', 2),
		('Álvaro Arribas', 34, 'Masculino', '977-909-084', 'Camiño Ochoa, 59, 20º F', '15-10-1989', 4),
		('Rocío Sáez', 37, 'Femenino', '953-918-007', 'Avenida Jaimes, 5, 8º B', '16-02-1987', 1),
		('Inés Martos Segundo', 39, 'Femenino', '982-505-867', 'Travesía Rivera, 48, Bajo 7º', '02-01-1985', 6),
		('Samuel Soria', 39, 'Masculino', '999-306-874', 'Plaça Calvillo, 12, Ático 8º', '01-02-1985', 8),
		('Cristina López', 30, 'Femenino', '900-555-333', 'Calle San Juan, 25, 2º A', '1993-04-12', 3),
    	('Miguel Ángel Torres', 45, 'Masculino', '657-878-012', 'Avenida Libertad, 55, 1º C', '1978-11-23', 5),
    	('Elena Ruiz', 22, 'Femenino', '626-888-444', 'Calle Sagrada Familia, 17, 3º A', '2001-09-30', 4),
    	('Fernando Rodríguez', 41, 'Masculino', '600-222-555', 'Paseo de la Paz, 20, 6º B', '1982-07-14', 1),
    	('Lucía Martínez', 29, 'Femenino', '658-987-654', 'Calle del Sol, 10, 3º B', '1994-05-18', 2),
    	('Andrés Jiménez', 36, 'Masculino', '640-444-777', 'Paseo de la Esperanza, 22, 1º A', '1987-01-29', 1),
    	('María Sánchez', 42, 'Femenino', '692-555-888', 'Calle Libertad, 55, 4º C', '1981-08-10', 3),
    	('Pablo García', 27, 'Masculino', '612-222-111', 'Calle del Lago, 4, 2º D', '1996-02-05', 6),
    	('Sara López', 31, 'Femenino', '628-999-000', 'Avenida de los Jardines, 78, 5º A', '1992-09-12', 4),
    	('Jorge Gómez', 34, 'Masculino', '635-111-222', 'Ronda del Mar, 99, 7º B', '1989-11-15', 7),
    	('Ana Belén Ruiz', 33, 'Femenino', '617-888-333', 'Calle de la Salud, 10, 3º C', '1990-06-20', 5),
    	('Víctor Alonso', 38, 'Masculino', '626-555-666', 'Calle de la Paz, 15, 6º A', '1985-03-30', 8),
    	('Nuria Pérez', 24, 'Femenino', '654-444-999', 'Calle de la Luna, 8, 4º D', '1999-07-25', 2),
    	('Carlos Fernández', 50, 'Masculino', '678-777-888', 'Calle de la Estrella, 40, 1º A', '1973-12-12', 1);

/*
* EJERCICIOS: 
--Fáciles
--1 Devuelve el nombre de todos los pacientes con al menos 50 años.
--2 Muestra el promedio de edad de los pacientes por género.
--3 Lista todos los pacientes nacidos en el año 1990.
SELECT NOMBRE
FROM PACIENTES
WHERE NACIMIENTO LIKE '1990%';

--4 Encuentra los 5 medicamentos más caros.

--Medios
--5 Lista las citas programadas por cada doctor, mostrando solo aquellos con 2 o más citas.
--6 Encuentra los doctores y sus respectivas especialidades, ordenados por nombre de especialidad.
--7 Indica cual es el medicamento que más receta cada médico
SELECT d.NOMBRE AS Doctor, m.NOMBRE AS Medicamento, COUNT(r.ID_RECETA) AS Total_Recetas
FROM DOCTORES d
JOIN RECETAS r ON d.ID_DOCTOR = r.ID_DOCTOR
JOIN MEDICAMENTOS m ON r.ID_MEDICAMENTO = m.ID_MEDICAMENTO
GROUP BY d.ID_DOCTOR, d.NOMBRE, m.ID_MEDICAMENTO, m.NOMBRE
ORDER BY Total_Recetas DESC;

--8 Devuelve todas las salas del piso 2 que tengan como doctor asignado a alguien cuyo nombre empiece por "L"

--Difíciles
--9 Lista todos los pacientes que han recibido recetas de un doctor con especialidad en "Cardiología".
--10 Muestra la ubicación de la sala, el nombre del doctor, y la fecha y hora de la cita, siempre que sean antes de las 14:00.
--11 Muestra los el nombre del doctor y la ID_PACIENTE que no tienen pacientes asignados ni citas programadas, sustituyendo los valores "NULL" por "NO EXISTE".
SELECT d.NOMBRE AS Doctor, m.NOMBRE AS Medicamento, COUNT(r.ID_RECETA) AS Total_Recetas
FROM DOCTORES d
JOIN RECETAS r ON d.ID_DOCTOR = r.ID_DOCTOR
JOIN MEDICAMENTOS m ON r.ID_MEDICAMENTO = m.ID_MEDICAMENTO
GROUP BY d.ID_DOCTOR, d.NOMBRE, m.ID_MEDICAMENTO, m.NOMBRE
ORDER BY Total_Recetas DESC;
--12 Muestra 5 doctores que tienen mas de 2 pacientes.
*/
     */
    	