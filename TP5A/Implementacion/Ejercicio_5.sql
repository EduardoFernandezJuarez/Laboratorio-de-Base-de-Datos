-- EJERCICIO 5 nodo1 terminal A

BEGIN;
UPDATE esquema_grupo3.profesional SET telefono = '2990000001' WHERE legajo = 'GEN003';
SELECT pid, wait_event_type, wait_event, state, now() - query_start AS duracion, query FROM pg_stat_activity WHERE datname = 'homecare';
SELECT pid, relation::regclass, mode, granted FROM pg_locks WHERE NOT granted;

-- EJERCICIO 5 nodo1 terminal B

BEGIN;
UPDATE esquema_grupo3.profesional SET telefono = '2990000001' WHERE legajo = 'GEN003';

-- EJERCICIO 5 nodo3 terminal A

BEGIN;
UPDATE esquema_grupo3.paciente SET telefono = '2944000001' WHERE nro_doc = '81000002';
SELECT pid, wait_event_type, wait_event, state, now() - query_start AS duracion, query FROM pg_stat_activity WHERE datname = 'homecare';
SELECT pid, relation::regclass, mode, granted FROM pg_locks WHERE NOT granted;

-- EJERCICIO 5 nodo3 terminal B

BEGIN;
UPDATE esquema_grupo3.paciente SET telefono = '2944000001' WHERE nro_doc = '81000002';
