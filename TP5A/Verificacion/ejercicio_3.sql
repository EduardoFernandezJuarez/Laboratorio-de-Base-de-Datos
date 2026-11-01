SET search_path TO esquema_grupo3;

--insertar desde la tabla padre (tuple routing)
INSERT INTO paciente_dist (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado,
  fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, localidad, edad)
SELECT nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado,
  fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, localidad, edad
FROM paciente;

-- En qué partición quedó cada fila
SELECT tableoid::regclass AS particion, nro_doc, nombre, localidad
FROM paciente_dist ORDER BY particion, localidad;

SELECT tableoid::regclass AS particion, localidad, count(*)
FROM paciente_dist GROUP BY 1, 2 ORDER BY 1, 2;

-- nodo3: las filas de Cipoletti están guardadas físicamente allí
SELECT nro_doc, nombre, localidad FROM esquema_grupo3.paciente;

-- Filtro zona remota
EXPLAIN (VERBOSE, COSTS OFF)
SELECT * FROM paciente_dist WHERE localidad = 'Cipoletti';

-- Filtro zona local
EXPLAIN (VERBOSE, COSTS OFF)
SELECT * FROM paciente_dist WHERE localidad = 'Neuquen';

-- Sin filtro
EXPLAIN (VERBOSE, COSTS OFF)
SELECT * FROM paciente_dist;

-- Profesionales que atendieron a ms de un paciente
SELECT pr.legajo, pr.nombre, pr.apellido, count(DISTINCT p.nro_doc) AS pacientes
FROM profesional pr
JOIN visita v ON v.legajo = pr.legajo
JOIN paciente_dist p ON p.nro_doc = v.nro_doc AND p.tipo_doc = v.tipo_doc AND p.sexo = v.sexo
GROUP BY pr.legajo, pr.nombre, pr.apellido
HAVING count(DISTINCT p.nro_doc) > 1;

-- Plan real
EXPLAIN (ANALYZE, VERBOSE)
SELECT pr.legajo, pr.nombre, pr.apellido, count(DISTINCT p.nro_doc) AS pacientes
FROM profesional pr
JOIN visita v ON v.legajo = pr.legajo
JOIN paciente_dist p ON p.nro_doc = v.nro_doc AND p.tipo_doc = v.tipo_doc AND p.sexo = v.sexo
GROUP BY pr.legajo, pr.nombre, pr.apellido
HAVING count(DISTINCT p.nro_doc) > 1;