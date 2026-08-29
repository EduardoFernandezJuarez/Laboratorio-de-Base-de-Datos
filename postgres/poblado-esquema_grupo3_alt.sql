--
-- PostgreSQL database dump
--

\restrict UFC1UHCHboMcyNxM7qzUbyCuYgaJFX6ZrYQFjSgjuWrTUJCK6iyfGaLfYHthaXx

-- Dumped from database version 18.6 (Debian 18.6-1.pgdg13+2)
-- Dumped by pg_dump version 18.6 (Debian 18.6-1.pgdg13+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: paciente; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, fecha_alta) VALUES ('31112233', 'DNI', 'M', 'Hector', 'Villalba', 'AF-2001', '1948-03-05', '2016-02-11', 'Juncal', '145', '2994311111', '2016-03-12');
INSERT INTO esquema_grupo3_alt.paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, fecha_alta) VALUES ('29223344', 'DNI', 'F', 'Beatriz', 'Acosta', 'AF-2002', '1952-11-19', '2011-07-22', 'Combate', '389', '2994312222', '2011-08-21');
INSERT INTO esquema_grupo3_alt.paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, fecha_alta) VALUES ('41334455', 'DNI', 'M', 'Gonzalo', 'Reyes', 'AF-2003', '1999-04-27', '2021-01-15', 'Elordi', '60', '2994313333', '2021-02-14');
INSERT INTO esquema_grupo3_alt.paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, fecha_alta) VALUES ('36445566', 'DNI', 'F', 'Julieta', 'Medina', 'AF-2004', '1989-08-14', '2019-05-09', 'Cipolletti', '210', '2994314444', '2019-06-08');
INSERT INTO esquema_grupo3_alt.paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, fecha_alta) VALUES ('42556677', 'DNI', 'X', 'Sasha', 'Roldan', 'AF-2005', '2000-01-30', '2023-03-27', 'Almafuerte', '450', '2994315555', '2023-04-26');
INSERT INTO esquema_grupo3_alt.paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, fecha_alta) VALUES ('33667788', 'DNI', 'F', 'Norma', 'Villagra', 'AF-2006', '1962-06-22', '2013-08-04', 'Rincon', '275', '2994316666', '2013-09-03');
INSERT INTO esquema_grupo3_alt.paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, fecha_alta) VALUES ('28778899', 'DNI', 'M', 'Anibal', 'Cardenas', 'AF-2007', '1955-09-10', '2007-11-30', 'Ministro Gonzalez', '48', '2994317777', '2007-12-30');
INSERT INTO esquema_grupo3_alt.paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, fecha_alta) VALUES ('39889900', 'DNI', 'F', 'Milagros', 'Benitez', 'AF-2008', '1994-02-17', '2020-09-12', 'Cordoba', '580', '2994318888', '2020-10-12');
INSERT INTO esquema_grupo3_alt.paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, fecha_alta) VALUES ('44990011', 'DNI', 'M', 'Bautista', 'Correa', 'AF-2009', '2002-07-25', '2022-06-01', 'Mendoza', '325', '2994319999', '2022-07-01');
INSERT INTO esquema_grupo3_alt.paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, fecha_alta) VALUES ('38101122', 'DNI', 'F', 'Guadalupe', 'Farfan', 'AF-2010', '1996-10-09', '2018-12-19', 'Jujuy', '410', '2994320202', '2019-01-18');
INSERT INTO esquema_grupo3_alt.paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, fecha_alta) VALUES ('28555666', 'DNI', 'M', 'Ricardo', 'Diaz', 'AF002', '1968-07-22', '2019-06-01', 'Belgrano', '120', '2994003344', '2019-07-01');
INSERT INTO esquema_grupo3_alt.paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, fecha_alta) VALUES ('30111222', 'DNI', 'F', 'Maria', 'Lopez', 'AF-1001', '1950-04-12', '2015-01-10', 'Mitre', '234', '2994111111', '2015-02-09');


--
-- Data for Name: historia_clinica; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.historia_clinica (id_historia_clinica, tipo_doc, nro_doc, sexo) VALUES (1, 'DNI', '31112233', 'M');
INSERT INTO esquema_grupo3_alt.historia_clinica (id_historia_clinica, tipo_doc, nro_doc, sexo) VALUES (2, 'DNI', '29223344', 'F');
INSERT INTO esquema_grupo3_alt.historia_clinica (id_historia_clinica, tipo_doc, nro_doc, sexo) VALUES (3, 'DNI', '41334455', 'M');
INSERT INTO esquema_grupo3_alt.historia_clinica (id_historia_clinica, tipo_doc, nro_doc, sexo) VALUES (4, 'DNI', '36445566', 'F');
INSERT INTO esquema_grupo3_alt.historia_clinica (id_historia_clinica, tipo_doc, nro_doc, sexo) VALUES (5, 'DNI', '42556677', 'X');
INSERT INTO esquema_grupo3_alt.historia_clinica (id_historia_clinica, tipo_doc, nro_doc, sexo) VALUES (6, 'DNI', '33667788', 'F');
INSERT INTO esquema_grupo3_alt.historia_clinica (id_historia_clinica, tipo_doc, nro_doc, sexo) VALUES (7, 'DNI', '28778899', 'M');
INSERT INTO esquema_grupo3_alt.historia_clinica (id_historia_clinica, tipo_doc, nro_doc, sexo) VALUES (8, 'DNI', '39889900', 'F');
INSERT INTO esquema_grupo3_alt.historia_clinica (id_historia_clinica, tipo_doc, nro_doc, sexo) VALUES (9, 'DNI', '44990011', 'M');
INSERT INTO esquema_grupo3_alt.historia_clinica (id_historia_clinica, tipo_doc, nro_doc, sexo) VALUES (10, 'DNI', '38101122', 'F');


--
-- Data for Name: alergias; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.alergias (id_historia_clinica, alergia) VALUES (1, 'Sulfamidas');
INSERT INTO esquema_grupo3_alt.alergias (id_historia_clinica, alergia) VALUES (2, 'Latex');
INSERT INTO esquema_grupo3_alt.alergias (id_historia_clinica, alergia) VALUES (3, 'Ninguna conocida');
INSERT INTO esquema_grupo3_alt.alergias (id_historia_clinica, alergia) VALUES (6, 'Ibuprofeno');
INSERT INTO esquema_grupo3_alt.alergias (id_historia_clinica, alergia) VALUES (7, 'Frutos secos');
INSERT INTO esquema_grupo3_alt.alergias (id_historia_clinica, alergia) VALUES (9, 'Ninguna conocida');


--
-- Data for Name: farmacia; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.farmacia (id_farmacia, direccion, telefono) VALUES (1, 'Fotheringham 300', '2994400100');
INSERT INTO esquema_grupo3_alt.farmacia (id_farmacia, direccion, telefono) VALUES (2, 'Juan B. Justo 700', '2994400200');
INSERT INTO esquema_grupo3_alt.farmacia (id_farmacia, direccion, telefono) VALUES (3, 'Leloir 150', '2994400300');
INSERT INTO esquema_grupo3_alt.farmacia (id_farmacia, direccion, telefono) VALUES (4, 'Confluencia 480', '2994400400');
INSERT INTO esquema_grupo3_alt.farmacia (id_farmacia, direccion, telefono) VALUES (5, 'Chubut 210', '2994400500');


--
-- Data for Name: medicamento; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.medicamento (nombre, tipo) VALUES ('Cefalexina 500mg', 'antibiotico');
INSERT INTO esquema_grupo3_alt.medicamento (nombre, tipo) VALUES ('Diclofenac 50mg', 'antiinflamatorio');
INSERT INTO esquema_grupo3_alt.medicamento (nombre, tipo) VALUES ('Dipirona 500mg', 'analgesico');
INSERT INTO esquema_grupo3_alt.medicamento (nombre, tipo) VALUES ('Ranitidina 150mg', 'antiacido');
INSERT INTO esquema_grupo3_alt.medicamento (nombre, tipo) VALUES ('Losartan 50mg', 'antihipertensivo');
INSERT INTO esquema_grupo3_alt.medicamento (nombre, tipo) VALUES ('Glibenclamida 5mg', 'antidiabetico');
INSERT INTO esquema_grupo3_alt.medicamento (nombre, tipo) VALUES ('Alprazolam 0.25mg', 'ansiolitico');
INSERT INTO esquema_grupo3_alt.medicamento (nombre, tipo) VALUES ('Enoxaparina 40mg', 'anticoagulante');


--
-- Data for Name: almacena; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.almacena (id_farmacia, nombre_medicamento, stock) VALUES (1, 'Cefalexina 500mg', 45);
INSERT INTO esquema_grupo3_alt.almacena (id_farmacia, nombre_medicamento, stock) VALUES (1, 'Diclofenac 50mg', 38);
INSERT INTO esquema_grupo3_alt.almacena (id_farmacia, nombre_medicamento, stock) VALUES (2, 'Dipirona 500mg', 55);
INSERT INTO esquema_grupo3_alt.almacena (id_farmacia, nombre_medicamento, stock) VALUES (3, 'Ranitidina 150mg', 22);
INSERT INTO esquema_grupo3_alt.almacena (id_farmacia, nombre_medicamento, stock) VALUES (3, 'Losartan 50mg', 28);
INSERT INTO esquema_grupo3_alt.almacena (id_farmacia, nombre_medicamento, stock) VALUES (4, 'Glibenclamida 5mg', 18);
INSERT INTO esquema_grupo3_alt.almacena (id_farmacia, nombre_medicamento, stock) VALUES (4, 'Alprazolam 0.25mg', 12);
INSERT INTO esquema_grupo3_alt.almacena (id_farmacia, nombre_medicamento, stock) VALUES (5, 'Enoxaparina 40mg', 9);


--
-- Data for Name: antecedentes_medicos; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.antecedentes_medicos (id_historia_clinica, descripcion_antecedente) VALUES (1, 'Insuficiencia renal cronica leve');
INSERT INTO esquema_grupo3_alt.antecedentes_medicos (id_historia_clinica, descripcion_antecedente) VALUES (2, 'Hipotiroidismo');
INSERT INTO esquema_grupo3_alt.antecedentes_medicos (id_historia_clinica, descripcion_antecedente) VALUES (5, 'Cirugia de cadera en 2021');
INSERT INTO esquema_grupo3_alt.antecedentes_medicos (id_historia_clinica, descripcion_antecedente) VALUES (6, 'Fractura de muneca en 2018');
INSERT INTO esquema_grupo3_alt.antecedentes_medicos (id_historia_clinica, descripcion_antecedente) VALUES (7, 'Bronquitis cronica');
INSERT INTO esquema_grupo3_alt.antecedentes_medicos (id_historia_clinica, descripcion_antecedente) VALUES (9, 'Alergia respiratoria estacional');


--
-- Data for Name: profesional; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('22334455', 'DNI', 'F', 'Silvina', 'Aguirre', 'LEG101', '1974-02-11', 'MP55011', '2028-03-15', 'Fotheringham', '210', '2994201111');
INSERT INTO esquema_grupo3_alt.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('23445566', 'DNI', 'M', 'Ezequiel', 'Bravo', 'LEG102', '1981-05-19', 'MP55022', '2027-08-20', 'Juan B. Justo', '640', '2994202222');
INSERT INTO esquema_grupo3_alt.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('26556677', 'DNI', 'F', 'Daniela', 'Contreras', 'LEG103', '1987-09-02', 'MP55033', '2029-01-05', 'Leloir', '85', '2994203333');
INSERT INTO esquema_grupo3_alt.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('28667788', 'DNI', 'M', 'Sebastian', 'Duran', 'LEG104', '1992-12-24', 'MP55044', '2027-11-30', 'Olavarria', '470', '2994204444');
INSERT INTO esquema_grupo3_alt.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('24778899', 'DNI', 'F', 'Cecilia', 'Escobar', 'LEG105', '1979-07-08', 'MP55055', '2028-06-18', 'Confluencia', '330', '2994205555');
INSERT INTO esquema_grupo3_alt.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('27889900', 'DNI', 'M', 'Ignacio', 'Farias', 'LEG106', '1983-03-27', 'MP55066', '2027-02-14', 'Chubut', '150', '2994206666');
INSERT INTO esquema_grupo3_alt.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('31990011', 'DNI', 'F', 'Yamila', 'Gutierrez', 'LEG107', '1995-06-13', 'MP55077', '2029-09-09', 'Misiones', '580', '2994207777');
INSERT INTO esquema_grupo3_alt.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('20101122', 'DNI', 'M', 'Gustavo', 'Herrera', 'LEG108', '1968-10-30', 'MP55088', '2028-12-10', 'La Rioja', '720', '2994208888');
INSERT INTO esquema_grupo3_alt.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('29212233', 'DNI', 'F', 'Florencia', 'Ibarra', 'LEG109', '1984-04-16', 'MP55099', '2028-04-22', 'Rio Negro', '95', '2994209999');
INSERT INTO esquema_grupo3_alt.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('33323344', 'DNI', 'M', 'Maximiliano', 'Juarez', 'LEG110', '1990-08-05', 'MP55100', '2027-07-01', 'Catamarca', '410', '2994210101');
INSERT INTO esquema_grupo3_alt.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('35434455', 'DNI', 'F', 'Agustina', 'Klein', 'LEG111', '1996-01-29', 'MP55111', '2029-05-13', 'Formosa', '260', '2994211111');
INSERT INTO esquema_grupo3_alt.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('26545566', 'DNI', 'M', 'Leandro', 'Luna', 'LEG112', '1977-11-11', 'MP55122', '2027-03-03', 'Chaco', '815', '2994212121');


--
-- Data for Name: evolucion; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES (1, 1, 'Estable', 'LEG103');
INSERT INTO esquema_grupo3_alt.evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES (1, 2, 'Mejorando', 'LEG101');
INSERT INTO esquema_grupo3_alt.evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES (2, 1, 'Estable', 'LEG104');
INSERT INTO esquema_grupo3_alt.evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES (3, 1, 'Con dolor', 'LEG102');
INSERT INTO esquema_grupo3_alt.evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES (4, 1, 'Estable', 'LEG103');
INSERT INTO esquema_grupo3_alt.evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES (5, 1, 'Estable', 'LEG103');
INSERT INTO esquema_grupo3_alt.evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES (6, 1, 'Mejorando', 'LEG110');
INSERT INTO esquema_grupo3_alt.evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES (6, 2, 'Estable', 'LEG110');
INSERT INTO esquema_grupo3_alt.evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES (7, 1, 'Empeorando', 'LEG108');
INSERT INTO esquema_grupo3_alt.evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES (8, 1, 'Estable', 'LEG111');
INSERT INTO esquema_grupo3_alt.evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES (9, 1, 'Con dolor', 'LEG109');
INSERT INTO esquema_grupo3_alt.evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES (10, 1, 'Estable', 'LEG104');


--
-- Data for Name: indicacion; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.indicacion (id_indicacion, dosis, via) VALUES (1, '850 mg cada 12 horas', 'oral');
INSERT INTO esquema_grupo3_alt.indicacion (id_indicacion, dosis, via) VALUES (2, '1 comprimido cada 24 horas', 'oral');
INSERT INTO esquema_grupo3_alt.indicacion (id_indicacion, dosis, via) VALUES (3, '5 mg', 'intravenosa');
INSERT INTO esquema_grupo3_alt.indicacion (id_indicacion, dosis, via) VALUES (4, 'Aplicacion topica 3 veces al dia', 'topica');
INSERT INTO esquema_grupo3_alt.indicacion (id_indicacion, dosis, via) VALUES (5, '300 mg cada 8 horas', 'oral');
INSERT INTO esquema_grupo3_alt.indicacion (id_indicacion, dosis, via) VALUES (6, '40 mg cada 24 horas', 'oral');
INSERT INTO esquema_grupo3_alt.indicacion (id_indicacion, dosis, via) VALUES (7, '2.5 mg en caso de dolor', 'sublingual');
INSERT INTO esquema_grupo3_alt.indicacion (id_indicacion, dosis, via) VALUES (8, '1 ampolla cada 24 horas', 'intramuscular');


--
-- Data for Name: aplica; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.aplica (id_indicacion, nro_evolucion, id_historia_clinica, fecha, legajo) VALUES (1, 1, 1, '2026-08-28', 'LEG103');
INSERT INTO esquema_grupo3_alt.aplica (id_indicacion, nro_evolucion, id_historia_clinica, fecha, legajo) VALUES (2, 2, 1, '2026-08-30', 'LEG103');
INSERT INTO esquema_grupo3_alt.aplica (id_indicacion, nro_evolucion, id_historia_clinica, fecha, legajo) VALUES (3, 1, 2, '2026-08-29', 'LEG104');
INSERT INTO esquema_grupo3_alt.aplica (id_indicacion, nro_evolucion, id_historia_clinica, fecha, legajo) VALUES (4, 1, 3, '2026-08-31', 'LEG103');
INSERT INTO esquema_grupo3_alt.aplica (id_indicacion, nro_evolucion, id_historia_clinica, fecha, legajo) VALUES (5, 1, 6, '2026-09-01', 'LEG110');
INSERT INTO esquema_grupo3_alt.aplica (id_indicacion, nro_evolucion, id_historia_clinica, fecha, legajo) VALUES (6, 2, 6, '2026-09-02', 'LEG110');
INSERT INTO esquema_grupo3_alt.aplica (id_indicacion, nro_evolucion, id_historia_clinica, fecha, legajo) VALUES (7, 1, 8, '2026-09-03', 'LEG111');
INSERT INTO esquema_grupo3_alt.aplica (id_indicacion, nro_evolucion, id_historia_clinica, fecha, legajo) VALUES (8, 1, 10, '2026-09-04', 'LEG104');


--
-- Data for Name: zona; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.zona (id_zona, nombre) VALUES (1, 'centro');
INSERT INTO esquema_grupo3_alt.zona (id_zona, nombre) VALUES (2, 'norte');
INSERT INTO esquema_grupo3_alt.zona (id_zona, nombre) VALUES (3, 'sur');
INSERT INTO esquema_grupo3_alt.zona (id_zona, nombre) VALUES (4, 'este');
INSERT INTO esquema_grupo3_alt.zona (id_zona, nombre) VALUES (5, 'oeste');


--
-- Data for Name: atiende_en; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.atiende_en (id_zona, legajo) VALUES (1, 'LEG101');
INSERT INTO esquema_grupo3_alt.atiende_en (id_zona, legajo) VALUES (1, 'LEG103');
INSERT INTO esquema_grupo3_alt.atiende_en (id_zona, legajo) VALUES (1, 'LEG109');
INSERT INTO esquema_grupo3_alt.atiende_en (id_zona, legajo) VALUES (2, 'LEG102');
INSERT INTO esquema_grupo3_alt.atiende_en (id_zona, legajo) VALUES (2, 'LEG110');
INSERT INTO esquema_grupo3_alt.atiende_en (id_zona, legajo) VALUES (3, 'LEG104');
INSERT INTO esquema_grupo3_alt.atiende_en (id_zona, legajo) VALUES (3, 'LEG108');
INSERT INTO esquema_grupo3_alt.atiende_en (id_zona, legajo) VALUES (4, 'LEG105');
INSERT INTO esquema_grupo3_alt.atiende_en (id_zona, legajo) VALUES (4, 'LEG111');
INSERT INTO esquema_grupo3_alt.atiende_en (id_zona, legajo) VALUES (5, 'LEG107');


--
-- Data for Name: comprende; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.comprende (nombre_medicamento, id_indicacion) VALUES ('Cefalexina 500mg', 1);
INSERT INTO esquema_grupo3_alt.comprende (nombre_medicamento, id_indicacion) VALUES ('Diclofenac 50mg', 4);
INSERT INTO esquema_grupo3_alt.comprende (nombre_medicamento, id_indicacion) VALUES ('Dipirona 500mg', 5);
INSERT INTO esquema_grupo3_alt.comprende (nombre_medicamento, id_indicacion) VALUES ('Ranitidina 150mg', 2);
INSERT INTO esquema_grupo3_alt.comprende (nombre_medicamento, id_indicacion) VALUES ('Losartan 50mg', 6);
INSERT INTO esquema_grupo3_alt.comprende (nombre_medicamento, id_indicacion) VALUES ('Glibenclamida 5mg', 2);
INSERT INTO esquema_grupo3_alt.comprende (nombre_medicamento, id_indicacion) VALUES ('Alprazolam 0.25mg', 7);
INSERT INTO esquema_grupo3_alt.comprende (nombre_medicamento, id_indicacion) VALUES ('Enoxaparina 40mg', 8);


--
-- Data for Name: contacto_emergencia; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.contacto_emergencia (tipo_doc, nro_doc, sexo, nombre, apellido, parentesco, nro_telefono) VALUES ('DNI', '31112233', 'M', 'Rosa', 'Villalba', 'hijo/a', '2994311199');
INSERT INTO esquema_grupo3_alt.contacto_emergencia (tipo_doc, nro_doc, sexo, nombre, apellido, parentesco, nro_telefono) VALUES ('DNI', '29223344', 'F', 'Oscar', 'Acosta', 'esposo/a', '2994312299');
INSERT INTO esquema_grupo3_alt.contacto_emergencia (tipo_doc, nro_doc, sexo, nombre, apellido, parentesco, nro_telefono) VALUES ('DNI', '36445566', 'F', 'Facundo', 'Medina', 'hermano/a', '2994314499');
INSERT INTO esquema_grupo3_alt.contacto_emergencia (tipo_doc, nro_doc, sexo, nombre, apellido, parentesco, nro_telefono) VALUES ('DNI', '33667788', 'F', 'Ruben', 'Villagra', 'hijo/a', '2994316699');
INSERT INTO esquema_grupo3_alt.contacto_emergencia (tipo_doc, nro_doc, sexo, nombre, apellido, parentesco, nro_telefono) VALUES ('DNI', '39889900', 'F', 'Elena', 'Benitez', 'madre', '2994318899');
INSERT INTO esquema_grupo3_alt.contacto_emergencia (tipo_doc, nro_doc, sexo, nombre, apellido, parentesco, nro_telefono) VALUES ('DNI', '44990011', 'M', 'Patricia', 'Correa', 'madre', '2994319909');


--
-- Data for Name: kit; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.kit (id_kit, tipo) VALUES (1, 'curacion');
INSERT INTO esquema_grupo3_alt.kit (id_kit, tipo) VALUES (2, 'curacion');
INSERT INTO esquema_grupo3_alt.kit (id_kit, tipo) VALUES (3, 'atencion');
INSERT INTO esquema_grupo3_alt.kit (id_kit, tipo) VALUES (4, 'atencion');
INSERT INTO esquema_grupo3_alt.kit (id_kit, tipo) VALUES (5, 'diagnostico');
INSERT INTO esquema_grupo3_alt.kit (id_kit, tipo) VALUES (6, 'medicacion');
INSERT INTO esquema_grupo3_alt.kit (id_kit, tipo) VALUES (7, 'medicacion');
INSERT INTO esquema_grupo3_alt.kit (id_kit, tipo) VALUES (8, 'emergencia');


--
-- Data for Name: suministro; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.suministro (id_suministro, nombre) VALUES (1, 'Apositos hidrocoloides');
INSERT INTO esquema_grupo3_alt.suministro (id_suministro, nombre) VALUES (2, 'Guantes de nitrilo');
INSERT INTO esquema_grupo3_alt.suministro (id_suministro, nombre) VALUES (3, 'Alcohol isopropilico');
INSERT INTO esquema_grupo3_alt.suministro (id_suministro, nombre) VALUES (4, 'Jeringas 10ml');
INSERT INTO esquema_grupo3_alt.suministro (id_suministro, nombre) VALUES (5, 'Vendas de yeso');
INSERT INTO esquema_grupo3_alt.suministro (id_suministro, nombre) VALUES (6, 'Cinta microporosa');
INSERT INTO esquema_grupo3_alt.suministro (id_suministro, nombre) VALUES (7, 'Solucion salina');
INSERT INTO esquema_grupo3_alt.suministro (id_suministro, nombre) VALUES (8, 'Oximetro de pulso');


--
-- Data for Name: contiene; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.contiene (id_kit, nombre_suministro) VALUES (1, 'Apositos hidrocoloides');
INSERT INTO esquema_grupo3_alt.contiene (id_kit, nombre_suministro) VALUES (1, 'Guantes de nitrilo');
INSERT INTO esquema_grupo3_alt.contiene (id_kit, nombre_suministro) VALUES (2, 'Alcohol isopropilico');
INSERT INTO esquema_grupo3_alt.contiene (id_kit, nombre_suministro) VALUES (3, 'Guantes de nitrilo');
INSERT INTO esquema_grupo3_alt.contiene (id_kit, nombre_suministro) VALUES (4, 'Jeringas 10ml');
INSERT INTO esquema_grupo3_alt.contiene (id_kit, nombre_suministro) VALUES (5, 'Oximetro de pulso');
INSERT INTO esquema_grupo3_alt.contiene (id_kit, nombre_suministro) VALUES (6, 'Solucion salina');
INSERT INTO esquema_grupo3_alt.contiene (id_kit, nombre_suministro) VALUES (7, 'Cinta microporosa');
INSERT INTO esquema_grupo3_alt.contiene (id_kit, nombre_suministro) VALUES (8, 'Vendas de yeso');
INSERT INTO esquema_grupo3_alt.contiene (id_kit, nombre_suministro) VALUES (8, 'Solucion salina');


--
-- Data for Name: coordenada; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.coordenada (id_coordenada, id_zona) VALUES (1, 1);
INSERT INTO esquema_grupo3_alt.coordenada (id_coordenada, id_zona) VALUES (2, 2);
INSERT INTO esquema_grupo3_alt.coordenada (id_coordenada, id_zona) VALUES (3, 2);
INSERT INTO esquema_grupo3_alt.coordenada (id_coordenada, id_zona) VALUES (4, 3);
INSERT INTO esquema_grupo3_alt.coordenada (id_coordenada, id_zona) VALUES (5, 3);
INSERT INTO esquema_grupo3_alt.coordenada (id_coordenada, id_zona) VALUES (6, 4);
INSERT INTO esquema_grupo3_alt.coordenada (id_coordenada, id_zona) VALUES (7, 5);
INSERT INTO esquema_grupo3_alt.coordenada (id_coordenada, id_zona) VALUES (8, 5);


--
-- Data for Name: lesion; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.lesion (id_lesion, detalle_curacion, area, tamano, grado, tipo) VALUES (1, 'Limpieza y cambio de aposito', 'Antebrazo derecho', '4 cm', 'leve', 'laceracion');
INSERT INTO esquema_grupo3_alt.lesion (id_lesion, detalle_curacion, area, tamano, grado, tipo) VALUES (2, 'Sutura y desinfeccion', 'Pierna izquierda', '6 cm', 'moderado', 'cortante');
INSERT INTO esquema_grupo3_alt.lesion (id_lesion, detalle_curacion, area, tamano, grado, tipo) VALUES (3, 'Curacion con antiseptico', 'Hombro', '5 cm', 'grave', 'quemadura');
INSERT INTO esquema_grupo3_alt.lesion (id_lesion, detalle_curacion, area, tamano, grado, tipo) VALUES (4, 'Vendaje compresivo', 'Rodilla', '3 cm', 'leve', 'esguince');
INSERT INTO esquema_grupo3_alt.lesion (id_lesion, detalle_curacion, area, tamano, grado, tipo) VALUES (5, 'Inmovilizacion', 'Codo', '2 cm', 'moderado', 'fractura');
INSERT INTO esquema_grupo3_alt.lesion (id_lesion, detalle_curacion, area, tamano, grado, tipo) VALUES (6, 'Curacion de ulcera por presion', 'Sacro', '7 cm', 'grave', 'ulcera');
INSERT INTO esquema_grupo3_alt.lesion (id_lesion, detalle_curacion, area, tamano, grado, tipo) VALUES (7, 'Limpieza de herida punzante', 'Pie', '1 cm', 'leve', 'punzante');
INSERT INTO esquema_grupo3_alt.lesion (id_lesion, detalle_curacion, area, tamano, grado, tipo) VALUES (8, 'Reduccion y control', 'Hombro', '10 cm', 'grave', 'luxacion');


--
-- Data for Name: denota; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.denota (id_historia_clinica, nro_evolucion, id_lesion) VALUES (1, 1, 1);
INSERT INTO esquema_grupo3_alt.denota (id_historia_clinica, nro_evolucion, id_lesion) VALUES (1, 2, 1);
INSERT INTO esquema_grupo3_alt.denota (id_historia_clinica, nro_evolucion, id_lesion) VALUES (2, 1, 2);
INSERT INTO esquema_grupo3_alt.denota (id_historia_clinica, nro_evolucion, id_lesion) VALUES (3, 1, 3);
INSERT INTO esquema_grupo3_alt.denota (id_historia_clinica, nro_evolucion, id_lesion) VALUES (6, 1, 8);
INSERT INTO esquema_grupo3_alt.denota (id_historia_clinica, nro_evolucion, id_lesion) VALUES (6, 2, 8);
INSERT INTO esquema_grupo3_alt.denota (id_historia_clinica, nro_evolucion, id_lesion) VALUES (7, 1, 5);
INSERT INTO esquema_grupo3_alt.denota (id_historia_clinica, nro_evolucion, id_lesion) VALUES (8, 1, 4);


--
-- Data for Name: medico; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.medico (legajo) VALUES ('LEG101');
INSERT INTO esquema_grupo3_alt.medico (legajo) VALUES ('LEG102');
INSERT INTO esquema_grupo3_alt.medico (legajo) VALUES ('LEG108');
INSERT INTO esquema_grupo3_alt.medico (legajo) VALUES ('LEG109');


--
-- Data for Name: diagnostica; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.diagnostica (id_historia_clinica, nro_evolucion, legajo, diagnostico) VALUES (1, 2, 'LEG101', 'Cierre de herida completo');
INSERT INTO esquema_grupo3_alt.diagnostica (id_historia_clinica, nro_evolucion, legajo, diagnostico) VALUES (3, 1, 'LEG102', 'Contusion leve en miembro superior');
INSERT INTO esquema_grupo3_alt.diagnostica (id_historia_clinica, nro_evolucion, legajo, diagnostico) VALUES (7, 1, 'LEG108', 'Fractura en proceso de consolidacion avanzada');
INSERT INTO esquema_grupo3_alt.diagnostica (id_historia_clinica, nro_evolucion, legajo, diagnostico) VALUES (9, 1, 'LEG109', 'Control urologico de rutina');


--
-- Data for Name: enfermero; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.enfermero (legajo) VALUES ('LEG103');
INSERT INTO esquema_grupo3_alt.enfermero (legajo) VALUES ('LEG104');
INSERT INTO esquema_grupo3_alt.enfermero (legajo) VALUES ('LEG110');
INSERT INTO esquema_grupo3_alt.enfermero (legajo) VALUES ('LEG111');


--
-- Data for Name: especialidades; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.especialidades (legajo, nombre_especialidad) VALUES ('LEG101', 'endocrinologia');
INSERT INTO esquema_grupo3_alt.especialidades (legajo, nombre_especialidad) VALUES ('LEG101', 'nefrologia');
INSERT INTO esquema_grupo3_alt.especialidades (legajo, nombre_especialidad) VALUES ('LEG102', 'gastroenterologia');
INSERT INTO esquema_grupo3_alt.especialidades (legajo, nombre_especialidad) VALUES ('LEG108', 'reumatologia');
INSERT INTO esquema_grupo3_alt.especialidades (legajo, nombre_especialidad) VALUES ('LEG109', 'urologia');
INSERT INTO esquema_grupo3_alt.especialidades (legajo, nombre_especialidad) VALUES ('LEG109', 'oftalmologia');


--
-- Data for Name: kinesiologo; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.kinesiologo (legajo) VALUES ('LEG107');


--
-- Data for Name: necesita; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.necesita (id_kit, id_lesion) VALUES (1, 1);
INSERT INTO esquema_grupo3_alt.necesita (id_kit, id_lesion) VALUES (1, 4);
INSERT INTO esquema_grupo3_alt.necesita (id_kit, id_lesion) VALUES (2, 6);
INSERT INTO esquema_grupo3_alt.necesita (id_kit, id_lesion) VALUES (3, 2);
INSERT INTO esquema_grupo3_alt.necesita (id_kit, id_lesion) VALUES (3, 7);
INSERT INTO esquema_grupo3_alt.necesita (id_kit, id_lesion) VALUES (5, 8);
INSERT INTO esquema_grupo3_alt.necesita (id_kit, id_lesion) VALUES (6, 3);
INSERT INTO esquema_grupo3_alt.necesita (id_kit, id_lesion) VALUES (8, 5);


--
-- Data for Name: nutricionista; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.nutricionista (legajo) VALUES ('LEG105');
INSERT INTO esquema_grupo3_alt.nutricionista (legajo) VALUES ('LEG112');


--
-- Data for Name: obra_social; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.obra_social (id_obra_social, tipo, plan, cobertura, estado, nombre) VALUES (1, 'Prepaga', 'Plan 450', 'Cobertura integral con internacion premium', 'activa', 'Omint');
INSERT INTO esquema_grupo3_alt.obra_social (id_obra_social, tipo, plan, cobertura, estado, nombre) VALUES (2, 'Estatal', 'INSSJP Plus', 'Cobertura ampliada para jubilados', 'activa', 'PAMI');
INSERT INTO esquema_grupo3_alt.obra_social (id_obra_social, tipo, plan, cobertura, estado, nombre) VALUES (3, 'Personal de direccion', 'Ejecutivo', 'Cobertura para personal jerarquico', 'activa', 'Sancor Salud');
INSERT INTO esquema_grupo3_alt.obra_social (id_obra_social, tipo, plan, cobertura, estado, nombre) VALUES (4, 'Sindical', 'Plan mecanicos', 'Cobertura sindical del gremio automotor', 'activa', 'OSPAT');
INSERT INTO esquema_grupo3_alt.obra_social (id_obra_social, tipo, plan, cobertura, estado, nombre) VALUES (5, 'Otra', 'Plan mixto', 'Cobertura combinada publico-privada', 'activa', 'Federada Salud');
INSERT INTO esquema_grupo3_alt.obra_social (id_obra_social, tipo, plan, cobertura, estado, nombre) VALUES (6, 'Prepaga', 'Azul 300', 'Cobertura con cartilla reducida', 'activa', 'Avalian');
INSERT INTO esquema_grupo3_alt.obra_social (id_obra_social, tipo, plan, cobertura, estado, nombre) VALUES (7, 'Prepaga', 'Diamante', 'Cobertura con internacion en clinicas de alta complejidad', 'inactiva', 'Accord Salud');
INSERT INTO esquema_grupo3_alt.obra_social (id_obra_social, tipo, plan, cobertura, estado, nombre) VALUES (8, 'Sindical', 'Plan basico', 'Cobertura sindical de gastronomicos', 'activa', 'OSPEGA');


--
-- Data for Name: posee; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.posee (tipo_doc, nro_doc, sexo, id_obra_social) VALUES ('DNI', '31112233', 'M', 1);
INSERT INTO esquema_grupo3_alt.posee (tipo_doc, nro_doc, sexo, id_obra_social) VALUES ('DNI', '29223344', 'F', 2);
INSERT INTO esquema_grupo3_alt.posee (tipo_doc, nro_doc, sexo, id_obra_social) VALUES ('DNI', '41334455', 'M', 3);
INSERT INTO esquema_grupo3_alt.posee (tipo_doc, nro_doc, sexo, id_obra_social) VALUES ('DNI', '36445566', 'F', 4);
INSERT INTO esquema_grupo3_alt.posee (tipo_doc, nro_doc, sexo, id_obra_social) VALUES ('DNI', '42556677', 'X', 5);
INSERT INTO esquema_grupo3_alt.posee (tipo_doc, nro_doc, sexo, id_obra_social) VALUES ('DNI', '33667788', 'F', 2);
INSERT INTO esquema_grupo3_alt.posee (tipo_doc, nro_doc, sexo, id_obra_social) VALUES ('DNI', '28778899', 'M', 6);
INSERT INTO esquema_grupo3_alt.posee (tipo_doc, nro_doc, sexo, id_obra_social) VALUES ('DNI', '39889900', 'F', 7);
INSERT INTO esquema_grupo3_alt.posee (tipo_doc, nro_doc, sexo, id_obra_social) VALUES ('DNI', '44990011', 'M', 8);
INSERT INTO esquema_grupo3_alt.posee (tipo_doc, nro_doc, sexo, id_obra_social) VALUES ('DNI', '38101122', 'F', 1);
INSERT INTO esquema_grupo3_alt.posee (tipo_doc, nro_doc, sexo, id_obra_social) VALUES ('DNI', '28555666', 'M', 2);
INSERT INTO esquema_grupo3_alt.posee (tipo_doc, nro_doc, sexo, id_obra_social) VALUES ('DNI', '30111222', 'F', 2);


--
-- Data for Name: psicologo; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.psicologo (legajo) VALUES ('LEG106');


--
-- Data for Name: recibe; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.recibe (fecha, id_kit, legajo) VALUES ('2026-08-28', 1, 'LEG103');
INSERT INTO esquema_grupo3_alt.recibe (fecha, id_kit, legajo) VALUES ('2026-08-29', 1, 'LEG104');
INSERT INTO esquema_grupo3_alt.recibe (fecha, id_kit, legajo) VALUES ('2026-08-30', 2, 'LEG103');
INSERT INTO esquema_grupo3_alt.recibe (fecha, id_kit, legajo) VALUES ('2026-08-31', 5, 'LEG110');
INSERT INTO esquema_grupo3_alt.recibe (fecha, id_kit, legajo) VALUES ('2026-09-01', 6, 'LEG111');
INSERT INTO esquema_grupo3_alt.recibe (fecha, id_kit, legajo) VALUES ('2026-09-02', 8, 'LEG110');
INSERT INTO esquema_grupo3_alt.recibe (fecha, id_kit, legajo) VALUES ('2026-09-03', 3, 'LEG104');
INSERT INTO esquema_grupo3_alt.recibe (fecha, id_kit, legajo) VALUES ('2026-09-04', 4, 'LEG111');


--
-- Data for Name: suministra; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.suministra (id_farmacia, id_kit, stock) VALUES (1, 1, 18);
INSERT INTO esquema_grupo3_alt.suministra (id_farmacia, id_kit, stock) VALUES (1, 2, 14);
INSERT INTO esquema_grupo3_alt.suministra (id_farmacia, id_kit, stock) VALUES (2, 3, 20);
INSERT INTO esquema_grupo3_alt.suministra (id_farmacia, id_kit, stock) VALUES (2, 4, 6);
INSERT INTO esquema_grupo3_alt.suministra (id_farmacia, id_kit, stock) VALUES (3, 5, 9);
INSERT INTO esquema_grupo3_alt.suministra (id_farmacia, id_kit, stock) VALUES (4, 6, 12);
INSERT INTO esquema_grupo3_alt.suministra (id_farmacia, id_kit, stock) VALUES (4, 7, 7);
INSERT INTO esquema_grupo3_alt.suministra (id_farmacia, id_kit, stock) VALUES (5, 8, 4);


--
-- Data for Name: tipo_producto; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.tipo_producto (idtipo, descripcion) VALUES (1, 'Insumo de curación');
INSERT INTO esquema_grupo3_alt.tipo_producto (idtipo, descripcion) VALUES (2, 'Insumo de bioseguridad');
INSERT INTO esquema_grupo3_alt.tipo_producto (idtipo, descripcion) VALUES (3, 'Insumo de diagnóstico');
INSERT INTO esquema_grupo3_alt.tipo_producto (idtipo, descripcion) VALUES (4, 'Insumo descartable');


--
-- Data for Name: tiene_un; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.tiene_un (id_suministro, idtipo) VALUES (1, 1);
INSERT INTO esquema_grupo3_alt.tiene_un (id_suministro, idtipo) VALUES (2, 2);
INSERT INTO esquema_grupo3_alt.tiene_un (id_suministro, idtipo) VALUES (3, 2);
INSERT INTO esquema_grupo3_alt.tiene_un (id_suministro, idtipo) VALUES (4, 4);
INSERT INTO esquema_grupo3_alt.tiene_un (id_suministro, idtipo) VALUES (5, 1);
INSERT INTO esquema_grupo3_alt.tiene_un (id_suministro, idtipo) VALUES (6, 1);
INSERT INTO esquema_grupo3_alt.tiene_un (id_suministro, idtipo) VALUES (7, 4);
INSERT INTO esquema_grupo3_alt.tiene_un (id_suministro, idtipo) VALUES (8, 3);


--
-- Data for Name: turno; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.turno (id_turno, hora_inicio, hora_fin, fecha, legajo) VALUES (1, '07:30:00', '11:30:00', '2026-09-08', 'LEG101');
INSERT INTO esquema_grupo3_alt.turno (id_turno, hora_inicio, hora_fin, fecha, legajo) VALUES (2, '12:30:00', '16:30:00', '2026-09-08', 'LEG102');
INSERT INTO esquema_grupo3_alt.turno (id_turno, hora_inicio, hora_fin, fecha, legajo) VALUES (3, '07:30:00', '11:30:00', '2026-09-09', 'LEG103');
INSERT INTO esquema_grupo3_alt.turno (id_turno, hora_inicio, hora_fin, fecha, legajo) VALUES (4, '13:30:00', '17:30:00', '2026-09-09', 'LEG104');
INSERT INTO esquema_grupo3_alt.turno (id_turno, hora_inicio, hora_fin, fecha, legajo) VALUES (5, '08:30:00', '12:30:00', '2026-09-10', 'LEG105');
INSERT INTO esquema_grupo3_alt.turno (id_turno, hora_inicio, hora_fin, fecha, legajo) VALUES (6, '07:30:00', '11:30:00', '2026-09-10', 'LEG108');
INSERT INTO esquema_grupo3_alt.turno (id_turno, hora_inicio, hora_fin, fecha, legajo) VALUES (7, '12:30:00', '16:30:00', '2026-09-10', 'LEG109');
INSERT INTO esquema_grupo3_alt.turno (id_turno, hora_inicio, hora_fin, fecha, legajo) VALUES (8, '07:30:00', '11:30:00', '2026-09-11', 'LEG110');
INSERT INTO esquema_grupo3_alt.turno (id_turno, hora_inicio, hora_fin, fecha, legajo) VALUES (9, '13:30:00', '17:30:00', '2026-09-11', 'LEG111');
INSERT INTO esquema_grupo3_alt.turno (id_turno, hora_inicio, hora_fin, fecha, legajo) VALUES (10, '08:30:00', '12:30:00', '2026-09-11', 'LEG107');


--
-- Data for Name: vacunas; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.vacunas (id_historia_clinica, vacuna) VALUES (1, 'Antineumococica');
INSERT INTO esquema_grupo3_alt.vacunas (id_historia_clinica, vacuna) VALUES (2, 'Antigripal 2026');
INSERT INTO esquema_grupo3_alt.vacunas (id_historia_clinica, vacuna) VALUES (4, 'Doble adultos');
INSERT INTO esquema_grupo3_alt.vacunas (id_historia_clinica, vacuna) VALUES (6, 'Antineumococica');
INSERT INTO esquema_grupo3_alt.vacunas (id_historia_clinica, vacuna) VALUES (8, 'Hepatitis A');
INSERT INTO esquema_grupo3_alt.vacunas (id_historia_clinica, vacuna) VALUES (10, 'Antigripal 2026');


--
-- Data for Name: visita; Type: TABLE DATA; Schema: esquema_grupo3_alt; Owner: postgres
--

INSERT INTO esquema_grupo3_alt.visita (nro_doc, tipo_doc, id_visita, fecha, hora_inicio, hora_fin, estado, legajo, sexo) VALUES ('31112233', 'DNI', 1, '2026-09-09', '08:00:00', '08:40:00', 'realizada', 'LEG103', 'M');
INSERT INTO esquema_grupo3_alt.visita (nro_doc, tipo_doc, id_visita, fecha, hora_inicio, hora_fin, estado, legajo, sexo) VALUES ('29223344', 'DNI', 2, '2026-09-09', '14:15:00', '14:45:00', 'programada', 'LEG104', 'F');
INSERT INTO esquema_grupo3_alt.visita (nro_doc, tipo_doc, id_visita, fecha, hora_inicio, hora_fin, estado, legajo, sexo) VALUES ('41334455', 'DNI', 3, '2026-09-08', '10:00:00', NULL, 'pendiente de reasignacion', 'LEG101', 'M');
INSERT INTO esquema_grupo3_alt.visita (nro_doc, tipo_doc, id_visita, fecha, hora_inicio, hora_fin, estado, legajo, sexo) VALUES ('36445566', 'DNI', 4, '2026-09-08', '14:00:00', '14:35:00', 'fallada', 'LEG102', 'F');
INSERT INTO esquema_grupo3_alt.visita (nro_doc, tipo_doc, id_visita, fecha, hora_inicio, hora_fin, estado, legajo, sexo) VALUES ('42556677', 'DNI', 5, '2026-09-09', '08:45:00', '09:15:00', 'realizada', 'LEG103', 'X');
INSERT INTO esquema_grupo3_alt.visita (nro_doc, tipo_doc, id_visita, fecha, hora_inicio, hora_fin, estado, legajo, sexo) VALUES ('33667788', 'DNI', 6, '2026-09-11', '10:30:00', '11:00:00', 'realizada', 'LEG110', 'F');
INSERT INTO esquema_grupo3_alt.visita (nro_doc, tipo_doc, id_visita, fecha, hora_inicio, hora_fin, estado, legajo, sexo) VALUES ('28778899', 'DNI', 7, '2026-09-10', '07:45:00', '08:15:00', 'cancelada', 'LEG108', 'M');
INSERT INTO esquema_grupo3_alt.visita (nro_doc, tipo_doc, id_visita, fecha, hora_inicio, hora_fin, estado, legajo, sexo) VALUES ('39889900', 'DNI', 8, '2026-09-11', '14:00:00', '14:35:00', 'realizada', 'LEG111', 'F');
INSERT INTO esquema_grupo3_alt.visita (nro_doc, tipo_doc, id_visita, fecha, hora_inicio, hora_fin, estado, legajo, sexo) VALUES ('44990011', 'DNI', 9, '2026-09-10', '13:15:00', NULL, 'programada', 'LEG109', 'M');
INSERT INTO esquema_grupo3_alt.visita (nro_doc, tipo_doc, id_visita, fecha, hora_inicio, hora_fin, estado, legajo, sexo) VALUES ('38101122', 'DNI', 10, '2026-09-09', '16:00:00', '16:30:00', 'realizada', 'LEG104', 'F');


--
-- Name: coordenada_id_coordenada_seq; Type: SEQUENCE SET; Schema: esquema_grupo3_alt; Owner: postgres
--

SELECT pg_catalog.setval('esquema_grupo3_alt.coordenada_id_coordenada_seq', 8, true);


--
-- Name: farmacia_id_farmacia_seq; Type: SEQUENCE SET; Schema: esquema_grupo3_alt; Owner: postgres
--

SELECT pg_catalog.setval('esquema_grupo3_alt.farmacia_id_farmacia_seq', 5, true);


--
-- Name: historia_clinica_id_historia_clinica_seq; Type: SEQUENCE SET; Schema: esquema_grupo3_alt; Owner: postgres
--

SELECT pg_catalog.setval('esquema_grupo3_alt.historia_clinica_id_historia_clinica_seq', 10, true);


--
-- Name: indicacion_id_indicacion_seq; Type: SEQUENCE SET; Schema: esquema_grupo3_alt; Owner: postgres
--

SELECT pg_catalog.setval('esquema_grupo3_alt.indicacion_id_indicacion_seq', 8, true);


--
-- Name: kit_id_kit_seq; Type: SEQUENCE SET; Schema: esquema_grupo3_alt; Owner: postgres
--

SELECT pg_catalog.setval('esquema_grupo3_alt.kit_id_kit_seq', 8, true);


--
-- Name: lesion_id_lesion_seq; Type: SEQUENCE SET; Schema: esquema_grupo3_alt; Owner: postgres
--

SELECT pg_catalog.setval('esquema_grupo3_alt.lesion_id_lesion_seq', 8, true);


--
-- Name: obra_social_id_obra_social_seq; Type: SEQUENCE SET; Schema: esquema_grupo3_alt; Owner: postgres
--

SELECT pg_catalog.setval('esquema_grupo3_alt.obra_social_id_obra_social_seq', 8, true);


--
-- Name: suministro_id_suministro_seq; Type: SEQUENCE SET; Schema: esquema_grupo3_alt; Owner: postgres
--

SELECT pg_catalog.setval('esquema_grupo3_alt.suministro_id_suministro_seq', 8, true);


--
-- Name: tipo_producto_idtipo_seq; Type: SEQUENCE SET; Schema: esquema_grupo3_alt; Owner: postgres
--

SELECT pg_catalog.setval('esquema_grupo3_alt.tipo_producto_idtipo_seq', 4, true);


--
-- Name: turno_id_turno_seq; Type: SEQUENCE SET; Schema: esquema_grupo3_alt; Owner: postgres
--

SELECT pg_catalog.setval('esquema_grupo3_alt.turno_id_turno_seq', 10, true);


--
-- Name: visita_id_visita_seq; Type: SEQUENCE SET; Schema: esquema_grupo3_alt; Owner: postgres
--

SELECT pg_catalog.setval('esquema_grupo3_alt.visita_id_visita_seq', 10, true);


--
-- Name: zona_id_zona_seq; Type: SEQUENCE SET; Schema: esquema_grupo3_alt; Owner: postgres
--

SELECT pg_catalog.setval('esquema_grupo3_alt.zona_id_zona_seq', 5, true);


--
-- PostgreSQL database dump complete
--

\unrestrict UFC1UHCHboMcyNxM7qzUbyCuYgaJFX6ZrYQFjSgjuWrTUJCK6iyfGaLfYHthaXx

