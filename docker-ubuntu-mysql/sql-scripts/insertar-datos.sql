-- Insertar profesores
INSERT INTO profesores (nombre, apellido, especialidad, email) VALUES
('Juan', 'Pérez', 'Matemáticas', 'juan.perez@escuela.com'),
('María', 'Gómez', 'Literatura', 'maria.gomez@escuela.com'),
('Carlos', 'López', 'Ciencias', 'carlos.lopez@escuela.com');

-- Insertar materias
INSERT INTO materias (nombre, creditos, id_profesor) VALUES
('Matemáticas Avanzadas', 4, 1),
('Literatura Española', 3, 2),
('Biología', 4, 3),
('Física', 4, 1);

-- Insertar alumnos
INSERT INTO alumnos (nombre, apellido, fecha_nacimiento, grado) VALUES
('Ana', 'Martínez', '2010-05-15', '10mo'),
('Luis', 'Rodríguez', '2009-08-22', '11vo'),
('Sofía', 'Hernández', '2010-03-30', '10mo');

-- Matricular alumnos en materias
INSERT INTO alumno_materia (id_alumno, id_materia, calificacion) VALUES
(1, 1, 85.5),
(1, 2, 90.0),
(2, 1, 78.0),
(2, 3, 92.5),
(3, 2, 88.0),
(3, 4, 95.0);