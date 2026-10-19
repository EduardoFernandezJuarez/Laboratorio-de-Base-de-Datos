INSERT INTO Paciente_Hash(
    nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado,
    fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono
)
WITH base AS (
    SELECT i, 4000000 + (i::bigint * 7919) % 22000000 AS doc, random() AS r
    FROM generate_series(1, 500000) AS i
),
fechas AS (
    SELECT *,
        (CURRENT_DATE - INTERVAL '85 years')::date
            + ((doc - 4000000) / 22000000.0 * 12775)::int AS fecha_nacimiento
    FROM base
)
SELECT
    f.doc::text,
    'DNI',
    (CASE WHEN f.r < 0.49 THEN 'M' WHEN f.r < 0.98 THEN 'F' ELSE 'X' END)::dominio_sexo,
    (ARRAY['Juan','María','Carlos','Lucía','Pedro','Ana','Diego','Sofía',
           'Martín','Laura','Pablo','Valentina','Jorge','Camila','Luis'])
           [floor(random()*15)::int + 1],
    (ARRAY['González','Rodríguez','Fernández','López','Martínez','Pérez',
           'Gómez','Sánchez','Romero','Díaz','Álvarez','Torres','Ruiz',
           'Ramírez','Flores'])[floor(random()*15)::int + 1],
    'AF' || lpad(f.i::text, 8, '0'),
    f.fecha_nacimiento,
    LEAST(f.fecha_nacimiento + 6570 + (random()*10000)::int, CURRENT_DATE),  -- afiliación después de los 18 años
    (ARRAY['San Martín','Belgrano','Rivadavia','Mitre','Sarmiento','Roca',
           'Av. Argentina','Libertad','Moreno','Alberdi'])
           [floor(random()*10)::int + 1],
    ((random()*5000)::int + 1),
    '299' || lpad((random()*9999999)::int::text, 7, '0')
FROM fechas f
WHERE NOT EXISTS (SELECT 1 FROM Paciente p WHERE p.nro_doc = f.doc::text)
ON CONFLICT DO NOTHING;

INSERT INTO Paciente_ArbolB(
    nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado,
    fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono
)
WITH base AS (
    SELECT i, 4000000 + (i::bigint * 7919) % 22000000 AS doc, random() AS r
    FROM generate_series(1, 500000) AS i
),
fechas AS (
    SELECT *,
        (CURRENT_DATE - INTERVAL '85 years')::date
            + ((doc - 4000000) / 22000000.0 * 12775)::int AS fecha_nacimiento
    FROM base
)
SELECT
    f.doc::text,
    'DNI',
    (CASE WHEN f.r < 0.49 THEN 'M' WHEN f.r < 0.98 THEN 'F' ELSE 'X' END)::dominio_sexo,
    (ARRAY['Juan','María','Carlos','Lucía','Pedro','Ana','Diego','Sofía',
           'Martín','Laura','Pablo','Valentina','Jorge','Camila','Luis'])
           [floor(random()*15)::int + 1],
    (ARRAY['González','Rodríguez','Fernández','López','Martínez','Pérez',
           'Gómez','Sánchez','Romero','Díaz','Álvarez','Torres','Ruiz',
           'Ramírez','Flores'])[floor(random()*15)::int + 1],
    'AF' || lpad(f.i::text, 8, '0'),
    f.fecha_nacimiento,
    LEAST(f.fecha_nacimiento + 6570 + (random()*10000)::int, CURRENT_DATE),  -- afiliación después de los 18 años
    (ARRAY['San Martín','Belgrano','Rivadavia','Mitre','Sarmiento','Roca',
           'Av. Argentina','Libertad','Moreno','Alberdi'])
           [floor(random()*10)::int + 1],
    ((random()*5000)::int + 1),
    '299' || lpad((random()*9999999)::int::text, 7, '0')
FROM fechas f
WHERE NOT EXISTS (SELECT 1 FROM Paciente p WHERE p.nro_doc = f.doc::text)
ON CONFLICT DO NOTHING;
