-- nodo1 y nodo3: debe aparecer tr_grupo3_001
SELECT gid, prepared, owner, database FROM pg_prepared_xacts;

-- nodo1 
SELECT count(*) FROM esquema_grupo3.profesional WHERE legajo = 'LEG114';
-- nodo3 
SELECT count(*) FROM esquema_grupo3.paciente WHERE nro_doc = '81000002';

-- Bloqueos retenidos por transacciones preparadas
SELECT locktype, relation::regclass, mode, granted, pid
FROM pg_locks WHERE pid IS NULL;

-- Ambos nodos votaron "listo". Ejecutar en nodo1 y en nodo3:
COMMIT PREPARED 'tr_grupo3_001';

ya no figura tr_grupo3_001 en ninguno de los dos nodos
SELECT gid, prepared FROM pg_prepared_xacts;
-- nodo1 y nodo2 
SELECT count(*) FROM esquema_grupo3.profesional WHERE legajo = 'LEG114';
-- nodo3 (esperado: 1)
SELECT count(*) FROM esquema_grupo3.paciente WHERE nro_doc = '81000002';

-- nodo1: prepara su parte y vota "listo"
BEGIN;
INSERT INTO esquema_grupo3.profesional (nro_doc,tipo_doc,sexo,nombre,apellido,legajo,fecha_nacimiento,matricula,fecha_vencimiento_matricula,direccion_calle,direccion_nro,telefono)
VALUES ('80000004','DNI','F','Rocio','Paz','LEG116','1990-01-15','MPSP004','2029-03-01','Mitre','70','2994800001');
PREPARE TRANSACTION 'tr_grupo3_003';

-- nodo3: localidad 'Neuquen' viola chk_localidad_nodo3
BEGIN;
INSERT INTO esquema_grupo3.paciente (nro_doc,tipo_doc,sexo,nombre,apellido,nro_afiliado,fecha_nacimiento,fecha_afiliado,direccion_calle,direccion_nro,telefono,localidad,edad)
VALUES ('81000006','DNI','M','Lucas','Rios','AF-4004','1989-06-10','2020-01-01','Alberdi','15','2944800003','Neuquen',37);
-- ERROR: violates check constraint "chk_localidad_nodo3"
PREPARE TRANSACTION 'tr_grupo3_003';

-- Estado antes de decidir: en nodo1 figura tr_grupo3_003, en nodo3 no
SELECT gid FROM pg_prepared_xacts;

-- nodo1: el coordinador decide abortar
ROLLBACK PREPARED 'tr_grupo3_003';

-- Verificación final: no quedó nada en ningún nodo
-- nodo1
SELECT count(*) FROM esquema_grupo3.profesional WHERE legajo = 'LEG116';
-- nodo3
SELECT count(*) FROM esquema_grupo3.paciente WHERE nro_doc = '81000006';