-- Antes de la caída
SELECT gid, prepared FROM pg_prepared_xacts;
-- Terminal del servidor: matar nodo3
podman ps -a --format "table {{.Names}}\t{{.Status}}"
podman kill nodo3

SET search_path TO esquema_grupo3;

-- Sin filtro
SELECT count(*) FROM paciente_dist;
-- Con filtro local
SELECT count(*) FROM paciente_dist WHERE localidad = 'Neuquen';

-- Otra sesión
UPDATE profesional SET telefono = '0000000000' WHERE legajo = 'LEG115';
-- Chocar con su clave primaria
INSERT INTO profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, matricula, fecha_vencimiento_matricula)
VALUES ('99999999','DNI','M','Prueba','Bloqueo','LEG115','MPTEST','2029-01-01');

-- bloqueos de la transacción preparada
SELECT locktype, relation::regclass, mode, granted, pid
FROM pg_locks WHERE pid IS NULL;

-- Quien espera a quien
SELECT pid, pg_blocking_pids(pid) AS bloqueado_por,
       wait_event_type, left(query, 50) AS consulta
FROM pg_stat_activity WHERE wait_event_type = 'Lock';

-- Cancelar la sesión que quedó esperando 
SELECT pg_terminate_backend(21908);

-- Terminal del servidor:
podman start nodo3
-- nodo3 y nodo1
SELECT gid, prepared, owner, database FROM pg_prepared_xacts;
-- Datos todavía no visibles
-- nodo3
SELECT count(*) FROM esquema_grupo3.paciente WHERE nro_doc = '81000005';
-- nodo1
SELECT count(*) FROM esquema_grupo3.profesional WHERE legajo = 'LEG115';


-- Ambos nodos votaron "listo"
COMMIT PREPARED 'tr_grupo3_002';

-- nodo1
SELECT 'LEG115 en profesional' AS chequeo, count(*) FROM esquema_grupo3.profesional WHERE legajo = 'LEG115'
UNION ALL SELECT '81000005 vía paciente_dist', count(*) FROM esquema_grupo3.paciente_dist WHERE nro_doc = '81000005'
UNION ALL SELECT 'transacciones preparadas', count(*) FROM pg_prepared_xacts;
SELECT tableoid::regclass AS particion, nro_doc, nombre, apellido
FROM esquema_grupo3.paciente_dist WHERE nro_doc = '81000005';
SELECT count(*) FROM esquema_grupo3.profesional;

-- nodo3
SELECT '81000005 en paciente' AS chequeo, count(*) FROM esquema_grupo3.paciente WHERE nro_doc = '81000005'
UNION ALL SELECT 'transacciones preparadas', count(*) FROM pg_prepared_xacts;

-- nodo2
SELECT 'LEG115 en profesional' AS chequeo, count(*) FROM esquema_grupo3.profesional WHERE legajo = 'LEG115'
UNION ALL SELECT 'total profesionales', count(*) FROM esquema_grupo3.profesional;


-- nodo1
SELECT client_addr, state, sync_state, sent_lsn, replay_lsn FROM pg_stat_replication;
-- Terminal del servidor:  podman kill nodo2   → la consulta anterior devuelve 0 filas

-- Nueva transacción 2PC con el nodo2 caído
-- nodo1:
BEGIN;
INSERT INTO esquema_grupo3.profesional (nro_doc,tipo_doc,sexo,nombre,apellido,legajo,fecha_nacimiento,matricula,fecha_vencimiento_matricula,direccion_calle,direccion_nro,telefono)
VALUES ('80000005','DNI','M','Mateo','Rivas','LEG117','1987-02-10','MPSP005','2029-09-01','Roca','88','2994800005');
PREPARE TRANSACTION 'tr_grupo3_004';
-- nodo3:
BEGIN;
INSERT INTO esquema_grupo3.paciente (nro_doc,tipo_doc,sexo,nombre,apellido,nro_afiliado,fecha_nacimiento,fecha_afiliado,direccion_calle,direccion_nro,telefono,localidad,edad)
VALUES ('81000007','DNI','F','Julia','Mendez','AF-4005','1994-04-04','2022-03-01','Mitre','45','2944800007','Cipoletti',32);
PREPARE TRANSACTION 'tr_grupo3_004';
-- nodo1 y nodo3
COMMIT PREPARED 'tr_grupo3_004';
-- nodo1 
SELECT count(*) FROM esquema_grupo3.profesional WHERE legajo = 'LEG117';

-- Terminal del servidor:
podman start nodo2
podman logs --tail 15 nodo2      ("started streaming WAL from primary")
-- nodo1: de nuevo streaming, sent_lsn = replay_lsn
SELECT client_addr, state, sent_lsn, replay_lsn FROM pg_stat_replication;
-- nodo2: el registro escrito durante la caída ya está
SELECT legajo, nombre, apellido FROM esquema_grupo3.profesional WHERE legajo = 'LEG117';