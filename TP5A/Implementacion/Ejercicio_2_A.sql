BEGIN;
INSERT INTO esquema_grupo3.profesional (nro_doc,tipo_doc,sexo,nombre,apellido,legajo,fecha_nacimiento,matricula,fecha_vencimiento_matricula,direccion_calle,direccion_nro,telefono) VALUES ('80000001','DNI','F','Carla','Suarez','LEG113','1988-04-12','MPSP001 ','2028-01-01','Roca','10','2994500001');

SAVEPOINT sp1;

INSERT INTO esquema_grupo3.paciente (nro_doc,tipo_doc,sexo,nombre,apellido,nro_afiliado,fecha_nacimiento,fecha_afiliado,direccion_calle,direccion_nro,telefono,localidad,edad) VALUES ('81000001','DNI','F','Patricia','Nuñez','AF-4001','1978-03-20','2019-05-05','San Martin','300','2994600001','Cipoletti',48);
SAVEPOINT sp2;

INSERT INTO esquema_grupo3.visita (nro_doc,tipo_doc,fecha,hora_inicio,hora_fin,estado,legajo,sexo) VALUES ('81000001','DNI','2026-10-27','10:00','11:30','programada','LEG113','F');

ROLLBACK TO SAVEPOINT sp1;
