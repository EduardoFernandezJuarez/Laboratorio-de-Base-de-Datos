USE homecare;

-- 1. Nueva tabla tipo_producto: clasifica los suministros
CREATE TABLE tipo_producto_esquema_grupo3 (
    idtipo INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(50)
);

-- 2. Vinculacion de tipo_producto con Suministro mediante clave foranea.
-- Se elige Suministro porque Medicamento ya cuenta con su propio atributo "tipo".
CREATE TABLE tiene_un_esquema_grupo3 (
    id_suministro INT NOT NULL,
    idtipo INT NOT NULL,
    PRIMARY KEY (id_suministro),
    FOREIGN KEY (id_suministro) REFERENCES Suministro_esquema_grupo3(id_suministro) ON DELETE NO ACTION,
    FOREIGN KEY (idtipo) REFERENCES tipo_producto_esquema_grupo3(idtipo) ON DELETE NO ACTION
);

-- 3. ALTER a Paciente para registrar la fecha de alta en el sistema Home Care.
ALTER TABLE Paciente_esquema_grupo3
    ADD COLUMN fecha_alta DATE NOT NULL DEFAULT (CURRENT_DATE);

-- PARA EL ESQUEMA_ALT

CREATE TABLE tipo_producto_esquema_grupo3_alt (
    idtipo INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(50)
);

CREATE TABLE tiene_un_esquema_grupo3_alt (
    id_suministro INT NOT NULL,
    idtipo INT NOT NULL,
    PRIMARY KEY (id_suministro),
    FOREIGN KEY (id_suministro) REFERENCES Suministro_esquema_grupo3_alt(id_suministro) ON DELETE NO ACTION,
    FOREIGN KEY (idtipo) REFERENCES tipo_producto_esquema_grupo3_alt(idtipo) ON DELETE NO ACTION
);

ALTER TABLE Paciente_esquema_grupo3_alt
    ADD COLUMN fecha_alta DATE NOT NULL DEFAULT (CURRENT_DATE);
