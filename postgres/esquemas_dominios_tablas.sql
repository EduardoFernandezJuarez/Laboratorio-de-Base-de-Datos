-- ============================
-- 0. Esquema
-- ============================

CREATE SCHEMA esquema_grupo3;
CREATE SCHEMA esquema_grupo3_alt;


SET search_path TO esquema_grupo3;
--SET search_path TO esquema_grupo3_alt;

-- ============================
-- 0.1 Dominios 
-- ============================

CREATE DOMAIN estado_ObraSocial AS VARCHAR(20) DEFAULT 'inactiva'
    CHECK (VALUE IN ('activa', 'inactiva'));

CREATE DOMAIN estados_Visita AS VARCHAR(30) DEFAULT 'programada'
    CHECK (VALUE IN ('programada','fallada','realizada','pendiente de reasignacion','cancelada'));

CREATE DOMAIN tipo_kit AS VARCHAR(20) DEFAULT 'curacion'
    CHECK (VALUE IN ('curacion', 'atencion', 'diagnostico', 'medicacion', 'emergencia'));

CREATE DOMAIN tipo_lesion AS VARCHAR(20) DEFAULT 'abrasion'
    CHECK (VALUE IN ('abrasion', 'cortante', 'punzante', 'laceracion', 'quemadura', 'contusion', 'esguince', 'fractura', 'luxacion', 'ulcera'));

CREATE DOMAIN dominio_especialidades AS VARCHAR(30) DEFAULT 'clinica medica'
    CHECK (VALUE IN ('clinica medica', 'pediatria', 'traumatologia', 'oftalmologia', 'urologia', 'gastroenterologia', 'oncologia', 'endocrinologia', 'reumatologia', 'nefrologia', 'ginecologia', 'cardiologia'));

CREATE DOMAIN dominio_zonas AS VARCHAR(10) DEFAULT 'centro'
    CHECK (VALUE IN ('centro', 'norte', 'sur', 'este', 'oeste'));

CREATE DOMAIN dominio_tipoObraSocial AS VARCHAR(30) DEFAULT 'Otra'
    CHECK (VALUE IN ('Otra', 'Sindical', 'Estatal', 'Estatal/Provincial', 'Personal de direccion', 'Prepaga'));

CREATE DOMAIN tipoDocumento AS VARCHAR(20) DEFAULT 'DNI'
    CHECK (VALUE IN ('DNI', 'pasaporte', 'CUIL', 'LC', 'LE'));

CREATE DOMAIN dominio_parentesco AS VARCHAR(30) DEFAULT 'tutor/ra'
    CHECK (VALUE IN ('tutor/ra', 'hijo/a', 'padre', 'madre', 'nieto/a', 'sobrino/a', 'tio/a', 'esposo/a', 'hermano/a'));

CREATE DOMAIN dominio_sexo AS CHAR(1) DEFAULT 'X'
    CHECK (VALUE IN ('X', 'M', 'F'));

CREATE DOMAIN dominio_tipo_medicamento AS VARCHAR(30) DEFAULT 'antibiotico'
    CHECK (VALUE IN ('analgesico','antibiotico','antiacido','ansiolitico','antiinflamatorio','antihipertensivo','antidiabetico','anticoagulante'));

CREATE DOMAIN dominio_stock AS INT NOT NULL
    CHECK (VALUE >= 0);

CREATE DOMAIN vencimiento_matricula AS DATE NOT NULL CHECK (VALUE >= CURRENT_DATE);



-- ============================
-- 1. Personas
-- ============================

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

CREATE TABLE Nutricionista (
    legajo VARCHAR(20) PRIMARY KEY REFERENCES Profesional(legajo) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Psicologo (
    legajo VARCHAR(20) PRIMARY KEY REFERENCES Profesional(legajo) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Kinesiologo (
    legajo VARCHAR(20) PRIMARY KEY REFERENCES Profesional(legajo) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Enfermero (
    legajo VARCHAR(20) PRIMARY KEY REFERENCES Profesional(legajo) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Medico (
    legajo VARCHAR(20) PRIMARY KEY REFERENCES Profesional(legajo) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE especialidades (
    legajo VARCHAR(20) NOT NULL REFERENCES Medico(legajo) ON DELETE RESTRICT,
    nombre_especialidad dominio_especialidades,
    PRIMARY KEY (legajo, nombre_especialidad)
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
    PRIMARY KEY (nro_doc, tipo_doc, sexo)
);

CREATE TABLE Contacto_emergencia (
    tipo_doc tipoDocumento,
    nro_doc VARCHAR(8) NOT NULL,
    sexo dominio_sexo,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    parentesco dominio_parentesco,
    nro_telefono VARCHAR(20),
    PRIMARY KEY (tipo_doc, nro_doc, sexo, nro_telefono),
    FOREIGN KEY (tipo_doc, nro_doc, sexo) REFERENCES Paciente(tipo_doc, nro_doc, sexo) ON DELETE RESTRICT
);


-- ============================
-- 2. Zonas y coordenadas
-- ============================

CREATE TABLE Zona (
    id_zona SERIAL PRIMARY KEY,
    nombre dominio_zonas
);

CREATE TABLE Coordenada (
    id_coordenada SERIAL PRIMARY KEY,
    id_zona INT NOT NULL REFERENCES Zona(id_zona)
);

CREATE TABLE atiende_en (
    id_zona INT NOT NULL REFERENCES Zona(id_zona) ON DELETE CASCADE,
    legajo VARCHAR(20) NOT NULL REFERENCES Profesional(legajo) ON DELETE CASCADE,
    PRIMARY KEY (id_zona, legajo)
);


-- ============================
-- 3. Turno y Visita
-- ============================

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


-- ============================
-- 4. Obra social
-- ============================

CREATE TABLE Obra_social (
    id_obra_social SERIAL PRIMARY KEY,
    tipo dominio_tipoObraSocial,
    plan VARCHAR(30),
    cobertura VARCHAR(80),
    estado estado_ObraSocial,
    nombre VARCHAR(30) NOT NULL
);

CREATE TABLE posee (
    tipo_doc tipoDocumento,
    nro_doc VARCHAR(8) NOT NULL,
    sexo dominio_sexo,
    id_obra_social INT NOT NULL REFERENCES Obra_social(id_obra_social) ON DELETE CASCADE,
    PRIMARY KEY (tipo_doc, nro_doc, sexo, id_obra_social),
    FOREIGN KEY (tipo_doc, nro_doc, sexo) REFERENCES Paciente(tipo_doc, nro_doc, sexo) ON DELETE CASCADE
);


-- ============================
-- 5. Historia clinica
-- ============================

CREATE TABLE Historia_clinica (
    id_historia_clinica SERIAL PRIMARY KEY,
    tipo_doc tipoDocumento,
    nro_doc VARCHAR(8) NOT NULL,
    sexo dominio_sexo,
    FOREIGN KEY (tipo_doc, nro_doc, sexo) REFERENCES Paciente(tipo_doc, nro_doc, sexo) ON DELETE RESTRICT
);

CREATE TABLE alergias (
    id_historia_clinica INT NOT NULL REFERENCES Historia_clinica(id_historia_clinica) ON DELETE CASCADE,
    alergia VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_historia_clinica, alergia)
);

CREATE TABLE vacunas (
    id_historia_clinica INT NOT NULL REFERENCES Historia_clinica(id_historia_clinica) ON DELETE CASCADE,
    vacuna VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_historia_clinica, vacuna)
);

CREATE TABLE antecedentes_medicos (
    id_historia_clinica INT NOT NULL REFERENCES Historia_clinica(id_historia_clinica) ON DELETE CASCADE,
    descripcion_antecedente VARCHAR(150) NOT NULL,
    PRIMARY KEY (id_historia_clinica, descripcion_antecedente)
);


-- ============================
-- 6. Evolucion, Indicacion, Lesion
-- ============================

CREATE TABLE Evolucion (
    id_historia_clinica INT NOT NULL REFERENCES Historia_clinica(id_historia_clinica) ON DELETE CASCADE,
    nro_evolucion INT NOT NULL,
    estado_paciente VARCHAR(20),
    legajo VARCHAR(20) NOT NULL REFERENCES Profesional(legajo) ON DELETE NO ACTION,
    PRIMARY KEY (id_historia_clinica, nro_evolucion)
);

CREATE TABLE Indicacion (
    id_indicacion SERIAL PRIMARY KEY,
    dosis VARCHAR(50),
    via VARCHAR(50)
);

CREATE TABLE aplica (
    id_indicacion INT NOT NULL REFERENCES Indicacion(id_indicacion) ON DELETE CASCADE,
    nro_evolucion INT NOT NULL,
    id_historia_clinica INT NOT NULL,
    fecha DATE,
    legajo VARCHAR(20) NOT NULL REFERENCES Profesional(legajo),
    PRIMARY KEY (id_historia_clinica, nro_evolucion, id_indicacion),
    FOREIGN KEY (id_historia_clinica, nro_evolucion) REFERENCES Evolucion(id_historia_clinica, nro_evolucion) ON DELETE RESTRICT
);

CREATE TABLE diagnostica (
    id_historia_clinica INT NOT NULL,
    nro_evolucion INT NOT NULL,
    legajo VARCHAR(20) NOT NULL REFERENCES Medico(legajo),
    diagnostico VARCHAR(100),
    PRIMARY KEY (id_historia_clinica, nro_evolucion, legajo),
    FOREIGN KEY (id_historia_clinica, nro_evolucion) REFERENCES Evolucion(id_historia_clinica, nro_evolucion) ON DELETE RESTRICT
);

CREATE TABLE Lesion (
    id_lesion SERIAL PRIMARY KEY,
    detalle_curacion VARCHAR(100),
    area VARCHAR(100),
    tamano VARCHAR(30),
    grado VARCHAR(20),
    tipo tipo_lesion
);

CREATE TABLE denota (
    id_historia_clinica INT NOT NULL,
    nro_evolucion INT NOT NULL,
    id_lesion INT NOT NULL REFERENCES Lesion(id_lesion),
    PRIMARY KEY (id_historia_clinica, nro_evolucion, id_lesion),
    FOREIGN KEY (id_historia_clinica, nro_evolucion) REFERENCES Evolucion(id_historia_clinica, nro_evolucion) ON DELETE CASCADE
);


-- ============================
-- 7. Medicamentos, Kits, Suministros, Farmacias
-- ============================

CREATE TABLE Medicamento (
    nombre VARCHAR(100) PRIMARY KEY,
    tipo dominio_tipo_medicamento
);

CREATE TABLE comprende (
    nombre_medicamento VARCHAR(100) NOT NULL REFERENCES Medicamento(nombre) ON DELETE CASCADE,
    id_indicacion INT NOT NULL REFERENCES Indicacion(id_indicacion) ON DELETE CASCADE,
    PRIMARY KEY (nombre_medicamento, id_indicacion)
);

CREATE TABLE Kit (
    id_kit SERIAL PRIMARY KEY,
    tipo tipo_kit
);

CREATE TABLE necesita (
    id_kit INT NOT NULL REFERENCES Kit(id_kit) ON DELETE CASCADE,
    id_lesion INT NOT NULL REFERENCES Lesion(id_lesion) ON DELETE CASCADE,
    PRIMARY KEY (id_kit, id_lesion)
);

CREATE TABLE Farmacia (
    id_farmacia SERIAL PRIMARY KEY,
    direccion VARCHAR(50),
    telefono VARCHAR(20)
);

CREATE TABLE suministra (
    id_farmacia INT NOT NULL REFERENCES Farmacia(id_farmacia) ON DELETE CASCADE,
    id_kit INT NOT NULL REFERENCES Kit(id_kit) ON DELETE CASCADE,
    stock dominio_stock,
    PRIMARY KEY (id_farmacia, id_kit)
);

CREATE TABLE Suministro (
    id_suministro SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    UNIQUE (nombre) 
);

CREATE TABLE contiene (
    id_kit INT NOT NULL REFERENCES Kit(id_kit) ON DELETE CASCADE,
    nombre_suministro VARCHAR(100) NOT NULL REFERENCES Suministro(nombre) ON DELETE CASCADE,
    PRIMARY KEY (id_kit, nombre_suministro)
);

CREATE TABLE recibe (
    fecha DATE,
    id_kit INT NOT NULL REFERENCES Kit(id_kit) ON DELETE NO ACTION,
    legajo VARCHAR(20) NOT NULL REFERENCES Enfermero(legajo),
    PRIMARY KEY (id_kit, legajo, fecha)
);

CREATE TABLE almacena (
    id_farmacia INT NOT NULL REFERENCES Farmacia(id_farmacia) ON DELETE CASCADE,
    nombre_medicamento VARCHAR(100) NOT NULL REFERENCES Medicamento(nombre) ON DELETE CASCADE,
    stock dominio_stock,
    PRIMARY KEY (id_farmacia, nombre_medicamento)
);


