CREATE EXTENSION IF NOT EXISTS postgres_fdw;
CREATE SERVER servidor_nodo3 FOREIGN DATA WRAPPER postgres_fdw OPTIONS (host 'nodo3', dbname 'homecare', port '5432');

CREATE USER MAPPING FOR postgres SERVER servidor_nodo3 OPTIONS (user 'postgres', password 'grupo3pass');

SET search_path TO esquema_grupo3;
CREATE TABLE esquema_grupo3.paciente_dist (nro_doc VARCHAR(8) NOT NULL, tipo_doc VARCHAR(20) NOT NULL, sexo dominio_sexo NOT NULL, nombre VARCHAR(30) NOT NULL, apellido VARCHAR(30) NOT NULL, nro_afiliado VARCHAR(30), fecha_nacimiento DATE, fecha_afiliado DATE, direccion_calle VARCHAR(30), direccion_nro VARCHAR(10), telefono VARCHAR(20), localidad VARCHAR(30) NOT NULL, edad INT NOT NULL CHECK (edad > 0 AND edad < 120)) PARTITION BY LIST (localidad);

CREATE TABLE esquema_grupo3.paciente_local PARTITION OF esquema_grupo3.paciente_dist (PRIMARY KEY (nro_doc, tipo_doc, sexo)) FOR VALUES IN ('Neuquen','General Roca','Allen','Cipolletti');

CREATE FOREIGN TABLE esquema_grupo3.paciente_cipoletti PARTITION OF esquema_grupo3.paciente_dist FOR VALUES IN ('Cipoletti') SERVER servidor_nodo3 OPTIONS (schema_name 'esquema_grupo3', table_name 'paciente');

