SET search_path TO esquema_grupo3_alt;


-- ============================
-- 1. Personas
-- ============================

INSERT INTO Profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES
('22334455', 'DNI', 'F', 'Silvina', 'Aguirre', 'LEG101', '1974-02-11', 'MP55011', '2028-03-15', 'Fotheringham', '210', '2994201111'),
('23445566', 'DNI', 'M', 'Ezequiel', 'Bravo', 'LEG102', '1981-05-19', 'MP55022', '2027-08-20', 'Juan B. Justo', '640', '2994202222'),
('26556677', 'DNI', 'F', 'Daniela', 'Contreras', 'LEG103', '1987-09-02', 'MP55033', '2029-01-05', 'Leloir', '85', '2994203333'),
('28667788', 'DNI', 'M', 'Sebastian', 'Duran', 'LEG104', '1992-12-24', 'MP55044', '2027-11-30', 'Olavarria', '470', '2994204444'),
('24778899', 'DNI', 'F', 'Cecilia', 'Escobar', 'LEG105', '1979-07-08', 'MP55055', '2028-06-18', 'Confluencia', '330', '2994205555'),
('27889900', 'DNI', 'M', 'Ignacio', 'Farias', 'LEG106', '1983-03-27', 'MP55066', '2027-02-14', 'Chubut', '150', '2994206666'),
('31990011', 'DNI', 'F', 'Yamila', 'Gutierrez', 'LEG107', '1995-06-13', 'MP55077', '2029-09-09', 'Misiones', '580', '2994207777'),
('20101122', 'DNI', 'M', 'Gustavo', 'Herrera', 'LEG108', '1968-10-30', 'MP55088', '2028-12-10', 'La Rioja', '720', '2994208888'),
('29212233', 'DNI', 'F', 'Florencia', 'Ibarra', 'LEG109', '1984-04-16', 'MP55099', '2028-04-22', 'Rio Negro', '95', '2994209999'),
('33323344', 'DNI', 'M', 'Maximiliano', 'Juarez', 'LEG110', '1990-08-05', 'MP55100', '2027-07-01', 'Catamarca', '410', '2994210101'),
('35434455', 'DNI', 'F', 'Agustina', 'Klein', 'LEG111', '1996-01-29', 'MP55111', '2029-05-13', 'Formosa', '260', '2994211111'),
('26545566', 'DNI', 'M', 'Leandro', 'Luna', 'LEG112', '1977-11-11', 'MP55122', '2027-03-03', 'Chaco', '815', '2994212121');

-- Subtipos (ISA): cada legajo tiene que existir antes en Profesional.
INSERT INTO Medico (legajo) VALUES ('LEG101'), ('LEG102'), ('LEG108'), ('LEG109');
INSERT INTO Enfermero (legajo) VALUES ('LEG103'), ('LEG104'), ('LEG110'), ('LEG111');
INSERT INTO Nutricionista (legajo) VALUES ('LEG105'), ('LEG112');
INSERT INTO Psicologo (legajo) VALUES ('LEG106');
INSERT INTO Kinesiologo (legajo) VALUES ('LEG107');

-- Solo medicos pueden tener fila aca (FK apunta a Medico). Valores segun dominio_especialidades.
INSERT INTO especialidades (legajo, nombre_especialidad) VALUES
('LEG101', 'endocrinologia'),
('LEG101', 'nefrologia'),
('LEG102', 'gastroenterologia'),
('LEG108', 'reumatologia'),
('LEG109', 'urologia'),
('LEG109', 'oftalmologia');

INSERT INTO Paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono) VALUES
('31112233', 'DNI', 'M', 'Hector', 'Villalba', 'AF-2001', '1948-03-05', '2016-02-11', 'Juncal', '145', '2994311111'),
('29223344', 'DNI', 'F', 'Beatriz', 'Acosta', 'AF-2002', '1952-11-19', '2011-07-22', 'Combate', '389', '2994312222'),
('41334455', 'DNI', 'M', 'Gonzalo', 'Reyes', 'AF-2003', '1999-04-27', '2021-01-15', 'Elordi', '60', '2994313333'),
('36445566', 'DNI', 'F', 'Julieta', 'Medina', 'AF-2004', '1989-08-14', '2019-05-09', 'Cipolletti', '210', '2994314444'),
('42556677', 'DNI', 'X', 'Sasha', 'Roldan', 'AF-2005', '2000-01-30', '2023-03-27', 'Almafuerte', '450', '2994315555'),
('33667788', 'DNI', 'F', 'Norma', 'Villagra', 'AF-2006', '1962-06-22', '2013-08-04', 'Rincon', '275', '2994316666'),
('28778899', 'DNI', 'M', 'Anibal', 'Cardenas', 'AF-2007', '1955-09-10', '2007-11-30', 'Ministro Gonzalez', '48', '2994317777'),
('39889900', 'DNI', 'F', 'Milagros', 'Benitez', 'AF-2008', '1994-02-17', '2020-09-12', 'Cordoba', '580', '2994318888'),
('44990011', 'DNI', 'M', 'Bautista', 'Correa', 'AF-2009', '2002-07-25', '2022-06-01', 'Mendoza', '325', '2994319999'),
('38101122', 'DNI', 'F', 'Guadalupe', 'Farfan', 'AF-2010', '1996-10-09', '2018-12-19', 'Jujuy', '410', '2994320202'),
('28555666', 'DNI', 'M', 'Ricardo', 'Diaz', 'AF002', '1968-07-22', '2019-06-01', 'Belgrano', '120', '2994003344'),
('30111222', 'DNI', 'F', 'Maria', 'Lopez', 'AF-1001', '1950-04-12', '2015-01-10', 'Mitre', '234', '2994111111');

INSERT INTO Contacto_emergencia (tipo_doc, nro_doc, sexo, nombre, apellido, parentesco, nro_telefono) VALUES
('DNI', '31112233', 'M', 'Rosa', 'Villalba', 'hijo/a', '2994311199'),
('DNI', '29223344', 'F', 'Oscar', 'Acosta', 'esposo/a', '2994312299'),
('DNI', '36445566', 'F', 'Facundo', 'Medina', 'hermano/a', '2994314499'),
('DNI', '33667788', 'F', 'Ruben', 'Villagra', 'hijo/a', '2994316699'),
('DNI', '39889900', 'F', 'Elena', 'Benitez', 'madre', '2994318899'),
('DNI', '44990011', 'M', 'Patricia', 'Correa', 'madre', '2994319909');


-- ============================
-- 2. Zonas y coordenadas
-- ============================

-- Asumiendo tabla vacia: id_zona queda 1=centro, 2=norte, 3=sur, 4=este, 5=oeste
INSERT INTO Zona (nombre) VALUES ('centro'), ('norte'), ('sur'), ('este'), ('oeste');

INSERT INTO Coordenada (id_zona) VALUES (1), (2), (2), (3), (3), (4), (5), (5);

INSERT INTO atiende_en (id_zona, legajo) VALUES
(1, 'LEG101'), (1, 'LEG103'), (1, 'LEG109'),
(2, 'LEG102'), (2, 'LEG110'),
(3, 'LEG104'), (3, 'LEG108'),
(4, 'LEG105'), (4, 'LEG111'),
(5, 'LEG107');


-- ============================
-- 3. Turno y Visita
-- ============================

INSERT INTO Turno (hora_Inicio, hora_Fin, fecha, legajo) VALUES
('07:30', '11:30', '2026-09-08', 'LEG101'),
('12:30', '16:30', '2026-09-08', 'LEG102'),
('07:30', '11:30', '2026-09-09', 'LEG103'),
('13:30', '17:30', '2026-09-09', 'LEG104'),
('08:30', '12:30', '2026-09-10', 'LEG105'),
('07:30', '11:30', '2026-09-10', 'LEG108'),
('12:30', '16:30', '2026-09-10', 'LEG109'),
('07:30', '11:30', '2026-09-11', 'LEG110'),
('13:30', '17:30', '2026-09-11', 'LEG111'),
('08:30', '12:30', '2026-09-11', 'LEG107');

-- estados_Visita: 'programada','fallada','realizada','pendiente de reasignacion','cancelada' (sin tilde)
INSERT INTO Visita (nro_doc, tipo_doc, fecha, hora_inicio, hora_fin, estado, legajo, sexo) VALUES
('31112233', 'DNI', '2026-09-09', '08:00', '08:40', 'realizada', 'LEG103', 'M'),
('29223344', 'DNI', '2026-09-09', '14:15', '14:45', 'programada', 'LEG104', 'F'),
('41334455', 'DNI', '2026-09-08', '10:00', NULL, 'pendiente de reasignacion', 'LEG101', 'M'),
('36445566', 'DNI', '2026-09-08', '14:00', '14:35', 'fallada', 'LEG102', 'F'),
('42556677', 'DNI', '2026-09-09', '08:45', '09:15', 'realizada', 'LEG103', 'X'),
('33667788', 'DNI', '2026-09-11', '10:30', '11:00', 'realizada', 'LEG110', 'F'),
('28778899', 'DNI', '2026-09-10', '07:45', '08:15', 'cancelada', 'LEG108', 'M'),
('39889900', 'DNI', '2026-09-11', '14:00', '14:35', 'realizada', 'LEG111', 'F'),
('44990011', 'DNI', '2026-09-10', '13:15', NULL, 'programada', 'LEG109', 'M'),
('38101122', 'DNI', '2026-09-09', '16:00', '16:30', 'realizada', 'LEG104', 'F');


-- ============================
-- 4. Obra social
-- ============================

-- dominio_tipoObraSocial: 'Otra','Sindical','Estatal','Estatal/Provincial','Personal de direccion','Prepaga' (sin tilde)
INSERT INTO Obra_social (tipo, plan, cobertura, estado, nombre) VALUES
('Prepaga', 'Plan 450', 'Cobertura integral con internacion premium', 'activa', 'Omint'),
('Estatal', 'INSSJP Plus', 'Cobertura ampliada para jubilados', 'activa', 'PAMI'),
('Personal de direccion', 'Ejecutivo', 'Cobertura para personal jerarquico', 'activa', 'Sancor Salud'),
('Sindical', 'Plan mecanicos', 'Cobertura sindical del gremio automotor', 'activa', 'OSPAT'),
('Otra', 'Plan mixto', 'Cobertura combinada publico-privada', 'activa', 'Federada Salud'),
('Prepaga', 'Azul 300', 'Cobertura con cartilla reducida', 'activa', 'Avalian'),
('Prepaga', 'Diamante', 'Cobertura con internacion en clinicas de alta complejidad', 'inactiva', 'Accord Salud'),
('Sindical', 'Plan basico', 'Cobertura sindical de gastronomicos', 'activa', 'OSPEGA');

INSERT INTO posee (tipo_doc, nro_doc, sexo, id_obra_social) VALUES
('DNI', '31112233', 'M', 1),
('DNI', '29223344', 'F', 2),
('DNI', '41334455', 'M', 3),
('DNI', '36445566', 'F', 4),
('DNI', '42556677', 'X', 5),
('DNI', '33667788', 'F', 2),
('DNI', '28778899', 'M', 6),
('DNI', '39889900', 'F', 7),
('DNI', '44990011', 'M', 8),
('DNI', '38101122', 'F', 1),
('DNI', '28555666', 'M', 2),
('DNI', '30111222', 'F', 1);


-- ============================
-- 5. Historia clinica
-- ============================

INSERT INTO Historia_clinica (tipo_doc, nro_doc, sexo) VALUES
('DNI', '31112233', 'M'),
('DNI', '29223344', 'F'),
('DNI', '41334455', 'M'),
('DNI', '36445566', 'F'),
('DNI', '42556677', 'X'),
('DNI', '33667788', 'F'),
('DNI', '28778899', 'M'),
('DNI', '39889900', 'F'),
('DNI', '44990011', 'M'),
('DNI', '38101122', 'F');

INSERT INTO alergias (id_historia_clinica, alergia) VALUES
(1, 'Sulfamidas'),
(2, 'Latex'),
(3, 'Ninguna conocida'),
(6, 'Ibuprofeno'),
(7, 'Frutos secos'),
(9, 'Ninguna conocida');

INSERT INTO vacunas (id_historia_clinica, vacuna) VALUES
(1, 'Antineumococica'),
(2, 'Antigripal 2026'),
(4, 'Doble adultos'),
(6, 'Antineumococica'),
(8, 'Hepatitis A'),
(10, 'Antigripal 2026');

INSERT INTO antecedentes_medicos (id_historia_clinica, descripcion_antecedente) VALUES
(1, 'Insuficiencia renal cronica leve'),
(2, 'Hipotiroidismo'),
(5, 'Cirugia de cadera en 2021'),
(6, 'Fractura de muneca en 2018'),
(7, 'Bronquitis cronica'),
(9, 'Alergia respiratoria estacional');


-- ============================
-- 6. Evolucion, Indicacion, Lesion
-- ============================

INSERT INTO Evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES
(1, 1, 'Estable', 'LEG103'),
(1, 2, 'Mejorando', 'LEG101'),
(2, 1, 'Estable', 'LEG104'),
(3, 1, 'Con dolor', 'LEG102'),
(4, 1, 'Estable', 'LEG103'),
(5, 1, 'Estable', 'LEG103'),
(6, 1, 'Mejorando', 'LEG110'),
(6, 2, 'Estable', 'LEG110'),
(7, 1, 'Empeorando', 'LEG108'),
(8, 1, 'Estable', 'LEG111'),
(9, 1, 'Con dolor', 'LEG109'),
(10, 1, 'Estable', 'LEG104');

INSERT INTO Indicacion (dosis, via) VALUES
('850 mg cada 12 horas', 'oral'),
('1 comprimido cada 24 horas', 'oral'),
('5 mg', 'intravenosa'),
('Aplicacion topica 3 veces al dia', 'topica'),
('300 mg cada 8 horas', 'oral'),
('40 mg cada 24 horas', 'oral'),
('2.5 mg en caso de dolor', 'sublingual'),
('1 ampolla cada 24 horas', 'intramuscular');

-- legajo tiene que ser de Enfermero (FK)
INSERT INTO aplica (id_indicacion, nro_evolucion, id_historia_clinica, fecha, legajo) VALUES
(1, 1, 1, '2026-08-28', 'LEG103'),
(2, 2, 1, '2026-08-30', 'LEG103'),
(3, 1, 2, '2026-08-29', 'LEG104'),
(4, 1, 3, '2026-08-31', 'LEG103'),
(5, 1, 6, '2026-09-01', 'LEG110'),
(6, 2, 6, '2026-09-02', 'LEG110'),
(7, 1, 8, '2026-09-03', 'LEG111'),
(8, 1, 10, '2026-09-04', 'LEG104');

-- legajo tiene que ser de Medico (FK)
INSERT INTO diagnostica (id_historia_clinica, nro_evolucion, legajo, diagnostico) VALUES
(1, 2, 'LEG101', 'Cierre de herida completo'),
(3, 1, 'LEG102', 'Contusion leve en miembro superior'),
(7, 1, 'LEG108', 'Fractura en proceso de consolidacion avanzada'),
(9, 1, 'LEG109', 'Control urologico de rutina');

-- tipo_lesion: 'abrasion','cortante','punzante','laceracion','quemadura','contusion','esguince','fractura','luxacion','ulcera'
INSERT INTO Lesion (detalle_curacion, area, tamano, grado, tipo) VALUES
('Limpieza y cambio de aposito', 'Antebrazo derecho', '4 cm', 'leve', 'laceracion'),
('Sutura y desinfeccion', 'Pierna izquierda', '6 cm', 'moderado', 'cortante'),
('Curacion con antiseptico', 'Hombro', '5 cm', 'grave', 'quemadura'),
('Vendaje compresivo', 'Rodilla', '3 cm', 'leve', 'esguince'),
('Inmovilizacion', 'Codo', '2 cm', 'moderado', 'fractura'),
('Curacion de ulcera por presion', 'Sacro', '7 cm', 'grave', 'ulcera'),
('Limpieza de herida punzante', 'Pie', '1 cm', 'leve', 'punzante'),
('Reduccion y control', 'Hombro', '10 cm', 'grave', 'luxacion');

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
('Cefalexina 500mg', 'antibiotico'),
('Diclofenac 50mg', 'antiinflamatorio'),
('Dipirona 500mg', 'analgesico'),
('Ranitidina 150mg', 'antiacido'),
('Losartan 50mg', 'antihipertensivo'),
('Glibenclamida 5mg', 'antidiabetico'),
('Alprazolam 0.25mg', 'ansiolitico'),
('Enoxaparina 40mg', 'anticoagulante');

INSERT INTO comprende (nombre_medicamento, id_indicacion) VALUES
('Cefalexina 500mg', 1),
('Diclofenac 50mg', 4),
('Dipirona 500mg', 5),
('Ranitidina 150mg', 2),
('Losartan 50mg', 6),
('Glibenclamida 5mg', 2),
('Alprazolam 0.25mg', 7),
('Enoxaparina 40mg', 8);

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
('Fotheringham 300', '2994400100'),
('Juan B. Justo 700', '2994400200'),
('Leloir 150', '2994400300'),
('Confluencia 480', '2994400400'),
('Chubut 210', '2994400500');

INSERT INTO suministra (id_farmacia, id_kit, stock) VALUES
(1, 1, 18),
(1, 2, 14),
(2, 3, 20),
(2, 4, 6),
(3, 5, 9),
(4, 6, 12),
(4, 7, 7),
(5, 8, 4);

INSERT INTO Suministro (nombre) VALUES
('Apositos hidrocoloides'),
('Guantes de nitrilo'),
('Alcohol isopropilico'),
('Jeringas 10ml'),
('Vendas de yeso'),
('Cinta microporosa'),
('Solucion salina'),
('Oximetro de pulso');

INSERT INTO contiene (id_kit, nombre_suministro) VALUES
(1, 'Apositos hidrocoloides'),
(1, 'Guantes de nitrilo'),
(2, 'Alcohol isopropilico'),
(3, 'Guantes de nitrilo'),
(4, 'Jeringas 10ml'),
(5, 'Oximetro de pulso'),
(6, 'Solucion salina'),
(7, 'Cinta microporosa'),
(8, 'Vendas de yeso'),
(8, 'Solucion salina');

-- legajo tiene que ser de Enfermero (FK)
INSERT INTO recibe (fecha, id_kit, legajo) VALUES
('2026-08-28', 1, 'LEG103'),
('2026-08-29', 1, 'LEG104'),
('2026-08-30', 2, 'LEG103'),
('2026-08-31', 5, 'LEG110'),
('2026-09-01', 6, 'LEG111'),
('2026-09-02', 8, 'LEG110'),
('2026-09-03', 3, 'LEG104'),
('2026-09-04', 4, 'LEG111');

INSERT INTO almacena (id_farmacia, nombre_medicamento, stock) VALUES
(1, 'Cefalexina 500mg', 45),
(1, 'Diclofenac 50mg', 38),
(2, 'Dipirona 500mg', 55),
(3, 'Ranitidina 150mg', 22),
(3, 'Losartan 50mg', 28),
(4, 'Glibenclamida 5mg', 18),
(4, 'Alprazolam 0.25mg', 12),
(5, 'Enoxaparina 40mg', 9);


