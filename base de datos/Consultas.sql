  -- 1. Apellidos y nombre de los participantes de nacionalidad mexicana.
SELECT apellidos, nombre
FROM DEPORTISTA
WHERE pais = 'Mexico';
  -- 2. Apellidos, nombre y puntos acumulados de los participantes de USA.
SELECT d.apellidos, d.nombre,
    CASE
        WHEN r.medalla_oro = d.matricula THEN 3
        WHEN r.medalla_plata = d.matricula THEN 2
        WHEN r.medalla_bronce = d.matricula THEN 1
        ELSE 0
    END AS puntos_acumulados
FROM DEPORTISTA d
LEFT JOIN RESULTADO r ON d.matricula IN (r.medalla_oro, r.medalla_plata, r.medalla_bronce)
WHERE d.pais = 'Estados Unidos'
AND (r.medalla_oro IS NOT NULL OR r.medalla_plata IS NOT NULL OR r.medalla_bronce IS NOT NULL);

-- 3. Apellidos y nombre de los participantes que se clasificaron en primer lugar en al menos una competencia.
SELECT d.apellidos, d.nombre
FROM DEPORTISTA d
INNER JOIN CLASIFICACION c ON d.matricula = c.deportista
WHERE c.rango = 1;

-- 4. Nombre de las competencias en las que intervinieron los participantes mexicanos.
SELECT DISTINCT d.nombre AS deportista, d.apellidos AS apellidos, di.nombre AS competencia
FROM DEPORTISTA d
INNER JOIN CLASIFICACION c ON d.matricula = c.deportista
INNER JOIN PRUEBA p ON c.prueba = p.identificador
INNER JOIN DISCIPLINA di ON p.disciplina = di.identificador
WHERE d.pais = 'México';

-- 5. Apellidos y nombre de los participantes que nunca se clasificaron en primer lugar en alguna competencia.
SELECT d.apellidos, d.nombre
FROM DEPORTISTA d
WHERE NOT EXISTS (
  SELECT 1
  FROM CLASIFICACION c
  WHERE d.matricula = c.deportista AND c.rango = 1
);
-- 6. Apellidos y nombre de los participantes que siempre se clasificaron en alguna competencia.
SELECT d.apellidos, d.nombre
FROM DEPORTISTA d
WHERE EXISTS (
  SELECT 1
  FROM PRUEBA p
  WHERE NOT EXISTS (
    SELECT 1
    FROM CLASIFICACION c
    WHERE c.deportista = d.matricula AND c.prueba = p.identificador
  )
);
-- 7 Nombre de la competencia que aporta el máximo de puntos.
SELECT nombre
FROM PRUEBA
WHERE max_puntos = (SELECT MAX(max_puntos) FROM PRUEBA);

-- 8 Países (nacionalidades) que participaron en todas las competencias.
SELECT d.pais
FROM DEPORTISTA d
GROUP BY d.pais
HAVING COUNT(DISTINCT d.matricula) = (
  SELECT COUNT(DISTINCT p.identificador)
  FROM PRUEBA p
);
-- 9 Promedio del numero de participantes de los paises
SELECT AVG(numero_participantes) AS promedio_participantes
FROM PAIS;
-- Es util para saber cual fue el promedio de los competidores mandados por los paises

-- 10. Contar el número de competencias en las que participa cada país.
SELECT d.pais, COUNT(c.prueba) AS num_competencias
FROM DEPORTISTA d
INNER JOIN CLASIFICACION c ON d.matricula = c.deportista
GROUP BY d.pais;
-- Esta consulta cuenta el número de competencias en las que participa cada país. 
-- Es útil para analizar la actividad y participación de cada país en las competencias.

-- 11. Busca obtener los 10 deportistas con la mayor cantidad de clasificaciones en competencias. 
SELECT d.matricula, d.pais, COUNT(*) AS total_clasificaciones
FROM DEPORTISTA d
LEFT JOIN CLASIFICACION c ON d.matricula = c.deportista
LEFT JOIN PRUEBA p ON c.prueba = p.identificador
GROUP BY d.matricula, d.pais
ORDER BY total_clasificaciones DESC
LIMIT 10;
-- ES util para ver que deportistas tuvieron mayor participación

-- 12 Esta consulta recuperará los apellidos y nombres de los participantes de nacionalidad mexicana, junto con la disciplina en la que compitieron
SELECT d.apellidos, d.nombre, p.disciplina AS competencia
FROM DEPORTISTA d
INNER JOIN CLASIFICACION c ON d.matricula = c.deportista
INNER JOIN PRUEBA p ON c.prueba = p.identificador
WHERE d.pais LIKE '%México%';
-- Es util para ver a loo competidores mexicanos y en que compiten
