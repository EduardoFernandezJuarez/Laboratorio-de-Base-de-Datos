-- nodo1: podman exec -it nodo1 psql -U postgres -d homecare
-- No debe quedar ninguna transacción abierta
SELECT pid, state, left(query,60) AS consulta
FROM pg_stat_activity WHERE state LIKE 'idle in transaction%';

-- Se conserva lo anterior a sp1 y se descarta lo posterior
SELECT 'Profesional LEG113' AS registro, count(*) AS cantidad FROM esquema_grupo3.profesional WHERE legajo='LEG113'
UNION ALL SELECT 'Paciente 81000001', count(*) FROM esquema_grupo3.paciente WHERE nro_doc='81000001'
UNION ALL SELECT 'Visita 81000001/LEG113', count(*) FROM esquema_grupo3.visita WHERE nro_doc='81000001' AND legajo='LEG113';

-- nodo2 (réplica): podman exec -it nodo2 psql -U postgres -d homecare
-- Misma consulta de los tres registros 
SELECT 'Profesional LEG113' AS registro, count(*) AS cantidad FROM esquema_grupo3.profesional WHERE legajo='LEG113'
UNION ALL SELECT 'Paciente 81000001', count(*) FROM esquema_grupo3.paciente WHERE nro_doc='81000001'
UNION ALL SELECT 'Visita 81000001/LEG113', count(*) FROM esquema_grupo3.visita WHERE nro_doc='81000001' AND legajo='LEG113';
SELECT pg_is_in_recovery();