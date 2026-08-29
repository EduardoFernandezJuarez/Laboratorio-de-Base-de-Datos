SET search_path TO esquema_grupo3;


-- ============================
-- 1. Personas
-- ============================

INSERT INTO Profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES
('25123456', 'DNI', 'M', 'Juan', 'Perez', 'LEG001', '1975-03-14', 'MP12345', '2027-12-31', 'Av. Argentina', '450', '2994001111'),
('27456789', 'DNI', 'F', 'Ana', 'Gomez', 'LEG002', '1980-07-22', 'MP23456', '2029-06-30', 'San Martin', '780', '2994002222'),
('29789012', 'DNI', 'F', 'Laura', 'Fernandez', 'LEG003', '1985-11-05', 'MP34567', '2028-01-15', 'Roca', '120', '2994003333'),
('31234567', 'DNI', 'M', 'Carlos', 'Ruiz', 'LEG004', '1990-02-18', 'MP45678', '2028-09-30', 'Belgrano', '900', '2994004444'),
('26345678', 'DNI', 'F', 'Marina', 'Sosa', 'LEG005', '1978-05-30', 'MP56789', '2027-03-20', 'Sarmiento', '330', '2994005555'),
('28567890', 'DNI', 'M', 'Pablo', 'Diaz', 'LEG006', '1982-09-10', 'MP67890', '2028-11-11', 'Chile', '210', '2994006666'),
('33678901', 'DNI', 'F', 'Rocio', 'Herrera', 'LEG007', '1993-01-25', 'MP78901', '2029-04-05', 'Necochea', '560', '29940DNI07777'),
('24987654', 'DNI', 'M', 'Martin', 'Alvarez', 'LEG008', '1972-06-08', 'MP89012', '2026-12-28', 'Rivadavia', '640', '2994008888'),
('30456123', 'DNI', 'F', 'Valentina', 'Castro', 'LEG009', '1983-10-17', 'MP90123', '2027-08-19', 'Buenos Aires', '75', '2994009999'),
('32654789', 'DNI', 'M', 'Federico', 'Molina', 'LEG010', '1991-12-02', 'MP01234', '2027-05-14', 'Salta', '410', '2994010101'),
('34789456', 'DNI', 'F', 'Camila', 'Ortiz', 'LEG011', '1994-04-27', 'MP11223', '2028-10-01', 'Entre Rios', '260', '2994011111'),
('27123890', 'DNI', 'M', 'Nicolas', 'Vega', 'LEG012', '1979-01-09', 'MP22334', '2029-07-07', 'Santa Fe', '815', '2994012121');

-- Subtipos (ISA): cada legajo tiene que existir antes en Profesional.
INSERT INTO Medico (legajo) VALUES ('LEG001'), ('LEG002'), ('LEG008'), ('LEG009');
INSERT INTO Enfermero (legajo) VALUES ('LEG003'), ('LEG004'), ('LEG010'), ('LEG011');
INSERT INTO Nutricionista (legajo) VALUES ('LEG005'), ('LEG012');
INSERT INTO Psicologo (legajo) VALUES ('LEG006');
INSERT INTO Kinesiologo (legajo) VALUES ('LEG007');

-- Solo medicos pueden tener fila aca (FK apunta a Medico). Valores segun dominio_especialidades.
INSERT INTO especialidades (legajo, nombre_especialidad) VALUES
('LEG001', 'clinica medica'),
('LEG001', 'cardiologia'),
('LEG002', 'pediatria'),
('LEG008', 'traumatologia'),
('LEG009', 'ginecologia'),
('LEG009', 'oncologia');

INSERT INTO Paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono) VALUES
('30111222', 'DNI', 'F', 'Maria', 'Lopez', 'AF-1001', '1950-04-12', '2015-01-10', 'Mitre', '234', '2994111111'),
('28555666', 'DNI', 'M', 'Jorge', 'Martinez', 'AF-1002', '1945-08-30', '2010-06-15', 'Alsina', '567', '2994222222'),
('40222333', 'DNI', 'F', 'Sofia', 'Torres', 'AF-1003', '1998-12-01', '2020-03-01', 'Yrigoyen', '89', '2994333333'),
('35444555', 'DNI', 'M', 'Diego', 'Suarez', 'AF-1004', '1988-06-20', '2018-09-22', 'Colon', '145', '2994444444'),
('41666777', 'DNI', 'X', 'Alex', 'Fernandez', 'AF-1005', '2001-02-14', '2022-11-05', 'Pellegrini', '300', '2994555555'),
('32888999', 'DNI', 'F', 'Valeria', 'Nunez', 'AF-1006', '1965-09-03', '2012-04-18', 'Godoy Cruz', '512', '2994666666'),
('27111333', 'DNI', 'M', 'Ricardo', 'Paz', 'AF-1007', '1958-01-27', '2008-02-09', 'Lamadrid', '98', '2994777777'),
('38222444', 'DNI', 'F', 'Camila', 'Rivas', 'AF-1008', '1995-07-11', '2021-05-30', 'Independencia', '670', '2994888888'),
('45555666', 'DNI', 'M', 'Tomas', 'Ibarra', 'AF-1009', '2003-03-22', '2023-01-12', 'Corrientes', '425', '2994999999'),
('39777888', 'DNI', 'F', 'Antonella', 'Cruz', 'AF-1010', '1997-05-16', '2019-08-25', 'Tucuman', '355', '2994101010');

INSERT INTO Contacto_emergencia (tipo_doc, nro_doc, sexo, nombre, apellido, parentesco, nro_telefono) VALUES
('DNI', '30111222', 'F', 'Pedro', 'Lopez', 'hijo/a', '2994111199'),
('DNI', '28555666', 'M', 'Marta', 'Ibanez', 'esposo/a', '2994222299'),
('DNI', '35444555', 'M', 'Lucia', 'Suarez', 'hermano/a', '2994444499'),
('DNI', '32888999', 'F', 'Sergio', 'Nunez', 'hijo/a', '2994666699'),
('DNI', '38222444', 'F', 'Carla', 'Rivas', 'madre', '2994888899'),
('DNI', '45555666', 'M', 'Andrea', 'Ibarra', 'madre', '2994999999');


-- ============================
-- 2. Zonas y coordenadas
-- ============================

-- Asumiendo tabla vacia: id_zona queda 1=centro, 2=norte, 3=sur, 4=este, 5=oeste
INSERT INTO Zona (nombre) VALUES ('centro'), ('norte'), ('sur'), ('este'), ('oeste');

INSERT INTO Coordenada (id_zona) VALUES (1), (1), (2), (2), (3), (4), (4), (5);

INSERT INTO atiende_en (id_zona, legajo) VALUES
(1, 'LEG001'), (1, 'LEG003'), (1, 'LEG009'),
(2, 'LEG002'), (2, 'LEG010'),
(3, 'LEG004'), (3, 'LEG008'),
(4, 'LEG005'), (4, 'LEG011'),
(5, 'LEG007'),
(2, 'LEG006');


-- ============================
-- 3. Turno y Visita
-- ============================

INSERT INTO Turno (hora_Inicio, hora_Fin, fecha, legajo) VALUES
('08:00', '12:00', '2026-09-01', 'LEG001'),
('13:00', '17:00', '2026-09-01', 'LEG002'),
('08:00', '12:00', '2026-09-02', 'LEG003'),
('14:00', '18:00', '2026-09-02', 'LEG004'),
('09:00', '13:00', '2026-09-03', 'LEG005'),
('08:00', '12:00', '2026-09-03', 'LEG008'),
('13:00', '17:00', '2026-09-03', 'LEG009'),
('08:00', '12:00', '2026-09-04', 'LEG010'),
('14:00', '18:00', '2026-09-04', 'LEG011'),
('09:00', '13:00', '2026-09-04', 'LEG007');

-- estados_Visita: 'programada','fallada','realizada','pendiente de reasignacion','cancelada' (sin tilde)
INSERT INTO Visita (nro_doc, tipo_doc, fecha, hora_inicio, hora_fin, estado, legajo, sexo) VALUES
('30111222', 'DNI', '2026-09-02', '09:00', '09:45', 'realizada', 'LEG003', 'F'),
('28555666', 'DNI', '2026-09-02', '14:00', '14:30', 'programada', 'LEG004', 'M'),
('40222333', 'DNI', '2026-09-01', '11:00', NULL, 'pendiente de reasignacion', 'LEG001', 'F'),
('35444555', 'DNI', '2026-09-01', '15:00', '15:40', 'fallada', 'LEG002', 'M'),
('41666777', 'DNI', '2026-09-02', '09:30', '10:00', 'realizada', 'LEG003', 'X'),
('32888999', 'DNI', '2026-09-04', '11:15', '11:50', 'realizada', 'LEG010', 'F'),
('27111333', 'DNI', '2026-09-03', '08:30', '09:00', 'cancelada', 'LEG008', 'M'),
('38222444', 'DNI', '2026-09-04', '14:00', '14:35', 'realizada', 'LEG011', 'F'),
('45555666', 'DNI', '2026-09-03', '13:00', NULL, 'programada', 'LEG009', 'M'),
('39777888', 'DNI', '2026-09-02', '15:00', '15:30', 'realizada', 'LEG004', 'F');


-- ============================
-- 4. Obra social
-- ============================

-- dominio_tipoObraSocial: 'Otra','Sindical','Estatal','Estatal/Provincial','Personal de direccion','Prepaga' (sin tilde)
INSERT INTO Obra_social (tipo, plan, cobertura, estado, nombre) VALUES
('Prepaga', 'Plan 210', 'Cobertura integral con internacion y ambulatorio', 'activa', 'OSDE'),
('Estatal', 'PAMI Basico', 'Cobertura para jubilados y pensionados', 'activa', 'PAMI'),
('Prepaga', 'Bronce', 'Cobertura ambulatoria y guardia', 'activa', 'Swiss Medical'),
('Sindical', 'Plan unico', 'Cobertura sindical de comercio', 'activa', 'OSECAC'),
('Estatal/Provincial', 'ISSN Basico', 'Cobertura para empleados publicos de Neuquen', 'activa', 'ISSN'),
('Prepaga', 'Medicus 400', 'Cobertura con cartilla amplia', 'activa', 'Medicus'),
('Prepaga', 'Galeno Azul', 'Cobertura con internacion en sanatorios privados', 'inactiva', 'Galeno'),
('Sindical', 'Plan basico', 'Cobertura sindical de petroleros', 'activa', 'OSPEDYC');

INSERT INTO posee (tipo_doc, nro_doc, sexo, id_obra_social) VALUES
('DNI', '30111222', 'F', 1),
('DNI', '28555666', 'M', 2),
('DNI', '40222333', 'F', 3),
('DNI', '35444555', 'M', 4),
('DNI', '41666777', 'X', 5),
('DNI', '32888999', 'F', 2),
('DNI', '27111333', 'M', 6),
('DNI', '38222444', 'F', 7),
('DNI', '45555666', 'M', 8),
('DNI', '39777888', 'F', 1);


-- ============================
-- 5. Historia clinica
-- ============================

INSERT INTO Historia_clinica (tipo_doc, nro_doc, sexo) VALUES
('DNI', '30111222', 'F'),
('DNI', '28555666', 'M'),
('DNI', '40222333', 'F'),
('DNI', '35444555', 'M'),
('DNI', '41666777', 'X'),
('DNI', '32888999', 'F'),
('DNI', '27111333', 'M'),
('DNI', '38222444', 'F'),
('DNI', '45555666', 'M'),
('DNI', '39777888', 'F');

INSERT INTO alergias (id_historia_clinica, alergia) VALUES
(1, 'Penicilina'),
(2, 'Polvo ambiental'),
(3, 'Ninguna conocida'),
(6, 'Aspirina'),
(7, 'Mariscos'),
(9, 'Ninguna conocida');

INSERT INTO vacunas (id_historia_clinica, vacuna) VALUES
(1, 'Antigripal 2026'),
(2, 'COVID-19 refuerzo'),
(4, 'Antitetanica'),
(6, 'Antigripal 2026'),
(8, 'Hepatitis B'),
(10, 'COVID-19 refuerzo');

INSERT INTO antecedentes_medicos (id_historia_clinica, descripcion_antecedente) VALUES
(1, 'Hipertension arterial controlada'),
(2, 'Diabetes tipo 2'),
(5, 'Cirugia de rodilla en 2019'),
(6, 'Fractura de cadera en 2020'),
(7, 'EPOC'),
(9, 'Asma infantil');


-- ============================
-- 6. Evolucion, Indicacion, Lesion
-- ============================

INSERT INTO Evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES
(1, 1, 'Estable', 'LEG003'),
(1, 2, 'Mejorando', 'LEG001'),
(2, 1, 'Estable', 'LEG004'),
(3, 1, 'Con dolor', 'LEG002'),
(4, 1, 'Estable', 'LEG003'),
(5, 1, 'Estable', 'LEG003'),
(6, 1, 'Mejorando', 'LEG010'),
(6, 2, 'Estable', 'LEG010'),
(7, 1, 'Empeorando', 'LEG008'),
(8, 1, 'Estable', 'LEG011'),
(9, 1, 'Con dolor', 'LEG009'),
(10, 1, 'Estable', 'LEG004');

INSERT INTO Indicacion (dosis, via) VALUES
('500 mg cada 8 horas', 'oral'),
('1 comprimido por dia', 'oral'),
('10 mg', 'intravenosa'),
('Aplicacion topica 2 veces al dia', 'topica'),
('250 mg cada 12 horas', 'oral'),
('20 mg cada 24 horas', 'oral'),
('5 mg en caso de dolor', 'sublingual'),
('1 ampolla cada 12 horas', 'intramuscular');

-- legajo tiene que ser de Enfermero (FK)
INSERT INTO aplica (id_indicacion, nro_evolucion, id_historia_clinica, fecha, legajo) VALUES
(1, 1, 1, '2026-08-20', 'LEG003'),
(2, 2, 1, '2026-08-22', 'LEG003'),
(3, 1, 2, '2026-08-21', 'LEG004'),
(4, 1, 3, '2026-08-23', 'LEG003'),
(5, 1, 6, '2026-08-24', 'LEG010'),
(6, 2, 6, '2026-08-25', 'LEG010'),
(7, 1, 8, '2026-08-26', 'LEG011'),
(8, 1, 10, '2026-08-27', 'LEG004');

-- legajo tiene que ser de Medico (FK)
INSERT INTO diagnostica (id_historia_clinica, nro_evolucion, legajo, diagnostico) VALUES
(1, 2, 'LEG001', 'Cierre de herida completo'),
(3, 1, 'LEG002', 'Contusion leve en miembro inferior'),
(7, 1, 'LEG008', 'Fractura en proceso de consolidacion'),
(9, 1, 'LEG009', 'Control ginecologico de rutina');

-- tipo_lesion: 'abrasion','cortante','punzante','laceracion','quemadura','contusion','esguince','fractura','luxacion','ulcera'
INSERT INTO Lesion (detalle_curacion, area, tamano, grado, tipo) VALUES
('Limpieza y cambio de gasa', 'Pierna derecha', '5 cm', 'leve', 'abrasion'),
('Sutura y desinfeccion', 'Brazo izquierdo', '3 cm', 'moderado', 'cortante'),
('Curacion con antiseptico', 'Espalda', '8 cm', 'grave', 'quemadura'),
('Vendaje compresivo', 'Tobillo', '4 cm', 'leve', 'esguince'),
('Inmovilizacion', 'Muneca', '2 cm', 'moderado', 'fractura'),
('Curacion de ulcera por presion', 'Talon', '6 cm', 'grave', 'ulcera'),
('Limpieza de herida punzante', 'Mano', '1 cm', 'leve', 'punzante'),
('Reduccion y control', 'Cadera', '12 cm', 'grave', 'luxacion');

INSERT INTO denota (id_historia_clinica, nro_evolucion, id_lesion) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 1, 2),
(3, 1, 3),
(6, 1, 8),
(6, 2, 8),
(7, 1, 5),
(8, 1, 4);


-- ============================
-- 7. Medicamentos, Kits, Suministros, Farmacias
-- ============================

-- dominio_tipo_medicamento: 'analgesico','antibiotico','antiacido','ansiolitico','antiinflamatorio','antihipertensivo','antidiabetico','anticoagulante'
INSERT INTO Medicamento (nombre, tipo) VALUES
('Amoxicilina 500mg', 'antibiotico'),
('Ibuprofeno 400mg', 'antiinflamatorio'),
('Paracetamol 500mg', 'analgesico'),
('Omeprazol 20mg', 'antiacido'),
('Enalapril 10mg', 'antihipertensivo'),
('Metformina 850mg', 'antidiabetico'),
('Clonazepam 0.5mg', 'ansiolitico'),
('Heparina sodica', 'anticoagulante');

INSERT INTO comprende (nombre_medicamento, id_indicacion) VALUES
('Amoxicilina 500mg', 1),
('Ibuprofeno 400mg', 4),
('Paracetamol 500mg', 5),
('Omeprazol 20mg', 2),
('Enalapril 10mg', 6),
('Metformina 850mg', 2),
('Clonazepam 0.5mg', 7),
('Heparina sodica', 8);

-- tipo_kit: 'curacion','atencion','diagnostico','medicacion','emergencia' (sin tilde)
INSERT INTO Kit (tipo) VALUES
('curacion'),
('curacion'),
('atencion'),
('atencion'),
('diagnostico'),
('medicacion'),
('medicacion'),
('emergencia');

INSERT INTO necesita (id_kit, id_lesion) VALUES
(1, 1),
(1, 4),
(2, 6),
(3, 2),
(3, 7),
(5, 8),
(6, 3),
(8, 5);

INSERT INTO Farmacia (direccion, telefono) VALUES
('Av. Argentina 100', '2994100100'),
('San Martin 500', '2994200200'),
('Roca 850', '2994300300'),
('Alberdi 220', '2994400400'),
('Olascoaga 610', '2994500500');

INSERT INTO suministra (id_farmacia, id_kit, stock) VALUES
(1, 1, 20),
(1, 2, 12),
(2, 3, 15),
(2, 4, 8),
(3, 5, 6),
(4, 6, 10),
(4, 7, 9),
(5, 8, 5);

INSERT INTO Suministro (nombre) VALUES
('Gasas esteriles'),
('Guantes descartables'),
('Alcohol en gel'),
('Jeringas 5ml'),
('Vendas elasticas'),
('Tela adhesiva'),
('Suero fisiologico'),
('Termometro digital');

INSERT INTO contiene (id_kit, nombre_suministro) VALUES
(1, 'Gasas esteriles'),
(1, 'Guantes descartables'),
(2, 'Alcohol en gel'),
(3, 'Guantes descartables'),
(4, 'Jeringas 5ml'),
(5, 'Termometro digital'),
(6, 'Suero fisiologico'),
(7, 'Tela adhesiva'),
(8, 'Vendas elasticas'),
(8, 'Suero fisiologico');

-- legajo tiene que ser de Enfermero (FK)
INSERT INTO recibe (fecha, id_kit, legajo) VALUES
('2026-08-20', 1, 'LEG003'),
('2026-08-21', 1, 'LEG004'),
('2026-08-22', 2, 'LEG003'),
('2026-08-23', 5, 'LEG010'),
('2026-08-24', 6, 'LEG011'),
('2026-08-25', 8, 'LEG010'),
('2026-08-26', 3, 'LEG004'),
('2026-08-27', 4, 'LEG011');

INSERT INTO almacena (id_farmacia, nombre_medicamento, stock) VALUES
(1, 'Amoxicilina 500mg', 50),
(1, 'Ibuprofeno 400mg', 40),
(2, 'Paracetamol 500mg', 60),
(3, 'Omeprazol 20mg', 25),
(3, 'Enalapril 10mg', 30),
(4, 'Metformina 850mg', 20),
(4, 'Clonazepam 0.5mg', 15),
(5, 'Heparina sodica', 10);

