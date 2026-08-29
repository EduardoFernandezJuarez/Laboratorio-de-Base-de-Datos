
USE homecare;

-- ============================
-- 1. Personas
-- ============================

CREATE TABLE Profesional_esquema_grupo3 (
    nro_doc VARCHAR(8) NOT NULL,
    tipo_doc VARCHAR(20) DEFAULT 'DNI' CHECK (tipo_doc IN ('DNI','pasaporte','CUIL','LC','LE')),
    sexo CHAR(1) DEFAULT 'X' CHECK (sexo IN ('X','M','F')),
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    legajo VARCHAR(20) PRIMARY KEY,
    fecha_nacimiento DATE,
    matricula VARCHAR(20),
    fecha_vencimiento_matricula DATE NOT NULL,
    direccion_calle VARCHAR(30),
    direccion_nro VARCHAR(10),
    telefono VARCHAR(20)
);

CREATE TABLE Profesional_esquema_grupo3_alt (
    nro_doc VARCHAR(8) NOT NULL,
    tipo_doc VARCHAR(20) DEFAULT 'DNI' CHECK (tipo_doc IN ('DNI','pasaporte','CUIL','LC','LE')),
    sexo CHAR(1) DEFAULT 'X' CHECK (sexo IN ('X','M','F')),
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    legajo VARCHAR(20) PRIMARY KEY,
    fecha_nacimiento DATE,
    matricula VARCHAR(20),
    fecha_vencimiento_matricula DATE NOT NULL,
    direccion_calle VARCHAR(30),
    direccion_nro VARCHAR(10),
    telefono VARCHAR(20)
);

CREATE TABLE Nutricionista_esquema_grupo3 (
    legajo VARCHAR(20) PRIMARY KEY,
    FOREIGN KEY (legajo) REFERENCES Profesional_esquema_grupo3(legajo) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Nutricionista_esquema_grupo3_alt (
    legajo VARCHAR(20) PRIMARY KEY,
    FOREIGN KEY (legajo) REFERENCES Profesional_esquema_grupo3_alt(legajo) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Psicologo_esquema_grupo3 (
    legajo VARCHAR(20) PRIMARY KEY,
    FOREIGN KEY (legajo) REFERENCES Profesional_esquema_grupo3(legajo) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Psicologo_esquema_grupo3_alt (
    legajo VARCHAR(20) PRIMARY KEY,
    FOREIGN KEY (legajo) REFERENCES Profesional_esquema_grupo3_alt(legajo) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Kinesiologo_esquema_grupo3 (
    legajo VARCHAR(20) PRIMARY KEY,
    FOREIGN KEY (legajo) REFERENCES Profesional_esquema_grupo3(legajo) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Kinesiologo_esquema_grupo3_alt (
    legajo VARCHAR(20) PRIMARY KEY,
    FOREIGN KEY (legajo) REFERENCES Profesional_esquema_grupo3_alt(legajo) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Enfermero_esquema_grupo3 (
    legajo VARCHAR(20) PRIMARY KEY,
    FOREIGN KEY (legajo) REFERENCES Profesional_esquema_grupo3(legajo) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Enfermero_esquema_grupo3_alt (
    legajo VARCHAR(20) PRIMARY KEY,
    FOREIGN KEY (legajo) REFERENCES Profesional_esquema_grupo3_alt(legajo) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Medico_esquema_grupo3 (
    legajo VARCHAR(20) PRIMARY KEY,
    FOREIGN KEY (legajo) REFERENCES Profesional_esquema_grupo3(legajo) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Medico_esquema_grupo3_alt (
    legajo VARCHAR(20) PRIMARY KEY,
    FOREIGN KEY (legajo) REFERENCES Profesional_esquema_grupo3_alt(legajo) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE especialidades_esquema_grupo3 (
    legajo VARCHAR(20) NOT NULL,
    nombre_especialidad VARCHAR(30) DEFAULT 'clinica medica' CHECK (nombre_especialidad IN ('clinica medica','pediatria','traumatologia','oftalmologia','urologia','gastroenterologia','oncologia','endocrinologia','reumatologia','nefrologia','ginecologia','cardiologia')),
    PRIMARY KEY (legajo, nombre_especialidad),
    FOREIGN KEY (legajo) REFERENCES Medico_esquema_grupo3(legajo) ON DELETE RESTRICT
);

CREATE TABLE especialidades_esquema_grupo3_alt (
    legajo VARCHAR(20) NOT NULL,
    nombre_especialidad VARCHAR(30) DEFAULT 'clinica medica' CHECK (nombre_especialidad IN ('clinica medica','pediatria','traumatologia','oftalmologia','urologia','gastroenterologia','oncologia','endocrinologia','reumatologia','nefrologia','ginecologia','cardiologia')),
    PRIMARY KEY (legajo, nombre_especialidad),
    FOREIGN KEY (legajo) REFERENCES Medico_esquema_grupo3_alt(legajo) ON DELETE RESTRICT
);

CREATE TABLE Paciente_esquema_grupo3 (
    nro_doc VARCHAR(8) NOT NULL,
    tipo_doc VARCHAR(20) NOT NULL,
    sexo CHAR(1) NOT NULL DEFAULT 'X' CHECK (sexo IN ('X','M','F')),
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    nro_afiliado VARCHAR(30),
    fecha_nacimiento DATE,
    fecha_afiliado DATE,
    direccion_calle VARCHAR(30),
    direccion_nro VARCHAR(10),
    telefono VARCHAR(20),
    fecha_alta DATE NOT NULL DEFAULT (CURRENT_DATE),
    PRIMARY KEY (nro_doc, tipo_doc, sexo),
    UNIQUE KEY uq_paciente_grupo3 (tipo_doc, nro_doc, sexo)
);

CREATE TABLE Paciente_esquema_grupo3_alt (
    nro_doc VARCHAR(8) NOT NULL,
    tipo_doc VARCHAR(20) NOT NULL,
    sexo CHAR(1) NOT NULL DEFAULT 'X' CHECK (sexo IN ('X','M','F')),
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    nro_afiliado VARCHAR(30),
    fecha_nacimiento DATE,
    fecha_afiliado DATE,
    direccion_calle VARCHAR(30),
    direccion_nro VARCHAR(10),
    telefono VARCHAR(20),
    PRIMARY KEY (nro_doc, tipo_doc, sexo),
    UNIQUE KEY uq_paciente_grupo3_alt (tipo_doc, nro_doc, sexo)
);

CREATE TABLE Contacto_emergencia_esquema_grupo3 (
    tipo_doc VARCHAR(20) DEFAULT 'DNI' CHECK (tipo_doc IN ('DNI','pasaporte','CUIL','LC','LE')),
    nro_doc VARCHAR(8) NOT NULL,
    sexo CHAR(1) DEFAULT 'X' CHECK (sexo IN ('X','M','F')),
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    parentesco VARCHAR(30) DEFAULT 'tutor/ra' CHECK (parentesco IN ('tutor/ra','hijo/a','padre','madre','nieto/a','sobrino/a','tio/a','esposo/a','hermano/a')),
    nro_telefono VARCHAR(20),
    PRIMARY KEY (tipo_doc, nro_doc, sexo, nro_telefono),
    FOREIGN KEY (tipo_doc, nro_doc, sexo) REFERENCES Paciente_esquema_grupo3(tipo_doc, nro_doc, sexo) ON DELETE RESTRICT
);

CREATE TABLE Contacto_emergencia_esquema_grupo3_alt (
    tipo_doc VARCHAR(20) DEFAULT 'DNI' CHECK (tipo_doc IN ('DNI','pasaporte','CUIL','LC','LE')),
    nro_doc VARCHAR(8) NOT NULL,
    sexo CHAR(1) DEFAULT 'X' CHECK (sexo IN ('X','M','F')),
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    parentesco VARCHAR(30) DEFAULT 'tutor/ra' CHECK (parentesco IN ('tutor/ra','hijo/a','padre','madre','nieto/a','sobrino/a','tio/a','esposo/a','hermano/a')),
    nro_telefono VARCHAR(20),
    PRIMARY KEY (tipo_doc, nro_doc, sexo, nro_telefono),
    FOREIGN KEY (tipo_doc, nro_doc, sexo) REFERENCES Paciente_esquema_grupo3_alt(tipo_doc, nro_doc, sexo) ON DELETE RESTRICT
);


-- ============================
-- 2. Zonas y coordenadas
-- ============================

CREATE TABLE Zona_esquema_grupo3 (
    id_zona INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(10) DEFAULT 'centro' CHECK (nombre IN ('centro','norte','sur','este','oeste'))
);

CREATE TABLE Zona_esquema_grupo3_alt (
    id_zona INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(10) DEFAULT 'centro' CHECK (nombre IN ('centro','norte','sur','este','oeste'))
);

CREATE TABLE Coordenada_esquema_grupo3 (
    id_coordenada INT AUTO_INCREMENT PRIMARY KEY,
    id_zona INT NOT NULL,
    FOREIGN KEY (id_zona) REFERENCES Zona_esquema_grupo3(id_zona)
);

CREATE TABLE Coordenada_esquema_grupo3_alt (
    id_coordenada INT AUTO_INCREMENT PRIMARY KEY,
    id_zona INT NOT NULL,
    FOREIGN KEY (id_zona) REFERENCES Zona_esquema_grupo3_alt(id_zona)
);

CREATE TABLE atiende_en_esquema_grupo3 (
    id_zona INT NOT NULL,
    legajo VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_zona, legajo),
    FOREIGN KEY (id_zona) REFERENCES Zona_esquema_grupo3(id_zona) ON DELETE CASCADE,
    FOREIGN KEY (legajo) REFERENCES Profesional_esquema_grupo3(legajo) ON DELETE CASCADE
);

CREATE TABLE atiende_en_esquema_grupo3_alt (
    id_zona INT NOT NULL,
    legajo VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_zona, legajo),
    FOREIGN KEY (id_zona) REFERENCES Zona_esquema_grupo3_alt(id_zona) ON DELETE CASCADE,
    FOREIGN KEY (legajo) REFERENCES Profesional_esquema_grupo3_alt(legajo) ON DELETE CASCADE
);

-- ============================
-- 3. Turno y Visita
-- ============================

CREATE TABLE Turno_esquema_grupo3 (
    id_turno INT AUTO_INCREMENT,
    hora_Inicio TIME NOT NULL,
    hora_Fin TIME NOT NULL,
    fecha DATE NOT NULL,
    legajo VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_turno, legajo),
    FOREIGN KEY (legajo) REFERENCES Profesional_esquema_grupo3(legajo) ON DELETE RESTRICT
);

CREATE TABLE Turno_esquema_grupo3_alt (
    id_turno INT AUTO_INCREMENT,
    hora_Inicio TIME NOT NULL,
    hora_Fin TIME NOT NULL,
    fecha DATE NOT NULL,
    legajo VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_turno, legajo),
    FOREIGN KEY (legajo) REFERENCES Profesional_esquema_grupo3_alt(legajo) ON DELETE RESTRICT
);

CREATE TABLE Visita_esquema_grupo3 (
    nro_doc VARCHAR(8) NOT NULL,
    tipo_doc VARCHAR(20) DEFAULT 'DNI' CHECK (tipo_doc IN ('DNI','pasaporte','CUIL','LC','LE')),
    id_visita INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME,
    estado VARCHAR(30) DEFAULT 'programada' CHECK (estado IN ('programada','fallada','realizada','pendiente de reasignacion','cancelada')),
    legajo VARCHAR(20) NOT NULL,
    sexo CHAR(1) DEFAULT 'X' CHECK (sexo IN ('X','M','F')),
    FOREIGN KEY (legajo) REFERENCES Profesional_esquema_grupo3(legajo) ON DELETE NO ACTION,
    FOREIGN KEY (tipo_doc, nro_doc, sexo) REFERENCES Paciente_esquema_grupo3(tipo_doc, nro_doc, sexo) ON DELETE RESTRICT
);

CREATE TABLE Visita_esquema_grupo3_alt (
    nro_doc VARCHAR(8) NOT NULL,
    tipo_doc VARCHAR(20) DEFAULT 'DNI' CHECK (tipo_doc IN ('DNI','pasaporte','CUIL','LC','LE')),
    id_visita INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME,
    estado VARCHAR(30) DEFAULT 'programada' CHECK (estado IN ('programada','fallada','realizada','pendiente de reasignacion','cancelada')),
    legajo VARCHAR(20) NOT NULL,
    sexo CHAR(1) DEFAULT 'X' CHECK (sexo IN ('X','M','F')),
    FOREIGN KEY (legajo) REFERENCES Profesional_esquema_grupo3_alt(legajo) ON DELETE NO ACTION,
    FOREIGN KEY (tipo_doc, nro_doc, sexo) REFERENCES Paciente_esquema_grupo3_alt(tipo_doc, nro_doc, sexo) ON DELETE RESTRICT
);


-- ============================
-- 4. Obra social
-- ============================

CREATE TABLE Obra_social_esquema_grupo3 (
    id_obra_social INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(30) DEFAULT 'Otra' CHECK (tipo IN ('Otra','Sindical','Estatal','Estatal/Provincial','Personal de direccion','Prepaga')),
    plan VARCHAR(30),
    cobertura VARCHAR(80),
    estado VARCHAR(20) DEFAULT 'inactiva' CHECK (estado IN ('activa','inactiva')),
    nombre VARCHAR(30) NOT NULL
);

CREATE TABLE Obra_social_esquema_grupo3_alt (
    id_obra_social INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(30) DEFAULT 'Otra' CHECK (tipo IN ('Otra','Sindical','Estatal','Estatal/Provincial','Personal de direccion','Prepaga')),
    plan VARCHAR(30),
    cobertura VARCHAR(80),
    estado VARCHAR(20) DEFAULT 'inactiva' CHECK (estado IN ('activa','inactiva')),
    nombre VARCHAR(30) NOT NULL
);

CREATE TABLE posee_esquema_grupo3 (
    tipo_doc VARCHAR(20) DEFAULT 'DNI' CHECK (tipo_doc IN ('DNI','pasaporte','CUIL','LC','LE')),
    nro_doc VARCHAR(8) NOT NULL,
    sexo CHAR(1) DEFAULT 'X' CHECK (sexo IN ('X','M','F')),
    id_obra_social INT NOT NULL,
    PRIMARY KEY (tipo_doc, nro_doc, sexo, id_obra_social),
    FOREIGN KEY (id_obra_social) REFERENCES Obra_social_esquema_grupo3(id_obra_social) ON DELETE CASCADE,
    FOREIGN KEY (tipo_doc, nro_doc, sexo) REFERENCES Paciente_esquema_grupo3(tipo_doc, nro_doc, sexo) ON DELETE CASCADE
);

CREATE TABLE posee_esquema_grupo3_alt (
    tipo_doc VARCHAR(20) DEFAULT 'DNI' CHECK (tipo_doc IN ('DNI','pasaporte','CUIL','LC','LE')),
    nro_doc VARCHAR(8) NOT NULL,
    sexo CHAR(1) DEFAULT 'X' CHECK (sexo IN ('X','M','F')),
    id_obra_social INT NOT NULL,
    PRIMARY KEY (tipo_doc, nro_doc, sexo, id_obra_social),
    FOREIGN KEY (id_obra_social) REFERENCES Obra_social_esquema_grupo3_alt(id_obra_social) ON DELETE CASCADE,
    FOREIGN KEY (tipo_doc, nro_doc, sexo) REFERENCES Paciente_esquema_grupo3_alt(tipo_doc, nro_doc, sexo) ON DELETE CASCADE
);

-- ============================
-- 5. Historia clinica
-- ============================

CREATE TABLE Historia_clinica_esquema_grupo3 (
    id_historia_clinica INT AUTO_INCREMENT PRIMARY KEY,
    tipo_doc VARCHAR(20) DEFAULT 'DNI' CHECK (tipo_doc IN ('DNI','pasaporte','CUIL','LC','LE')),
    nro_doc VARCHAR(8) NOT NULL,
    sexo CHAR(1) DEFAULT 'X' CHECK (sexo IN ('X','M','F')),
    FOREIGN KEY (tipo_doc, nro_doc, sexo) REFERENCES Paciente_esquema_grupo3(tipo_doc, nro_doc, sexo) ON DELETE RESTRICT
);

CREATE TABLE Historia_clinica_esquema_grupo3_alt (
    id_historia_clinica INT AUTO_INCREMENT PRIMARY KEY,
    tipo_doc VARCHAR(20) DEFAULT 'DNI' CHECK (tipo_doc IN ('DNI','pasaporte','CUIL','LC','LE')),
    nro_doc VARCHAR(8) NOT NULL,
    sexo CHAR(1) DEFAULT 'X' CHECK (sexo IN ('X','M','F')),
    FOREIGN KEY (tipo_doc, nro_doc, sexo) REFERENCES Paciente_esquema_grupo3_alt(tipo_doc, nro_doc, sexo) ON DELETE RESTRICT
);

CREATE TABLE alergias_esquema_grupo3 (
    id_historia_clinica INT NOT NULL,
    alergia VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_historia_clinica, alergia),
    FOREIGN KEY (id_historia_clinica) REFERENCES Historia_clinica_esquema_grupo3(id_historia_clinica) ON DELETE CASCADE
);

CREATE TABLE alergias_esquema_grupo3_alt (
    id_historia_clinica INT NOT NULL,
    alergia VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_historia_clinica, alergia),
    FOREIGN KEY (id_historia_clinica) REFERENCES Historia_clinica_esquema_grupo3_alt(id_historia_clinica) ON DELETE CASCADE
);

CREATE TABLE vacunas_esquema_grupo3 (
    id_historia_clinica INT NOT NULL,
    vacuna VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_historia_clinica, vacuna),
    FOREIGN KEY (id_historia_clinica) REFERENCES Historia_clinica_esquema_grupo3(id_historia_clinica) ON DELETE CASCADE
);

CREATE TABLE vacunas_esquema_grupo3_alt (
    id_historia_clinica INT NOT NULL,
    vacuna VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_historia_clinica, vacuna),
    FOREIGN KEY (id_historia_clinica) REFERENCES Historia_clinica_esquema_grupo3_alt(id_historia_clinica) ON DELETE CASCADE
);

CREATE TABLE antecedentes_medicos_esquema_grupo3 (
    id_historia_clinica INT NOT NULL,
    descripcion_antecedente VARCHAR(150) NOT NULL,
    PRIMARY KEY (id_historia_clinica, descripcion_antecedente),
    FOREIGN KEY (id_historia_clinica) REFERENCES Historia_clinica_esquema_grupo3(id_historia_clinica) ON DELETE CASCADE
);

CREATE TABLE antecedentes_medicos_esquema_grupo3_alt (
    id_historia_clinica INT NOT NULL,
    descripcion_antecedente VARCHAR(150) NOT NULL,
    PRIMARY KEY (id_historia_clinica, descripcion_antecedente),
    FOREIGN KEY (id_historia_clinica) REFERENCES Historia_clinica_esquema_grupo3_alt(id_historia_clinica) ON DELETE CASCADE
);


-- ============================
-- 6. Evolucion, Indicacion, Lesion
-- ============================

CREATE TABLE Evolucion_esquema_grupo3 (
    id_historia_clinica INT NOT NULL,
    nro_evolucion INT NOT NULL,
    estado_paciente VARCHAR(20),
    legajo VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_historia_clinica, nro_evolucion),
    FOREIGN KEY (id_historia_clinica) REFERENCES Historia_clinica_esquema_grupo3(id_historia_clinica) ON DELETE CASCADE,
    FOREIGN KEY (legajo) REFERENCES Profesional_esquema_grupo3(legajo) ON DELETE NO ACTION
);

CREATE TABLE Evolucion_esquema_grupo3_alt (
    id_historia_clinica INT NOT NULL,
    nro_evolucion INT NOT NULL,
    estado_paciente VARCHAR(20),
    legajo VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_historia_clinica, nro_evolucion),
    FOREIGN KEY (id_historia_clinica) REFERENCES Historia_clinica_esquema_grupo3_alt(id_historia_clinica) ON DELETE CASCADE,
    FOREIGN KEY (legajo) REFERENCES Profesional_esquema_grupo3_alt(legajo) ON DELETE NO ACTION
);

CREATE TABLE Indicacion_esquema_grupo3 (
    id_indicacion INT AUTO_INCREMENT PRIMARY KEY,
    dosis VARCHAR(50),
    via VARCHAR(50)
);

CREATE TABLE Indicacion_esquema_grupo3_alt (
    id_indicacion INT AUTO_INCREMENT PRIMARY KEY,
    dosis VARCHAR(50),
    via VARCHAR(50)
);

CREATE TABLE aplica_esquema_grupo3 (
    id_indicacion INT NOT NULL,
    nro_evolucion INT NOT NULL,
    id_historia_clinica INT NOT NULL,
    fecha DATE,
    legajo VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_historia_clinica, nro_evolucion, id_indicacion),
    FOREIGN KEY (id_indicacion) REFERENCES Indicacion_esquema_grupo3(id_indicacion) ON DELETE CASCADE,
    FOREIGN KEY (legajo) REFERENCES Profesional_esquema_grupo3(legajo),
    FOREIGN KEY (id_historia_clinica, nro_evolucion) REFERENCES Evolucion_esquema_grupo3(id_historia_clinica, nro_evolucion) ON DELETE RESTRICT
);

CREATE TABLE aplica_esquema_grupo3_alt (
    id_indicacion INT NOT NULL,
    nro_evolucion INT NOT NULL,
    id_historia_clinica INT NOT NULL,
    fecha DATE,
    legajo VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_historia_clinica, nro_evolucion, id_indicacion),
    FOREIGN KEY (id_indicacion) REFERENCES Indicacion_esquema_grupo3_alt(id_indicacion) ON DELETE CASCADE,
    FOREIGN KEY (legajo) REFERENCES Profesional_esquema_grupo3_alt(legajo),
    FOREIGN KEY (id_historia_clinica, nro_evolucion) REFERENCES Evolucion_esquema_grupo3_alt(id_historia_clinica, nro_evolucion) ON DELETE RESTRICT
);

CREATE TABLE diagnostica_esquema_grupo3 (
    id_historia_clinica INT NOT NULL,
    nro_evolucion INT NOT NULL,
    legajo VARCHAR(20) NOT NULL,
    diagnostico VARCHAR(100),
    PRIMARY KEY (id_historia_clinica, nro_evolucion, legajo),
    FOREIGN KEY (legajo) REFERENCES Medico_esquema_grupo3(legajo),
    FOREIGN KEY (id_historia_clinica, nro_evolucion) REFERENCES Evolucion_esquema_grupo3(id_historia_clinica, nro_evolucion) ON DELETE RESTRICT
);

CREATE TABLE diagnostica_esquema_grupo3_alt (
    id_historia_clinica INT NOT NULL,
    nro_evolucion INT NOT NULL,
    legajo VARCHAR(20) NOT NULL,
    diagnostico VARCHAR(100),
    PRIMARY KEY (id_historia_clinica, nro_evolucion, legajo),
    FOREIGN KEY (legajo) REFERENCES Medico_esquema_grupo3_alt(legajo),
    FOREIGN KEY (id_historia_clinica, nro_evolucion) REFERENCES Evolucion_esquema_grupo3_alt(id_historia_clinica, nro_evolucion) ON DELETE RESTRICT
);

CREATE TABLE Lesion_esquema_grupo3 (
    id_lesion INT AUTO_INCREMENT PRIMARY KEY,
    detalle_curacion VARCHAR(100),
    area VARCHAR(100),
    tamano VARCHAR(30),
    grado VARCHAR(20),
    tipo VARCHAR(20) DEFAULT 'abrasion' CHECK (tipo IN ('abrasion','cortante','punzante','laceracion','quemadura','contusion','esguince','fractura','luxacion','ulcera'))
);

CREATE TABLE Lesion_esquema_grupo3_alt (
    id_lesion INT AUTO_INCREMENT PRIMARY KEY,
    detalle_curacion VARCHAR(100),
    area VARCHAR(100),
    tamano VARCHAR(30),
    grado VARCHAR(20),
    tipo VARCHAR(20) DEFAULT 'abrasion' CHECK (tipo IN ('abrasion','cortante','punzante','laceracion','quemadura','contusion','esguince','fractura','luxacion','ulcera'))
);

CREATE TABLE denota_esquema_grupo3 (
    id_historia_clinica INT NOT NULL,
    nro_evolucion INT NOT NULL,
    id_lesion INT NOT NULL,
    PRIMARY KEY (id_historia_clinica, nro_evolucion, id_lesion),
    FOREIGN KEY (id_lesion) REFERENCES Lesion_esquema_grupo3(id_lesion),
    FOREIGN KEY (id_historia_clinica, nro_evolucion) REFERENCES Evolucion_esquema_grupo3(id_historia_clinica, nro_evolucion) ON DELETE CASCADE
);

CREATE TABLE denota_esquema_grupo3_alt (
    id_historia_clinica INT NOT NULL,
    nro_evolucion INT NOT NULL,
    id_lesion INT NOT NULL,
    PRIMARY KEY (id_historia_clinica, nro_evolucion, id_lesion),
    FOREIGN KEY (id_lesion) REFERENCES Lesion_esquema_grupo3_alt(id_lesion),
    FOREIGN KEY (id_historia_clinica, nro_evolucion) REFERENCES Evolucion_esquema_grupo3_alt(id_historia_clinica, nro_evolucion) ON DELETE CASCADE
);


-- ============================
-- 7. Medicamentos, Kits, Suministros, Farmacias
-- ============================

CREATE TABLE Medicamento_esquema_grupo3 (
    nombre VARCHAR(100) PRIMARY KEY,
    tipo VARCHAR(30) DEFAULT 'antibiotico' CHECK (tipo IN ('analgesico','antibiotico','antiacido','ansiolitico','antiinflamatorio','antihipertensivo','antidiabetico','anticoagulante'))
);

CREATE TABLE Medicamento_esquema_grupo3_alt (
    nombre VARCHAR(100) PRIMARY KEY,
    tipo VARCHAR(30) DEFAULT 'antibiotico' CHECK (tipo IN ('analgesico','antibiotico','antiacido','ansiolitico','antiinflamatorio','antihipertensivo','antidiabetico','anticoagulante'))
);

CREATE TABLE comprende_esquema_grupo3 (
    nombre_medicamento VARCHAR(100) NOT NULL,
    id_indicacion INT NOT NULL,
    PRIMARY KEY (nombre_medicamento, id_indicacion),
    FOREIGN KEY (nombre_medicamento) REFERENCES Medicamento_esquema_grupo3(nombre) ON DELETE CASCADE,
    FOREIGN KEY (id_indicacion) REFERENCES Indicacion_esquema_grupo3(id_indicacion) ON DELETE CASCADE
);

CREATE TABLE comprende_esquema_grupo3_alt (
    nombre_medicamento VARCHAR(100) NOT NULL,
    id_indicacion INT NOT NULL,
    PRIMARY KEY (nombre_medicamento, id_indicacion),
    FOREIGN KEY (nombre_medicamento) REFERENCES Medicamento_esquema_grupo3_alt(nombre) ON DELETE CASCADE,
    FOREIGN KEY (id_indicacion) REFERENCES Indicacion_esquema_grupo3_alt(id_indicacion) ON DELETE CASCADE
);

CREATE TABLE Kit_esquema_grupo3 (
    id_kit INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(20) DEFAULT 'curacion' CHECK (tipo IN ('curacion','atencion','diagnostico','medicacion','emergencia'))
);

CREATE TABLE Kit_esquema_grupo3_alt (
    id_kit INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(20) DEFAULT 'curacion' CHECK (tipo IN ('curacion','atencion','diagnostico','medicacion','emergencia'))
);

CREATE TABLE necesita_esquema_grupo3 (
    id_kit INT NOT NULL,
    id_lesion INT NOT NULL,
    PRIMARY KEY (id_kit, id_lesion),
    FOREIGN KEY (id_kit) REFERENCES Kit_esquema_grupo3(id_kit) ON DELETE CASCADE,
    FOREIGN KEY (id_lesion) REFERENCES Lesion_esquema_grupo3(id_lesion) ON DELETE CASCADE
);

CREATE TABLE necesita_esquema_grupo3_alt (
    id_kit INT NOT NULL,
    id_lesion INT NOT NULL,
    PRIMARY KEY (id_kit, id_lesion),
    FOREIGN KEY (id_kit) REFERENCES Kit_esquema_grupo3_alt(id_kit) ON DELETE CASCADE,
    FOREIGN KEY (id_lesion) REFERENCES Lesion_esquema_grupo3_alt(id_lesion) ON DELETE CASCADE
);

CREATE TABLE Farmacia_esquema_grupo3 (
    id_farmacia INT AUTO_INCREMENT PRIMARY KEY,
    direccion VARCHAR(50),
    telefono VARCHAR(20)
);

CREATE TABLE Farmacia_esquema_grupo3_alt (
    id_farmacia INT AUTO_INCREMENT PRIMARY KEY,
    direccion VARCHAR(50),
    telefono VARCHAR(20)
);

CREATE TABLE suministra_esquema_grupo3 (
    id_farmacia INT NOT NULL,
    id_kit INT NOT NULL,
    stock INT NOT NULL DEFAULT 0 CHECK (stock >= 0),
    PRIMARY KEY (id_farmacia, id_kit),
    FOREIGN KEY (id_farmacia) REFERENCES Farmacia_esquema_grupo3(id_farmacia) ON DELETE CASCADE,
    FOREIGN KEY (id_kit) REFERENCES Kit_esquema_grupo3(id_kit) ON DELETE CASCADE
);

CREATE TABLE suministra_esquema_grupo3_alt (
    id_farmacia INT NOT NULL,
    id_kit INT NOT NULL,
    stock INT NOT NULL DEFAULT 0 CHECK (stock >= 0),
    PRIMARY KEY (id_farmacia, id_kit),
    FOREIGN KEY (id_farmacia) REFERENCES Farmacia_esquema_grupo3_alt(id_farmacia) ON DELETE CASCADE,
    FOREIGN KEY (id_kit) REFERENCES Kit_esquema_grupo3_alt(id_kit) ON DELETE CASCADE
);

CREATE TABLE Suministro_esquema_grupo3 (
    id_suministro INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    UNIQUE (nombre)
);

CREATE TABLE Suministro_esquema_grupo3_alt (
    id_suministro INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    UNIQUE (nombre)
);

CREATE TABLE contiene_esquema_grupo3 (
    id_kit INT NOT NULL,
    nombre_suministro VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_kit, nombre_suministro),
    FOREIGN KEY (id_kit) REFERENCES Kit_esquema_grupo3(id_kit) ON DELETE CASCADE,
    FOREIGN KEY (nombre_suministro) REFERENCES Suministro_esquema_grupo3(nombre) ON DELETE CASCADE
);

CREATE TABLE contiene_esquema_grupo3_alt (
    id_kit INT NOT NULL,
    nombre_suministro VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_kit, nombre_suministro),
    FOREIGN KEY (id_kit) REFERENCES Kit_esquema_grupo3_alt(id_kit) ON DELETE CASCADE,
    FOREIGN KEY (nombre_suministro) REFERENCES Suministro_esquema_grupo3_alt(nombre) ON DELETE CASCADE
);

CREATE TABLE recibe_esquema_grupo3 (
    fecha DATE NOT NULL,
    id_kit INT NOT NULL,
    legajo VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_kit, legajo, fecha),
    FOREIGN KEY (id_kit) REFERENCES Kit_esquema_grupo3(id_kit) ON DELETE NO ACTION,
    FOREIGN KEY (legajo) REFERENCES Enfermero_esquema_grupo3(legajo)
);

CREATE TABLE recibe_esquema_grupo3_alt (
    fecha DATE NOT NULL,
    id_kit INT NOT NULL,
    legajo VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_kit, legajo, fecha),
    FOREIGN KEY (id_kit) REFERENCES Kit_esquema_grupo3_alt(id_kit) ON DELETE NO ACTION,
    FOREIGN KEY (legajo) REFERENCES Enfermero_esquema_grupo3_alt(legajo)
);

CREATE TABLE almacena_esquema_grupo3 (
    id_farmacia INT NOT NULL,
    nombre_medicamento VARCHAR(100) NOT NULL,
    stock INT NOT NULL DEFAULT 0 CHECK (stock >= 0),
    PRIMARY KEY (id_farmacia, nombre_medicamento),
    FOREIGN KEY (id_farmacia) REFERENCES Farmacia_esquema_grupo3(id_farmacia) ON DELETE CASCADE,
    FOREIGN KEY (nombre_medicamento) REFERENCES Medicamento_esquema_grupo3(nombre) ON DELETE CASCADE
);

CREATE TABLE almacena_esquema_grupo3_alt (
    id_farmacia INT NOT NULL,
    nombre_medicamento VARCHAR(100) NOT NULL,
    stock INT NOT NULL DEFAULT 0 CHECK (stock >= 0),
    PRIMARY KEY (id_farmacia, nombre_medicamento),
    FOREIGN KEY (id_farmacia) REFERENCES Farmacia_esquema_grupo3_alt(id_farmacia) ON DELETE CASCADE,
    FOREIGN KEY (nombre_medicamento) REFERENCES Medicamento_esquema_grupo3_alt(nombre) ON DELETE CASCADE
);


-- ============================
-- 8. Simulacion del dominio vencimiento_matricula
-- ============================

DELIMITER $$

CREATE TRIGGER trg_profesional_vencimiento_ins_grupo3
BEFORE INSERT ON Profesional_esquema_grupo3
FOR EACH ROW
BEGIN
    IF NEW.fecha_vencimiento_matricula < CURDATE() THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'fecha_vencimiento_matricula no puede ser anterior a la fecha actual';
    END IF;
END$$

CREATE TRIGGER trg_profesional_vencimiento_upd_grupo3
BEFORE UPDATE ON Profesional_esquema_grupo3
FOR EACH ROW
BEGIN
    IF NEW.fecha_vencimiento_matricula < CURDATE() THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'fecha_vencimiento_matricula no puede ser anterior a la fecha actual';
    END IF;
END$$

CREATE TRIGGER trg_profesional_vencimiento_ins_grupo3_alt
BEFORE INSERT ON Profesional_esquema_grupo3_alt
FOR EACH ROW
BEGIN
    IF NEW.fecha_vencimiento_matricula < CURDATE() THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'fecha_vencimiento_matricula no puede ser anterior a la fecha actual';
    END IF;
END$$

CREATE TRIGGER trg_profesional_vencimiento_upd_grupo3_alt
BEFORE UPDATE ON Profesional_esquema_grupo3_alt
FOR EACH ROW
BEGIN
    IF NEW.fecha_vencimiento_matricula < CURDATE() THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'fecha_vencimiento_matricula no puede ser anterior a la fecha actual';
    END IF;
END$$

DELIMITER ;
