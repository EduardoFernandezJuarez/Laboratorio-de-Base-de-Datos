-- Creacion base de datos en nodo1

CREATE SCHEMA IF NOT EXISTS esquema_grupo3;
SET search_path TO esquema_grupo3;

CREATE DOMAIN tipoDocumento AS VARCHAR(20) DEFAULT 'DNI'
    CHECK (VALUE IN ('DNI', 'pasaporte', 'CUIL', 'LC', 'LE'));

CREATE DOMAIN dominio_sexo AS CHAR(1) DEFAULT 'X'
    CHECK (VALUE IN ('X', 'M', 'F'));

CREATE DOMAIN vencimiento_matricula AS DATE NOT NULL CHECK (VALUE >= CURRENT_DATE);

CREATE DOMAIN estados_Visita AS VARCHAR(30) DEFAULT 'programada'
    CHECK (VALUE IN ('programada','fallada','realizada','pendiente de reasignacion','cancelada'));

CREATE TABLE Profesional (
    nro_doc VARCHAR(8) NOT NULL,
    tipo_doc tipoDocumento,
    sexo dominio_sexo,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    legajo VARCHAR(20) PRIMARY KEY,
    fecha_nacimiento DATE,
    matricula VARCHAR(20),
    fecha_vencimiento_matricula vencimiento_matricula,
    direccion_calle VARCHAR(30),
    direccion_nro VARCHAR(10),
    telefono VARCHAR(20)
);

CREATE TABLE Paciente (
    nro_doc VARCHAR(8) NOT NULL,
    tipo_doc VARCHAR(20) NOT NULL,
    sexo dominio_sexo NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    nro_afiliado VARCHAR(30),
    fecha_nacimiento DATE,
    fecha_afiliado DATE,
    direccion_calle VARCHAR(30),
    direccion_nro VARCHAR(10),
    telefono VARCHAR(20),
    localidad VARCHAR(30),
    edad INT NOT NULL CHECK (edad > 0 AND edad < 120),
    PRIMARY KEY (nro_doc, tipo_doc, sexo)
);

CREATE TABLE Turno (
    id_turno SERIAL,
    hora_Inicio TIME NOT NULL,
    hora_Fin TIME NOT NULL,
    fecha DATE NOT NULL,
    legajo VARCHAR(20) NOT NULL REFERENCES Profesional(legajo) ON DELETE RESTRICT,
    PRIMARY KEY (id_turno, legajo)
);

CREATE TABLE Visita (
    nro_doc VARCHAR(8) NOT NULL,
    tipo_doc tipoDocumento,
    id_visita SERIAL PRIMARY KEY,
    fecha DATE NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME,
    estado estados_Visita,
    legajo VARCHAR(20) NOT NULL REFERENCES Profesional(legajo) ON DELETE NO ACTION,
    sexo dominio_sexo,
    FOREIGN KEY (tipo_doc, nro_doc, sexo) REFERENCES Paciente(tipo_doc, nro_doc, sexo) ON DELETE RESTRICT
);

INSERT INTO Profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono)
SELECT
    (50000000 + i)::text,
    'DNI',
    (CASE WHEN r < 0.49 THEN 'M' WHEN r < 0.98 THEN 'F' ELSE 'X' END)::dominio_sexo,
    (ARRAY['Juan','María','Carlos','Lucía','Pedro','Ana','Diego','Sofía',
           'Martín','Laura','Pablo','Valentina','Jorge','Camila','Luis'])[floor(random()*15)::int + 1],
    (ARRAY['González','Rodríguez','Fernández','López','Martínez','Pérez',
           'Gómez','Sánchez','Romero','Díaz','Álvarez','Torres','Ruiz',
           'Ramírez','Flores'])[floor(random()*15)::int + 1],
    'GEN' || lpad(i::text, 3, '0'),
    (CURRENT_DATE - INTERVAL '65 years')::date + (random() * 40 * 365)::int,
    'MPGEN' || lpad(i::text, 3, '0'),
    CURRENT_DATE + (180 + (random()*900)::int),
    (ARRAY['San Martín','Belgrano','Rivadavia','Mitre','Sarmiento','Roca',
           'Av. Argentina','Libertad','Moreno','Alberdi'])[floor(random()*10)::int + 1],
    ((random()*999)::int + 1)::text,
    '299' || lpad((random()*9999999)::int::text, 7, '0')
FROM (SELECT i, random() AS r FROM generate_series(1, 20) AS i) s;

INSERT INTO Paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, localidad, edad)
SELECT
    (60000000 + i)::text,
    'DNI',
    (CASE WHEN r < 0.49 THEN 'M' WHEN r < 0.98 THEN 'F' ELSE 'X' END)::dominio_sexo,
    (ARRAY['Juan','María','Carlos','Lucía','Pedro','Ana','Diego','Sofía',
           'Martín','Laura','Pablo','Valentina','Jorge','Camila','Luis'])[floor(random()*15)::int + 1],
    (ARRAY['González','Rodríguez','Fernández','López','Martínez','Pérez',
           'Gómez','Sánchez','Romero','Díaz','Álvarez','Torres','Ruiz',
           'Ramírez','Flores'])[floor(random()*15)::int + 1],
    'AFGEN' || lpad(i::text, 3, '0'),
    fecha_nac,
    LEAST((fecha_nac + INTERVAL '18 years')::date + (random()*3650)::int, CURRENT_DATE)::date,
    (ARRAY['San Martín','Belgrano','Rivadavia','Mitre','Sarmiento','Roca',
           'Av. Argentina','Libertad','Moreno','Alberdi'])[floor(random()*10)::int + 1],
    ((random()*999)::int + 1)::text,
    '299' || lpad((random()*9999999)::int::text, 7, '0'),
    (ARRAY['General Roca','Neuquen','Allen','Cipolletti','Bariloche'])[floor(random()*5)::int + 1],
    GREATEST(1, LEAST(119, EXTRACT(YEAR FROM age(CURRENT_DATE, fecha_nac))::int))
FROM (
    SELECT i, random() AS r,
           (CURRENT_DATE - INTERVAL '90 years')::date + (random() * 88 * 365)::int AS fecha_nac
    FROM generate_series(1, 30) AS i
) s;

INSERT INTO Turno (hora_Inicio, hora_Fin, fecha, legajo)
SELECT
    (TIME '08:00' + (floor(random()*8)::int::text || ' hours')::interval),
    (TIME '08:00' + (floor(random()*8)::int::text || ' hours')::interval + INTERVAL '3 hours'),
    CURRENT_DATE + floor(random()*30)::int,
    (SELECT legajo FROM Profesional ORDER BY random() LIMIT 1)
FROM generate_series(1, 40);

INSERT INTO Visita (nro_doc, tipo_doc, fecha, hora_inicio, hora_fin, estado, legajo, sexo)
SELECT
    p.nro_doc,
    p.tipo_doc::tipoDocumento,
    CURRENT_DATE - floor(random()*30)::int,
    (TIME '08:00' + (floor(random()*10)::int::text || ' hours')::interval),
    (TIME '08:00' + (floor(random()*10)::int::text || ' hours')::interval + INTERVAL '30 minutes'),
    (ARRAY['programada','fallada','realizada','pendiente de reasignacion','cancelada'])[floor(random()*5)::int + 1]::estados_Visita,
    pr.legajo,
    p.sexo
FROM generate_series(1, 50) AS g
CROSS JOIN LATERAL (SELECT nro_doc, tipo_doc, sexo FROM Paciente ORDER BY random() LIMIT 1) p
CROSS JOIN LATERAL (SELECT legajo FROM Profesional ORDER BY random() LIMIT 1) pr;

