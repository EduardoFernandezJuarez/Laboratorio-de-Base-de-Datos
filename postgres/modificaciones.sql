SET search_path TO esquema_grupo3;

-- ============================
-- 6. Modificacion
-- ============================

-- 1. Nueva tabla tipo_producto

CREATE TABLE tipo_producto (
    id_tipo SERIAL PRIMARY KEY,
    descripcion VARCHAR(50)
);

-- 2. Vinculacion de tipo_producto con Suministro mediante clave foranea

CREATE TABLE tiene_un (
    id_suministro INT NOT NULL REFERENCES Suministro(id_suministro) ON DELETE NO ACTION,
    id_tipo INT NOT NULL REFERENCES tipo_producto(id_tipo) ON DELETE NO ACTION,
    PRIMARY KEY (id_suministro)
);

-- 3. ALTER a Paciente para registrar la fecha de alta

ALTER TABLE Paciente
    ADD COLUMN fecha_alta DATE NOT NULL DEFAULT CURRENT_DATE;

