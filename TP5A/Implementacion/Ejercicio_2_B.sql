CREATE SCHEMA IF NOT EXISTS esquema_grupo3;
SET search_path TO esquema_grupo3;

CREATE DOMAIN dominio_sexo AS CHAR(1) DEFAULT 'X' CHECK (VALUE IN ('X','M','F'));

CREATE TABLE Paciente (
nro_doc VARCHAR(8) NOT NULL,
tipo_doc VARCHAR(20) NOT NULL,
sexo dominio_sexo NOT NULL,
nombre VARCHAR(30) NOT NULL, 
apellido VARCHAR(30) NOT NULL, 
nro_afiliado VARCHAR(30), 
fecha_nacimiento DATE, 
fecha_afiliado DATE, 
direccion_calle VARCHAR(30), 
direccion_nro VARCHAR(10), 
telefono VARCHAR(20), 
localidad VARCHAR(30) NOT NULL, 
edad INT NOT NULL, 
PRIMARY KEY (nro_doc, tipo_doc, sexo), 
CONSTRAINT chk_localidad_nodo3 CHECK (localidad = 'Cipoletti') 
);

-- nodo1

BEGIN;
INSERT INTO esquema_grupo3.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('80000002','DNI','F','Martina','Lopez','LEG114','1985-07-20','MPSP002','2029-01-01','Belgrano','300','2994700001');

PREPARE TRANSACTION 'tr_grupo3_001'; 

-- nodo3

BEGIN;
INSERT INTO esquema_grupo3.paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, localidad, edad) VALUES ('81000002','DNI','F','Carla','Gimenez','AF-4002','1992-08-05','2021-01-01','Mitre','100','2944700001','Cipoletti',34); 
PREPARE TRANSACTION 'tr_grupo3_001';
