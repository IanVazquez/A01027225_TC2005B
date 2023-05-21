-- Crear la base de datos
USE tarea;

-- Crear la tabla PAIS
CREATE TABLE PAIS (
  nombre VARCHAR(255) PRIMARY KEY,
  numero_participantes INT,
  numero_medallas INT
);

-- Crear la tabla DEPORTISTA
CREATE TABLE DEPORTISTA (
  matricula VARCHAR(255) PRIMARY KEY,
  nombre VARCHAR(255),
  apellidos VARCHAR(255),
  sexo VARCHAR(255),
  pais VARCHAR(255),
  FOREIGN KEY (pais) REFERENCES PAIS(nombre)
);

-- Crear la tabla DISCIPLINA
CREATE TABLE DISCIPLINA (
  identificador VARCHAR(255) PRIMARY KEY,
  nombre VARCHAR(255),
  disciplina VARCHAR(255)
);

-- Crear la tabla PRUEBA
CREATE TABLE PRUEBA (
  identificador VARCHAR(255) PRIMARY KEY,
  disciplina VARCHAR(255),
  fecha DATE,
  lugar VARCHAR(255),
  num_deportistas_inscritos INT,
  naturaleza VARCHAR(255)
);
ALTER TABLE DISCIPLINA
ADD puntos INT NOT NULL DEFAULT 3;
UPDATE PRUEBA
SET max_puntos = CASE
    WHEN naturaleza = 'Eliminatoria' THEN 1
    WHEN naturaleza = 'Final' THEN 3
    END;

-- Crear la tabla CLASIFICACION
CREATE TABLE CLASIFICACION (
  deportista VARCHAR(255),
  prueba VARCHAR(255),
  rango INT,
  PRIMARY KEY (deportista, prueba),
  FOREIGN KEY (deportista) REFERENCES DEPORTISTA(matricula),
  FOREIGN KEY (prueba) REFERENCES PRUEBA(identificador)
);

-- Crear la tabla RESULTADO
CREATE TABLE RESULTADO (
  disciplina VARCHAR(255) PRIMARY KEY,
  medalla_oro VARCHAR(255),
  medalla_plata VARCHAR(255),
  medalla_bronce VARCHAR(255),
  FOREIGN KEY (medalla_oro) REFERENCES DEPORTISTA(matricula),
  FOREIGN KEY (medalla_plata) REFERENCES DEPORTISTA(matricula),
  FOREIGN KEY (medalla_bronce) REFERENCES DEPORTISTA(matricula)
);
ALTER TABLE RESULTADO
ADD FOREIGN KEY (medalla_oro) REFERENCES CLASIFICACION(deportista, prueba),
ADD FOREIGN KEY (medalla_plata) REFERENCES CLASIFICACION(deportista, prueba),
ADD FOREIGN KEY (medalla_bronce) REFERENCES CLASIFICACION(deportista, prueba);

-- Modificar la tabla RESULTADO
ALTER TABLE CLASIFICACION
ADD FOREIGN KEY (deportista) REFERENCES DEPORTISTA(matricula);

-- Crear la tabla MEDALLAS
CREATE TABLE MEDALLAS (
  medalla VARCHAR(255) PRIMARY KEY,
  puntos INT
);

-- Insertar los valores de las medallas y sus puntos correspondientes
INSERT INTO MEDALLAS (medalla, puntos)
VALUES ('medalla_oro', 3),
       ('medalla_plata', 2),
       ('medalla_bronce', 1);
