-- Mostrar todos los alumnos
SELECT * FROM alumnos;

-- Mostrar materias con sus profesores
SELECT m.nombre AS materia, m.creditos, CONCAT(p.nombre, ' ', p.apellido) AS profesor
FROM materias m
JOIN profesores p ON m.id_profesor = p.id_profesor;

-- Mostrar calificaciones de un alumno
SELECT a.nombre, a.apellido, ma.nombre AS materia, am.calificacion
FROM alumnos a
JOIN alumno_materia am ON a.id_alumno = am.id_alumno
JOIN materias ma ON am.id_materia = ma.id_materia
WHERE a.id_alumno = 1;