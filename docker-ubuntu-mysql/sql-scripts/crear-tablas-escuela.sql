-- Crear la base de datos
CREATE DATABASE escuela;
USE escuela;

-- Tabla de profesores
CREATE TABLE profesores (
    id_profesor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    especialidad VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

-- Tabla de materias
CREATE TABLE materias (
    id_materia INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    creditos INT DEFAULT 1,
    id_profesor INT,
    FOREIGN KEY (id_profesor) REFERENCES profesores(id_profesor)
);

-- Tabla de alumnos
CREATE TABLE alumnos (
    id_alumno INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE,
    grado VARCHAR(20)
);

-- Tabla intermedia para relación alumnos-materias (matriculación)
CREATE TABLE alumno_materia (
    id_alumno INT,
    id_materia INT,
    calificacion DECIMAL(5,2),
    PRIMARY KEY (id_alumno, id_materia),
    FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno),
    FOREIGN KEY (id_materia) REFERENCES materias(id_materia)
);