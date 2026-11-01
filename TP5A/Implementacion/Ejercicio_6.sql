-- EJECUTADO EN MARIADB ------------------------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE Paciente_esquema_grupo3 ADD COLUMN localidad VARCHAR(50) DEFAULT 'Neuquén';
ALTER TABLE Paciente_esquema_grupo3 ADD COLUMN edad INT CHECK (edad > 0 AND edad < 120);
CREATE FUNCTION calcular_edad(fecha_nac DATE)
 RETURNS INT
 DETERMINISTIC
 BEGIN
 RETURN TIMESTAMPDIFF(YEAR, fecha_nac, CURDATE());
 END$$
 CREATE TRIGGER paciente_calcular_edad
 BEFORE INSERT ON Paciente_esquema_grupo3
   FOR EACH ROW
   BEGIN
   SET NEW.edad = calcular_edad(NEW.fecha_nacimiento);
   END$$
CREATE TRIGGER paciente_actualizar_edad
BEFORE UPDATE ON Paciente_esquema_grupo3
FOR EACH ROW
BEGIN
SET NEW.edad = calcular_edad(NEW.fecha_nacimiento);
END$$

-- PRUEBAS SAVEPOINTS ---------------------  
  
START TRANSACTION;
INSERT INTO Profesional_esquema_grupo3 (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('83000001','DNI','F','Melissa','Guzmán','LEG200','1987-04-22','MPSP500','2029-05-01','Alsina','15','2994911001');
SAVEPOINT sp1;
INSERT INTO Paciente_esquema_grupo3 (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, localidad) VALUES ('84000001','DNI','F','Daniela','Gómez','AF-5001','1995-07-11','2022-02-01','Mitre','80','2994911002','Cipolletti');
SAVEPOINT sp2;
INSERT INTO Visita_esquema_grupo3 (nro_doc, tipo_doc, fecha, hora_inicio, hora_fin, estado, legajo, sexo) VALUES ('84000001','DNI','2026-10-31','09:00','10:00','programada','LEG200','F');
ROLLBACK TO SAVEPOINT sp1;
COMMIT;

-- PRUEBAS XA -----------------------------  

XA START 'tr_grupo3_01','s1';
INSERT INTO Profesional_esquema_grupo3 (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('83000052','DNI','M','Ivan','Suarez','LEG201','1984-09-09','MPSP900','2029-08-01','Belgrano','22','2994911003');
XA END 'tr_grupo3_01','s1';
XA PREPARE 'tr_grupo3_01','s1';
XA COMMIT  'tr_grupo3_01','s1';

-- EN OTRA TERMINAL

XA START 'tr_grupo3_01','s2';
INSERT INTO Paciente_esquema_grupo3 (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, localidad) VALUES ('84000300','DNI','M','Bruno','Thomas','AF-5002','1993-03-18','2022-06-15','Roca','33','2994911004','Allen');
XA END 'tr_grupo3_01','s2';
XA PREPARE 'tr_grupo3_01','s2';
XA RECOVER;
XA COMMIT  'tr_grupo3_01','s2';


