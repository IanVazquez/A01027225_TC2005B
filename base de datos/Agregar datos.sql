-- Agregar datos a la tabla DEPORTISTA

INSERT INTO DEPORTISTA (matricula, nombre, apellidos, sexo, pais)
VALUES
    ('M001', 'John', 'Doe', 'M', 'Estados Unidos'),
    ('M002', 'Emma', 'Smith', 'F', 'Estados Unidos'),
    ('M003', 'Liam', 'Johnson', 'M', 'China'),
    ('M004', 'Olivia', 'Brown', 'F', 'China'),
    ('M005', 'Noah', 'Miller', 'M', 'Rusia'),
    ('M006', 'Ava', 'Davis', 'F', 'Rusia'),
    ('M007', 'Ethan', 'Wilson', 'M', 'Japón'),
    ('M008', 'Sophia', 'Taylor', 'F', 'Japón'),
    ('M009', 'James', 'Thomas', 'M', 'Alemania'),
    ('M010', 'Isabella', 'Lee', 'F', 'Alemania'),
    ('M011', 'Benjamin', 'Clark', 'M', 'Francia'),
    ('M012', 'Mia', 'Hall', 'F', 'Francia'),
    ('M013', 'Henry', 'Adams', 'M', 'Australia'),
    ('M014', 'Charlotte', 'White', 'F', 'Australia'),
    ('M015', 'Daniel', 'Martin', 'M', 'Brasil'),
    ('M016', 'John', 'Doe', 'M', 'Estados Unidos'),
    ('M017', 'Emma', 'Smith', 'F', 'Estados Unidos'),
    ('M018', 'Liam', 'Johnson', 'M', 'China'),
    ('M019', 'Olivia', 'Brown', 'F', 'China'),
    ('M020', 'Noah', 'Miller', 'M', 'Rusia'),
    ('M021', 'Ava', 'Davis', 'F', 'Rusia'),
    ('M022', 'Ethan', 'Wilson', 'M', 'Japón'),
    ('M023', 'Sophia', 'Taylor', 'F', 'Japón'),
    ('M024', 'James', 'Thomas', 'M', 'Alemania'),
    ('M025', 'Isabella', 'Lee', 'F', 'Alemania'),
    ('M026', 'Benjamin', 'Clark', 'M', 'Francia'),
    ('M027', 'Mia', 'Hall', 'F', 'Francia'),
    ('M028', 'Henry', 'Adams', 'M', 'Australia'),
    ('M029', 'Charlotte', 'White', 'F', 'Australia'),
    ('M030', 'Daniel', 'Martin', 'M', 'Brasil');
    UPDATE DEPORTISTA
SET pais = 'México'
WHERE pais = 'Francia';
-- Agregar datos a la tabla CLASIFICACION
INSERT INTO CLASIFICACION (deportista, prueba, rango)
VALUES
    ('M001', 'P001', 3),
    ('M002', 'P002', 2),
    ('M003', 'P002', 1),
    ('M004', 'P003', 1),
    ('M005', 'P004', 2),
    ('M006', 'P004', 3),
    ('M007', 'P005', 3),
    ('M008', 'P006', 2),
    ('M009', 'P006', 1),
    ('M010', 'P007', 1),
    ('M011', 'P008', 2),
    ('M012', 'P008', 3),
    ('M013', 'P009', 3),
    ('M014', 'P010', 2),
    ('M015', 'P010', 1),
    ('M016', 'P011', 1),
    ('M017', 'P012', 2),
    ('M018', 'P012', 3),
    ('M019', 'P013', 3),
    ('M020', 'P014', 2),
    ('M021', 'P014', 1),
    ('M022', 'P015', 1),
    ('M023', 'P016', 2),
    ('M024', 'P016', 3),
    ('M025', 'P017', 3),
    ('M026', 'P018', 2),
    ('M027', 'P018', 1),
    ('M028', 'P019', 1),
    ('M029', 'P020', 2),
    ('M030', 'P020', 3);

-- Agregar datos a la tabla PAIS
INSERT INTO PAIS (nombre, numero_participantes, numero_medallas)
VALUES
    ('Estados Unidos', 4, 4),
    ('China', 4, 4),
    ('Rusia', 4, 4),
    ('Japón', 4, 4),
    ('Alemania', 4, 4),
    ('Francia', 4, 4),
    ('Australia', 4, 4),
    ('Brasil', 4, 4),
    ('Italia', 4, 4),
    ('Canadá', 2, 2);

-- Agregar datos a la tabla DISCIPLINA
INSERT INTO DISCIPLINA (identificador, nombre, disciplina)
VALUES
    ('D001', '100M nado libre', 'Natación'),
    ('D002', 'Salto de altura', 'Atletismo'),
    ('D003', 'Lanzamiento de disco', 'Atletismo'),
    ('D004', '5000M carrera', 'Atletismo'),
    ('D005', 'Salto con pértiga', 'Atletismo'),
    ('D006', '200M espalda', 'Natación'),
    ('D007', 'Lanzamiento de martillo', 'Atletismo'),
    ('D008', '100M carrera', 'Atletismo'),
    ('D009', 'Salto de longitud', 'Atletismo'),
    ('D010', '400M estilo libre', 'Natación');
    
-- Agregar datos a la tabla PRUEBA
INSERT INTO PRUEBA (identificador, disciplina, fecha, lugar, num_deportistas_inscritos, naturaleza)
VALUES
    ('P001', 'D001', '2023-05-15', 'Piscina Olímpica', 3, 'Eliminatoria'),
    ('P002', 'D001', '2023-05-17', 'Piscina Olímpica', 2, 'Final'),
    ('P003', 'D002', '2023-05-14', 'Estadio Olímpico', 3, 'Eliminatoria'),
    ('P004', 'D002', '2023-05-16', 'Estadio Olímpico', 2, 'Final'),
    ('P005', 'D003', '2023-05-14', 'Estadio Olímpico', 3, 'Eliminatoria'),
    ('P006', 'D003', '2023-05-16', 'Estadio Olímpico', 2, 'Final'),
    ('P007', 'D004', '2023-05-15', 'Estadio Olímpico', 3, 'Eliminatoria'),
    ('P008', 'D004', '2023-05-17', 'Estadio Olímpico', 2, 'Final'),
    ('P009', 'D005', '2023-05-14', 'Estadio Olímpico', 3, 'Eliminatoria'),
    ('P010', 'D005', '2023-05-16', 'Estadio Olímpico', 2, 'Final'),
    ('P011', 'D006', '2023-05-18', 'Piscina Olímpica', 3, 'Eliminatoria'),
    ('P012', 'D006', '2023-05-20', 'Piscina Olímpica', 2, 'Final'),
    ('P013', 'D007', '2023-05-19', 'Estadio Olímpico', 3, 'Eliminatoria'),
    ('P014', 'D007', '2023-05-21', 'Estadio Olímpico', 2, 'Final'),
    ('P015', 'D008', '2023-05-18', 'Estadio Olímpico', 3, 'Eliminatoria'),
    ('P016', 'D008', '2023-05-20', 'Estadio Olímpico', 2, 'Final'),
	('P017', 'D009', '2023-05-19', 'Estadio Olímpico', 3, 'Eliminatoria'),
	('P018', 'D009', '2023-05-21', 'Estadio Olímpico', 2, 'Final'),
	('P019', 'D010', '2023-05-18', 'Piscina Olímpica', 3, 'Eliminatoria'),
	('P020', 'D010', '2023-05-20', 'Piscina Olímpica', 2, 'Final');
    
-- Agregar datos a la tabla RESULTADO
INSERT INTO RESULTADO (disciplina, medalla_oro, medalla_plata, medalla_bronce)
VALUES
    ('D001', 'M003', 'M002', 'M001'),
    ('D002', 'M004', 'M005', 'M006'),
    ('D003', 'M009', 'M008', 'M007'),
    ('D004', 'M010', 'M011', 'M012'),
    ('D005', 'M015', 'M014', 'M013'),
    ('D006', 'M003', 'M002', 'M001'),
    ('D007', 'M004', 'M005', 'M006'),
    ('D008', 'M009', 'M008', 'M007'),
    ('D009', 'M012', 'M011', 'M010'),
    ('D010', 'M015', 'M014', 'M013');
