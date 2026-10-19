SET SESSION max_recursive_iterations = 500000;

INSERT IGNORE INTO Paciente_Hash (
    nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado,
    fecha_nacimiento, fecha_afiliado, direccion_calle,
    direccion_nro, telefono
)
WITH RECURSIVE base AS (
    SELECT 1 AS i

    UNION ALL

    SELECT i + 1
    FROM base
    WHERE i < 500000
)
SELECT
    CAST(4000000 + (i * 7919) % 22000000 AS CHAR),
    'DNI',
    CASE
        WHEN RAND() < 0.49 THEN 'M'
        WHEN RAND() < 0.98 THEN 'F'
        ELSE 'X'
    END,
    ELT(FLOOR(1 + RAND() * 15),
        'Juan','María','Carlos','Lucía','Pedro','Ana','Diego','Sofía',
        'Martín','Laura','Pablo','Valentina','Jorge','Camila','Luis'
    ),
    ELT(FLOOR(1 + RAND() * 15),
        'González','Rodríguez','Fernández','López','Martínez','Pérez',
        'Gómez','Sánchez','Romero','Díaz','Álvarez','Torres','Ruiz',
        'Ramírez','Flores'
    ),
    CONCAT('AF', LPAD(i, 8, '0')),
    DATE_SUB(CURRENT_DATE, INTERVAL 85 YEAR)
        + INTERVAL FLOOR(((4000000 + (i * 7919) % 22000000) - 4000000)
            / 22000000.0 * 12775) DAY,
    LEAST(
        DATE_SUB(CURRENT_DATE, INTERVAL 85 YEAR)
            + INTERVAL FLOOR(((4000000 + (i * 7919) % 22000000) - 4000000)
                / 22000000.0 * 12775) DAY
            + INTERVAL (6570 + FLOOR(RAND() * 10000)) DAY,
        CURRENT_DATE
    ),
    ELT(FLOOR(1 + RAND() * 10),
        'San Martín','Belgrano','Rivadavia','Mitre','Sarmiento',
        'Roca','Av. Argentina','Libertad','Moreno','Alberdi'
    ),
    FLOOR(1 + RAND() * 5000),
    CONCAT('299', LPAD(FLOOR(RAND() * 10000000), 7, '0'))
FROM base;

INSERT IGNORE INTO Paciente_ArbolB (
    nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado,
    fecha_nacimiento, fecha_afiliado, direccion_calle,
    direccion_nro, telefono
)
WITH RECURSIVE base AS (
    SELECT 1 AS i

    UNION ALL

    SELECT i + 1
    FROM base
    WHERE i < 500000
)
SELECT
    CAST(4000000 + (i * 7919) % 22000000 AS CHAR),
    'DNI',
    CASE
        WHEN RAND() < 0.49 THEN 'M'
        WHEN RAND() < 0.98 THEN 'F'
        ELSE 'X'
    END,
    ELT(FLOOR(1 + RAND() * 15),
        'Juan','María','Carlos','Lucía','Pedro','Ana','Diego','Sofía',
        'Martín','Laura','Pablo','Valentina','Jorge','Camila','Luis'
    ),
    ELT(FLOOR(1 + RAND() * 15),
        'González','Rodríguez','Fernández','López','Martínez','Pérez',
        'Gómez','Sánchez','Romero','Díaz','Álvarez','Torres','Ruiz',
        'Ramírez','Flores'
    ),
    CONCAT('AF', LPAD(i, 8, '0')),
    DATE_SUB(CURRENT_DATE, INTERVAL 85 YEAR)
        + INTERVAL FLOOR(((4000000 + (i * 7919) % 22000000) - 4000000)
            / 22000000.0 * 12775) DAY,
    LEAST(
        DATE_SUB(CURRENT_DATE, INTERVAL 85 YEAR)
            + INTERVAL FLOOR(((4000000 + (i * 7919) % 22000000) - 4000000)
                / 22000000.0 * 12775) DAY
            + INTERVAL (6570 + FLOOR(RAND() * 10000)) DAY,
        CURRENT_DATE
    ),
    ELT(FLOOR(1 + RAND() * 10),
        'San Martín','Belgrano','Rivadavia','Mitre','Sarmiento',
        'Roca','Av. Argentina','Libertad','Moreno','Alberdi'
    ),
    FLOOR(1 + RAND() * 5000),
    CONCAT('299', LPAD(FLOOR(RAND() * 10000000), 7, '0'))
FROM base;
