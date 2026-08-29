--
-- PostgreSQL database dump
--

\restrict m6uULg5m6QgenX2911bnmAIaRabt1MrRDoJmcVKvmX7pkopKpOSr94osZ1F51ZU

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
-- Data for Name: paciente; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, fecha_alta) VALUES ('30111222', 'DNI', 'F', 'Maria', 'Lopez', 'AF-1001', '1950-04-12', '2015-01-10', 'Mitre', '234', '2994111111', '2015-02-09');
INSERT INTO esquema_grupo3.paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, fecha_alta) VALUES ('28555666', 'DNI', 'M', 'Jorge', 'Martinez', 'AF-1002', '1945-08-30', '2010-06-15', 'Alsina', '567', '2994222222', '2010-07-15');
INSERT INTO esquema_grupo3.paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, fecha_alta) VALUES ('40222333', 'DNI', 'F', 'Sofia', 'Torres', 'AF-1003', '1998-12-01', '2020-03-01', 'Yrigoyen', '89', '2994333333', '2020-03-31');
INSERT INTO esquema_grupo3.paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, fecha_alta) VALUES ('35444555', 'DNI', 'M', 'Diego', 'Suarez', 'AF-1004', '1988-06-20', '2018-09-22', 'Colon', '145', '2994444444', '2018-10-22');
INSERT INTO esquema_grupo3.paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, fecha_alta) VALUES ('41666777', 'DNI', 'X', 'Alex', 'Fernandez', 'AF-1005', '2001-02-14', '2022-11-05', 'Pellegrini', '300', '2994555555', '2022-12-05');
INSERT INTO esquema_grupo3.paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, fecha_alta) VALUES ('32888999', 'DNI', 'F', 'Valeria', 'Nunez', 'AF-1006', '1965-09-03', '2012-04-18', 'Godoy Cruz', '512', '2994666666', '2012-05-18');
INSERT INTO esquema_grupo3.paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, fecha_alta) VALUES ('27111333', 'DNI', 'M', 'Ricardo', 'Paz', 'AF-1007', '1958-01-27', '2008-02-09', 'Lamadrid', '98', '2994777777', '2008-03-10');
INSERT INTO esquema_grupo3.paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, fecha_alta) VALUES ('38222444', 'DNI', 'F', 'Camila', 'Rivas', 'AF-1008', '1995-07-11', '2021-05-30', 'Independencia', '670', '2994888888', '2021-06-29');
INSERT INTO esquema_grupo3.paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, fecha_alta) VALUES ('45555666', 'DNI', 'M', 'Tomas', 'Ibarra', 'AF-1009', '2003-03-22', '2023-01-12', 'Corrientes', '425', '2994999999', '2023-02-11');
INSERT INTO esquema_grupo3.paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, fecha_alta) VALUES ('39777888', 'DNI', 'F', 'Antonella', 'Cruz', 'AF-1010', '1997-05-16', '2019-08-25', 'Tucuman', '355', '2994101010', '2019-09-24');


--
-- Data for Name: historia_clinica; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.historia_clinica (id_historia_clinica, tipo_doc, nro_doc, sexo) VALUES (1, 'DNI', '30111222', 'F');
INSERT INTO esquema_grupo3.historia_clinica (id_historia_clinica, tipo_doc, nro_doc, sexo) VALUES (2, 'DNI', '28555666', 'M');
INSERT INTO esquema_grupo3.historia_clinica (id_historia_clinica, tipo_doc, nro_doc, sexo) VALUES (3, 'DNI', '40222333', 'F');
INSERT INTO esquema_grupo3.historia_clinica (id_historia_clinica, tipo_doc, nro_doc, sexo) VALUES (4, 'DNI', '35444555', 'M');
INSERT INTO esquema_grupo3.historia_clinica (id_historia_clinica, tipo_doc, nro_doc, sexo) VALUES (5, 'DNI', '41666777', 'X');
INSERT INTO esquema_grupo3.historia_clinica (id_historia_clinica, tipo_doc, nro_doc, sexo) VALUES (6, 'DNI', '32888999', 'F');
INSERT INTO esquema_grupo3.historia_clinica (id_historia_clinica, tipo_doc, nro_doc, sexo) VALUES (7, 'DNI', '27111333', 'M');
INSERT INTO esquema_grupo3.historia_clinica (id_historia_clinica, tipo_doc, nro_doc, sexo) VALUES (8, 'DNI', '38222444', 'F');
INSERT INTO esquema_grupo3.historia_clinica (id_historia_clinica, tipo_doc, nro_doc, sexo) VALUES (9, 'DNI', '45555666', 'M');
INSERT INTO esquema_grupo3.historia_clinica (id_historia_clinica, tipo_doc, nro_doc, sexo) VALUES (10, 'DNI', '39777888', 'F');


--
-- Data for Name: alergias; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.alergias (id_historia_clinica, alergia) VALUES (1, 'Penicilina');
INSERT INTO esquema_grupo3.alergias (id_historia_clinica, alergia) VALUES (2, 'Polvo ambiental');
INSERT INTO esquema_grupo3.alergias (id_historia_clinica, alergia) VALUES (3, 'Ninguna conocida');
INSERT INTO esquema_grupo3.alergias (id_historia_clinica, alergia) VALUES (6, 'Aspirina');
INSERT INTO esquema_grupo3.alergias (id_historia_clinica, alergia) VALUES (7, 'Mariscos');
INSERT INTO esquema_grupo3.alergias (id_historia_clinica, alergia) VALUES (9, 'Ninguna conocida');


--
-- Data for Name: farmacia; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.farmacia (id_farmacia, direccion, telefono) VALUES (1, 'Av. Argentina 100', '2994100100');
INSERT INTO esquema_grupo3.farmacia (id_farmacia, direccion, telefono) VALUES (2, 'San Martin 500', '2994200200');
INSERT INTO esquema_grupo3.farmacia (id_farmacia, direccion, telefono) VALUES (3, 'Roca 850', '2994300300');
INSERT INTO esquema_grupo3.farmacia (id_farmacia, direccion, telefono) VALUES (4, 'Alberdi 220', '2994400400');
INSERT INTO esquema_grupo3.farmacia (id_farmacia, direccion, telefono) VALUES (5, 'Olascoaga 610', '2994500500');


--
-- Data for Name: medicamento; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.medicamento (nombre, tipo) VALUES ('Amoxicilina 500mg', 'antibiotico');
INSERT INTO esquema_grupo3.medicamento (nombre, tipo) VALUES ('Ibuprofeno 400mg', 'antiinflamatorio');
INSERT INTO esquema_grupo3.medicamento (nombre, tipo) VALUES ('Paracetamol 500mg', 'analgesico');
INSERT INTO esquema_grupo3.medicamento (nombre, tipo) VALUES ('Omeprazol 20mg', 'antiacido');
INSERT INTO esquema_grupo3.medicamento (nombre, tipo) VALUES ('Enalapril 10mg', 'antihipertensivo');
INSERT INTO esquema_grupo3.medicamento (nombre, tipo) VALUES ('Metformina 850mg', 'antidiabetico');
INSERT INTO esquema_grupo3.medicamento (nombre, tipo) VALUES ('Clonazepam 0.5mg', 'ansiolitico');
INSERT INTO esquema_grupo3.medicamento (nombre, tipo) VALUES ('Heparina sodica', 'anticoagulante');


--
-- Data for Name: almacena; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.almacena (id_farmacia, nombre_medicamento, stock) VALUES (1, 'Amoxicilina 500mg', 50);
INSERT INTO esquema_grupo3.almacena (id_farmacia, nombre_medicamento, stock) VALUES (1, 'Ibuprofeno 400mg', 40);
INSERT INTO esquema_grupo3.almacena (id_farmacia, nombre_medicamento, stock) VALUES (2, 'Paracetamol 500mg', 60);
INSERT INTO esquema_grupo3.almacena (id_farmacia, nombre_medicamento, stock) VALUES (3, 'Omeprazol 20mg', 25);
INSERT INTO esquema_grupo3.almacena (id_farmacia, nombre_medicamento, stock) VALUES (3, 'Enalapril 10mg', 30);
INSERT INTO esquema_grupo3.almacena (id_farmacia, nombre_medicamento, stock) VALUES (4, 'Metformina 850mg', 20);
INSERT INTO esquema_grupo3.almacena (id_farmacia, nombre_medicamento, stock) VALUES (4, 'Clonazepam 0.5mg', 15);
INSERT INTO esquema_grupo3.almacena (id_farmacia, nombre_medicamento, stock) VALUES (5, 'Heparina sodica', 10);


--
-- Data for Name: antecedentes_medicos; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.antecedentes_medicos (id_historia_clinica, descripcion_antecedente) VALUES (1, 'Hipertension arterial controlada');
INSERT INTO esquema_grupo3.antecedentes_medicos (id_historia_clinica, descripcion_antecedente) VALUES (2, 'Diabetes tipo 2');
INSERT INTO esquema_grupo3.antecedentes_medicos (id_historia_clinica, descripcion_antecedente) VALUES (5, 'Cirugia de rodilla en 2019');
INSERT INTO esquema_grupo3.antecedentes_medicos (id_historia_clinica, descripcion_antecedente) VALUES (6, 'Fractura de cadera en 2020');
INSERT INTO esquema_grupo3.antecedentes_medicos (id_historia_clinica, descripcion_antecedente) VALUES (7, 'EPOC');
INSERT INTO esquema_grupo3.antecedentes_medicos (id_historia_clinica, descripcion_antecedente) VALUES (9, 'Asma infantil');


--
-- Data for Name: profesional; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('25123456', 'DNI', 'M', 'Juan', 'Perez', 'LEG001', '1975-03-14', 'MP12345', '2027-12-31', 'Av. Argentina', '450', '2994001111');
INSERT INTO esquema_grupo3.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('27456789', 'DNI', 'F', 'Ana', 'Gomez', 'LEG002', '1980-07-22', 'MP23456', '2029-06-30', 'San Martin', '780', '2994002222');
INSERT INTO esquema_grupo3.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('29789012', 'DNI', 'F', 'Laura', 'Fernandez', 'LEG003', '1985-11-05', 'MP34567', '2028-01-15', 'Roca', '120', '2994003333');
INSERT INTO esquema_grupo3.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('31234567', 'DNI', 'M', 'Carlos', 'Ruiz', 'LEG004', '1990-02-18', 'MP45678', '2028-09-30', 'Belgrano', '900', '2994004444');
INSERT INTO esquema_grupo3.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('26345678', 'DNI', 'F', 'Marina', 'Sosa', 'LEG005', '1978-05-30', 'MP56789', '2027-03-20', 'Sarmiento', '330', '2994005555');
INSERT INTO esquema_grupo3.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('28567890', 'DNI', 'M', 'Pablo', 'Diaz', 'LEG006', '1982-09-10', 'MP67890', '2028-11-11', 'Chile', '210', '2994006666');
INSERT INTO esquema_grupo3.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('33678901', 'DNI', 'F', 'Rocio', 'Herrera', 'LEG007', '1993-01-25', 'MP78901', '2029-04-05', 'Necochea', '560', '2994007777');
INSERT INTO esquema_grupo3.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('24987654', 'DNI', 'M', 'Martin', 'Alvarez', 'LEG008', '1972-06-08', 'MP89012', '2026-12-28', 'Rivadavia', '640', '2994008888');
INSERT INTO esquema_grupo3.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('30456123', 'DNI', 'F', 'Valentina', 'Castro', 'LEG009', '1983-10-17', 'MP90123', '2027-08-19', 'Buenos Aires', '75', '2994009999');
INSERT INTO esquema_grupo3.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('32654789', 'DNI', 'M', 'Federico', 'Molina', 'LEG010', '1991-12-02', 'MP01234', '2027-05-14', 'Salta', '410', '2994010101');
INSERT INTO esquema_grupo3.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('34789456', 'DNI', 'F', 'Camila', 'Ortiz', 'LEG011', '1994-04-27', 'MP11223', '2028-10-01', 'Entre Rios', '260', '2994011111');
INSERT INTO esquema_grupo3.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('27123890', 'DNI', 'M', 'Nicolas', 'Vega', 'LEG012', '1979-01-09', 'MP22334', '2029-07-07', 'Santa Fe', '815', '2994012121');


--
-- Data for Name: evolucion; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES (1, 1, 'Estable', 'LEG003');
INSERT INTO esquema_grupo3.evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES (1, 2, 'Mejorando', 'LEG001');
INSERT INTO esquema_grupo3.evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES (2, 1, 'Estable', 'LEG004');
INSERT INTO esquema_grupo3.evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES (3, 1, 'Con dolor', 'LEG002');
INSERT INTO esquema_grupo3.evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES (4, 1, 'Estable', 'LEG003');
INSERT INTO esquema_grupo3.evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES (5, 1, 'Estable', 'LEG003');
INSERT INTO esquema_grupo3.evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES (6, 1, 'Mejorando', 'LEG010');
INSERT INTO esquema_grupo3.evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES (6, 2, 'Estable', 'LEG010');
INSERT INTO esquema_grupo3.evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES (7, 1, 'Empeorando', 'LEG008');
INSERT INTO esquema_grupo3.evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES (8, 1, 'Estable', 'LEG011');
INSERT INTO esquema_grupo3.evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES (9, 1, 'Con dolor', 'LEG009');
INSERT INTO esquema_grupo3.evolucion (id_historia_clinica, nro_evolucion, estado_paciente, legajo) VALUES (10, 1, 'Estable', 'LEG004');


--
-- Data for Name: indicacion; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.indicacion (id_indicacion, dosis, via) VALUES (1, '500 mg cada 8 horas', 'oral');
INSERT INTO esquema_grupo3.indicacion (id_indicacion, dosis, via) VALUES (2, '1 comprimido por dia', 'oral');
INSERT INTO esquema_grupo3.indicacion (id_indicacion, dosis, via) VALUES (3, '10 mg', 'intravenosa');
INSERT INTO esquema_grupo3.indicacion (id_indicacion, dosis, via) VALUES (4, 'Aplicacion topica 2 veces al dia', 'topica');
INSERT INTO esquema_grupo3.indicacion (id_indicacion, dosis, via) VALUES (5, '250 mg cada 12 horas', 'oral');
INSERT INTO esquema_grupo3.indicacion (id_indicacion, dosis, via) VALUES (6, '20 mg cada 24 horas', 'oral');
INSERT INTO esquema_grupo3.indicacion (id_indicacion, dosis, via) VALUES (7, '5 mg en caso de dolor', 'sublingual');
INSERT INTO esquema_grupo3.indicacion (id_indicacion, dosis, via) VALUES (8, '1 ampolla cada 12 horas', 'intramuscular');


--
-- Data for Name: aplica; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.aplica (id_indicacion, nro_evolucion, id_historia_clinica, fecha, legajo) VALUES (1, 1, 1, '2026-08-20', 'LEG003');
INSERT INTO esquema_grupo3.aplica (id_indicacion, nro_evolucion, id_historia_clinica, fecha, legajo) VALUES (2, 2, 1, '2026-08-22', 'LEG003');
INSERT INTO esquema_grupo3.aplica (id_indicacion, nro_evolucion, id_historia_clinica, fecha, legajo) VALUES (3, 1, 2, '2026-08-21', 'LEG004');
INSERT INTO esquema_grupo3.aplica (id_indicacion, nro_evolucion, id_historia_clinica, fecha, legajo) VALUES (4, 1, 3, '2026-08-23', 'LEG003');
INSERT INTO esquema_grupo3.aplica (id_indicacion, nro_evolucion, id_historia_clinica, fecha, legajo) VALUES (5, 1, 6, '2026-08-24', 'LEG010');
INSERT INTO esquema_grupo3.aplica (id_indicacion, nro_evolucion, id_historia_clinica, fecha, legajo) VALUES (6, 2, 6, '2026-08-25', 'LEG010');
INSERT INTO esquema_grupo3.aplica (id_indicacion, nro_evolucion, id_historia_clinica, fecha, legajo) VALUES (7, 1, 8, '2026-08-26', 'LEG011');
INSERT INTO esquema_grupo3.aplica (id_indicacion, nro_evolucion, id_historia_clinica, fecha, legajo) VALUES (8, 1, 10, '2026-08-27', 'LEG004');


--
-- Data for Name: zona; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.zona (id_zona, nombre) VALUES (1, 'centro');
INSERT INTO esquema_grupo3.zona (id_zona, nombre) VALUES (2, 'norte');
INSERT INTO esquema_grupo3.zona (id_zona, nombre) VALUES (3, 'sur');
INSERT INTO esquema_grupo3.zona (id_zona, nombre) VALUES (4, 'este');
INSERT INTO esquema_grupo3.zona (id_zona, nombre) VALUES (5, 'oeste');


--
-- Data for Name: atiende_en; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.atiende_en (id_zona, legajo) VALUES (1, 'LEG001');
INSERT INTO esquema_grupo3.atiende_en (id_zona, legajo) VALUES (1, 'LEG003');
INSERT INTO esquema_grupo3.atiende_en (id_zona, legajo) VALUES (1, 'LEG009');
INSERT INTO esquema_grupo3.atiende_en (id_zona, legajo) VALUES (2, 'LEG002');
INSERT INTO esquema_grupo3.atiende_en (id_zona, legajo) VALUES (2, 'LEG010');
INSERT INTO esquema_grupo3.atiende_en (id_zona, legajo) VALUES (3, 'LEG004');
INSERT INTO esquema_grupo3.atiende_en (id_zona, legajo) VALUES (3, 'LEG008');
INSERT INTO esquema_grupo3.atiende_en (id_zona, legajo) VALUES (4, 'LEG005');
INSERT INTO esquema_grupo3.atiende_en (id_zona, legajo) VALUES (4, 'LEG011');
INSERT INTO esquema_grupo3.atiende_en (id_zona, legajo) VALUES (5, 'LEG007');


--
-- Data for Name: comprende; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.comprende (nombre_medicamento, id_indicacion) VALUES ('Amoxicilina 500mg', 1);
INSERT INTO esquema_grupo3.comprende (nombre_medicamento, id_indicacion) VALUES ('Ibuprofeno 400mg', 4);
INSERT INTO esquema_grupo3.comprende (nombre_medicamento, id_indicacion) VALUES ('Paracetamol 500mg', 5);
INSERT INTO esquema_grupo3.comprende (nombre_medicamento, id_indicacion) VALUES ('Omeprazol 20mg', 2);
INSERT INTO esquema_grupo3.comprende (nombre_medicamento, id_indicacion) VALUES ('Enalapril 10mg', 6);
INSERT INTO esquema_grupo3.comprende (nombre_medicamento, id_indicacion) VALUES ('Metformina 850mg', 2);
INSERT INTO esquema_grupo3.comprende (nombre_medicamento, id_indicacion) VALUES ('Clonazepam 0.5mg', 7);
INSERT INTO esquema_grupo3.comprende (nombre_medicamento, id_indicacion) VALUES ('Heparina sodica', 8);


--
-- Data for Name: contacto_emergencia; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.contacto_emergencia (tipo_doc, nro_doc, sexo, nombre, apellido, parentesco, nro_telefono) VALUES ('DNI', '30111222', 'F', 'Pedro', 'Lopez', 'hijo/a', '2994111199');
INSERT INTO esquema_grupo3.contacto_emergencia (tipo_doc, nro_doc, sexo, nombre, apellido, parentesco, nro_telefono) VALUES ('DNI', '28555666', 'M', 'Marta', 'Ibanez', 'esposo/a', '2994222299');
INSERT INTO esquema_grupo3.contacto_emergencia (tipo_doc, nro_doc, sexo, nombre, apellido, parentesco, nro_telefono) VALUES ('DNI', '35444555', 'M', 'Lucia', 'Suarez', 'hermano/a', '2994444499');
INSERT INTO esquema_grupo3.contacto_emergencia (tipo_doc, nro_doc, sexo, nombre, apellido, parentesco, nro_telefono) VALUES ('DNI', '32888999', 'F', 'Sergio', 'Nunez', 'hijo/a', '2994666699');
INSERT INTO esquema_grupo3.contacto_emergencia (tipo_doc, nro_doc, sexo, nombre, apellido, parentesco, nro_telefono) VALUES ('DNI', '38222444', 'F', 'Carla', 'Rivas', 'madre', '2994888899');
INSERT INTO esquema_grupo3.contacto_emergencia (tipo_doc, nro_doc, sexo, nombre, apellido, parentesco, nro_telefono) VALUES ('DNI', '45555666', 'M', 'Andrea', 'Ibarra', 'madre', '2994999999');


--
-- Data for Name: kit; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.kit (id_kit, tipo) VALUES (1, 'curacion');
INSERT INTO esquema_grupo3.kit (id_kit, tipo) VALUES (2, 'curacion');
INSERT INTO esquema_grupo3.kit (id_kit, tipo) VALUES (3, 'atencion');
INSERT INTO esquema_grupo3.kit (id_kit, tipo) VALUES (4, 'atencion');
INSERT INTO esquema_grupo3.kit (id_kit, tipo) VALUES (5, 'diagnostico');
INSERT INTO esquema_grupo3.kit (id_kit, tipo) VALUES (6, 'medicacion');
INSERT INTO esquema_grupo3.kit (id_kit, tipo) VALUES (7, 'medicacion');
INSERT INTO esquema_grupo3.kit (id_kit, tipo) VALUES (8, 'emergencia');


--
-- Data for Name: suministro; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.suministro (id_suministro, nombre) VALUES (1, 'Gasas esteriles');
INSERT INTO esquema_grupo3.suministro (id_suministro, nombre) VALUES (2, 'Guantes descartables');
INSERT INTO esquema_grupo3.suministro (id_suministro, nombre) VALUES (3, 'Alcohol en gel');
INSERT INTO esquema_grupo3.suministro (id_suministro, nombre) VALUES (4, 'Jeringas 5ml');
INSERT INTO esquema_grupo3.suministro (id_suministro, nombre) VALUES (5, 'Vendas elasticas');
INSERT INTO esquema_grupo3.suministro (id_suministro, nombre) VALUES (6, 'Tela adhesiva');
INSERT INTO esquema_grupo3.suministro (id_suministro, nombre) VALUES (7, 'Suero fisiologico');
INSERT INTO esquema_grupo3.suministro (id_suministro, nombre) VALUES (8, 'Termometro digital');


--
-- Data for Name: contiene; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.contiene (id_kit, nombre_suministro) VALUES (1, 'Gasas esteriles');
INSERT INTO esquema_grupo3.contiene (id_kit, nombre_suministro) VALUES (1, 'Guantes descartables');
INSERT INTO esquema_grupo3.contiene (id_kit, nombre_suministro) VALUES (2, 'Alcohol en gel');
INSERT INTO esquema_grupo3.contiene (id_kit, nombre_suministro) VALUES (3, 'Guantes descartables');
INSERT INTO esquema_grupo3.contiene (id_kit, nombre_suministro) VALUES (4, 'Jeringas 5ml');
INSERT INTO esquema_grupo3.contiene (id_kit, nombre_suministro) VALUES (5, 'Termometro digital');
INSERT INTO esquema_grupo3.contiene (id_kit, nombre_suministro) VALUES (6, 'Suero fisiologico');
INSERT INTO esquema_grupo3.contiene (id_kit, nombre_suministro) VALUES (7, 'Tela adhesiva');
INSERT INTO esquema_grupo3.contiene (id_kit, nombre_suministro) VALUES (8, 'Vendas elasticas');
INSERT INTO esquema_grupo3.contiene (id_kit, nombre_suministro) VALUES (8, 'Suero fisiologico');


--
-- Data for Name: coordenada; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.coordenada (id_coordenada, id_zona) VALUES (1, 1);
INSERT INTO esquema_grupo3.coordenada (id_coordenada, id_zona) VALUES (2, 1);
INSERT INTO esquema_grupo3.coordenada (id_coordenada, id_zona) VALUES (3, 2);
INSERT INTO esquema_grupo3.coordenada (id_coordenada, id_zona) VALUES (4, 2);
INSERT INTO esquema_grupo3.coordenada (id_coordenada, id_zona) VALUES (5, 3);
INSERT INTO esquema_grupo3.coordenada (id_coordenada, id_zona) VALUES (6, 4);
INSERT INTO esquema_grupo3.coordenada (id_coordenada, id_zona) VALUES (7, 4);
INSERT INTO esquema_grupo3.coordenada (id_coordenada, id_zona) VALUES (8, 5);


--
-- Data for Name: lesion; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.lesion (id_lesion, detalle_curacion, area, tamano, grado, tipo) VALUES (1, 'Limpieza y cambio de gasa', 'Pierna derecha', '5 cm', 'leve', 'abrasion');
INSERT INTO esquema_grupo3.lesion (id_lesion, detalle_curacion, area, tamano, grado, tipo) VALUES (2, 'Sutura y desinfeccion', 'Brazo izquierdo', '3 cm', 'moderado', 'cortante');
INSERT INTO esquema_grupo3.lesion (id_lesion, detalle_curacion, area, tamano, grado, tipo) VALUES (3, 'Curacion con antiseptico', 'Espalda', '8 cm', 'grave', 'quemadura');
INSERT INTO esquema_grupo3.lesion (id_lesion, detalle_curacion, area, tamano, grado, tipo) VALUES (4, 'Vendaje compresivo', 'Tobillo', '4 cm', 'leve', 'esguince');
INSERT INTO esquema_grupo3.lesion (id_lesion, detalle_curacion, area, tamano, grado, tipo) VALUES (5, 'Inmovilizacion', 'Muneca', '2 cm', 'moderado', 'fractura');
INSERT INTO esquema_grupo3.lesion (id_lesion, detalle_curacion, area, tamano, grado, tipo) VALUES (6, 'Curacion de ulcera por presion', 'Talon', '6 cm', 'grave', 'ulcera');
INSERT INTO esquema_grupo3.lesion (id_lesion, detalle_curacion, area, tamano, grado, tipo) VALUES (7, 'Limpieza de herida punzante', 'Mano', '1 cm', 'leve', 'punzante');
INSERT INTO esquema_grupo3.lesion (id_lesion, detalle_curacion, area, tamano, grado, tipo) VALUES (8, 'Reduccion y control', 'Cadera', '12 cm', 'grave', 'luxacion');


--
-- Data for Name: denota; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.denota (id_historia_clinica, nro_evolucion, id_lesion) VALUES (1, 1, 1);
INSERT INTO esquema_grupo3.denota (id_historia_clinica, nro_evolucion, id_lesion) VALUES (1, 2, 1);
INSERT INTO esquema_grupo3.denota (id_historia_clinica, nro_evolucion, id_lesion) VALUES (2, 1, 2);
INSERT INTO esquema_grupo3.denota (id_historia_clinica, nro_evolucion, id_lesion) VALUES (3, 1, 3);
INSERT INTO esquema_grupo3.denota (id_historia_clinica, nro_evolucion, id_lesion) VALUES (6, 1, 8);
INSERT INTO esquema_grupo3.denota (id_historia_clinica, nro_evolucion, id_lesion) VALUES (6, 2, 8);
INSERT INTO esquema_grupo3.denota (id_historia_clinica, nro_evolucion, id_lesion) VALUES (7, 1, 5);
INSERT INTO esquema_grupo3.denota (id_historia_clinica, nro_evolucion, id_lesion) VALUES (8, 1, 4);


--
-- Data for Name: medico; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.medico (legajo) VALUES ('LEG001');
INSERT INTO esquema_grupo3.medico (legajo) VALUES ('LEG002');
INSERT INTO esquema_grupo3.medico (legajo) VALUES ('LEG008');
INSERT INTO esquema_grupo3.medico (legajo) VALUES ('LEG009');


--
-- Data for Name: diagnostica; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.diagnostica (id_historia_clinica, nro_evolucion, legajo, diagnostico) VALUES (1, 2, 'LEG001', 'Cierre de herida completo');
INSERT INTO esquema_grupo3.diagnostica (id_historia_clinica, nro_evolucion, legajo, diagnostico) VALUES (3, 1, 'LEG002', 'Contusion leve en miembro inferior');
INSERT INTO esquema_grupo3.diagnostica (id_historia_clinica, nro_evolucion, legajo, diagnostico) VALUES (7, 1, 'LEG008', 'Fractura en proceso de consolidacion');
INSERT INTO esquema_grupo3.diagnostica (id_historia_clinica, nro_evolucion, legajo, diagnostico) VALUES (9, 1, 'LEG009', 'Control ginecologico de rutina');


--
-- Data for Name: enfermero; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.enfermero (legajo) VALUES ('LEG003');
INSERT INTO esquema_grupo3.enfermero (legajo) VALUES ('LEG004');
INSERT INTO esquema_grupo3.enfermero (legajo) VALUES ('LEG010');
INSERT INTO esquema_grupo3.enfermero (legajo) VALUES ('LEG011');


--
-- Data for Name: especialidades; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.especialidades (legajo, nombre_especialidad) VALUES ('LEG001', 'clinica medica');
INSERT INTO esquema_grupo3.especialidades (legajo, nombre_especialidad) VALUES ('LEG001', 'cardiologia');
INSERT INTO esquema_grupo3.especialidades (legajo, nombre_especialidad) VALUES ('LEG002', 'pediatria');
INSERT INTO esquema_grupo3.especialidades (legajo, nombre_especialidad) VALUES ('LEG008', 'traumatologia');
INSERT INTO esquema_grupo3.especialidades (legajo, nombre_especialidad) VALUES ('LEG009', 'ginecologia');
INSERT INTO esquema_grupo3.especialidades (legajo, nombre_especialidad) VALUES ('LEG009', 'oncologia');


--
-- Data for Name: kinesiologo; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.kinesiologo (legajo) VALUES ('LEG007');


--
-- Data for Name: necesita; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.necesita (id_kit, id_lesion) VALUES (1, 1);
INSERT INTO esquema_grupo3.necesita (id_kit, id_lesion) VALUES (1, 4);
INSERT INTO esquema_grupo3.necesita (id_kit, id_lesion) VALUES (2, 6);
INSERT INTO esquema_grupo3.necesita (id_kit, id_lesion) VALUES (3, 2);
INSERT INTO esquema_grupo3.necesita (id_kit, id_lesion) VALUES (3, 7);
INSERT INTO esquema_grupo3.necesita (id_kit, id_lesion) VALUES (5, 8);
INSERT INTO esquema_grupo3.necesita (id_kit, id_lesion) VALUES (6, 3);
INSERT INTO esquema_grupo3.necesita (id_kit, id_lesion) VALUES (8, 5);


--
-- Data for Name: nutricionista; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.nutricionista (legajo) VALUES ('LEG005');
INSERT INTO esquema_grupo3.nutricionista (legajo) VALUES ('LEG012');


--
-- Data for Name: obra_social; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.obra_social (id_obra_social, tipo, plan, cobertura, estado, nombre) VALUES (1, 'Prepaga', 'Plan 210', 'Cobertura integral con internacion y ambulatorio', 'activa', 'OSDE');
INSERT INTO esquema_grupo3.obra_social (id_obra_social, tipo, plan, cobertura, estado, nombre) VALUES (2, 'Estatal', 'PAMI Basico', 'Cobertura para jubilados y pensionados', 'activa', 'PAMI');
INSERT INTO esquema_grupo3.obra_social (id_obra_social, tipo, plan, cobertura, estado, nombre) VALUES (3, 'Prepaga', 'Bronce', 'Cobertura ambulatoria y guardia', 'activa', 'Swiss Medical');
INSERT INTO esquema_grupo3.obra_social (id_obra_social, tipo, plan, cobertura, estado, nombre) VALUES (4, 'Sindical', 'Plan unico', 'Cobertura sindical de comercio', 'activa', 'OSECAC');
INSERT INTO esquema_grupo3.obra_social (id_obra_social, tipo, plan, cobertura, estado, nombre) VALUES (5, 'Estatal/Provincial', 'ISSN Basico', 'Cobertura para empleados publicos de Neuquen', 'activa', 'ISSN');
INSERT INTO esquema_grupo3.obra_social (id_obra_social, tipo, plan, cobertura, estado, nombre) VALUES (6, 'Prepaga', 'Medicus 400', 'Cobertura con cartilla amplia', 'activa', 'Medicus');
INSERT INTO esquema_grupo3.obra_social (id_obra_social, tipo, plan, cobertura, estado, nombre) VALUES (7, 'Prepaga', 'Galeno Azul', 'Cobertura con internacion en sanatorios privados', 'inactiva', 'Galeno');
INSERT INTO esquema_grupo3.obra_social (id_obra_social, tipo, plan, cobertura, estado, nombre) VALUES (8, 'Sindical', 'Plan basico', 'Cobertura sindical de petroleros', 'activa', 'OSPEDYC');


--
-- Data for Name: posee; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.posee (tipo_doc, nro_doc, sexo, id_obra_social) VALUES ('DNI', '30111222', 'F', 1);
INSERT INTO esquema_grupo3.posee (tipo_doc, nro_doc, sexo, id_obra_social) VALUES ('DNI', '28555666', 'M', 2);
INSERT INTO esquema_grupo3.posee (tipo_doc, nro_doc, sexo, id_obra_social) VALUES ('DNI', '40222333', 'F', 3);
INSERT INTO esquema_grupo3.posee (tipo_doc, nro_doc, sexo, id_obra_social) VALUES ('DNI', '35444555', 'M', 4);
INSERT INTO esquema_grupo3.posee (tipo_doc, nro_doc, sexo, id_obra_social) VALUES ('DNI', '41666777', 'X', 5);
INSERT INTO esquema_grupo3.posee (tipo_doc, nro_doc, sexo, id_obra_social) VALUES ('DNI', '32888999', 'F', 2);
INSERT INTO esquema_grupo3.posee (tipo_doc, nro_doc, sexo, id_obra_social) VALUES ('DNI', '27111333', 'M', 6);
INSERT INTO esquema_grupo3.posee (tipo_doc, nro_doc, sexo, id_obra_social) VALUES ('DNI', '38222444', 'F', 7);
INSERT INTO esquema_grupo3.posee (tipo_doc, nro_doc, sexo, id_obra_social) VALUES ('DNI', '45555666', 'M', 8);
INSERT INTO esquema_grupo3.posee (tipo_doc, nro_doc, sexo, id_obra_social) VALUES ('DNI', '39777888', 'F', 1);


--
-- Data for Name: psicologo; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.psicologo (legajo) VALUES ('LEG006');


--
-- Data for Name: recibe; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.recibe (fecha, id_kit, legajo) VALUES ('2026-08-20', 1, 'LEG003');
INSERT INTO esquema_grupo3.recibe (fecha, id_kit, legajo) VALUES ('2026-08-21', 1, 'LEG004');
INSERT INTO esquema_grupo3.recibe (fecha, id_kit, legajo) VALUES ('2026-08-22', 2, 'LEG003');
INSERT INTO esquema_grupo3.recibe (fecha, id_kit, legajo) VALUES ('2026-08-23', 5, 'LEG010');
INSERT INTO esquema_grupo3.recibe (fecha, id_kit, legajo) VALUES ('2026-08-24', 6, 'LEG011');
INSERT INTO esquema_grupo3.recibe (fecha, id_kit, legajo) VALUES ('2026-08-25', 8, 'LEG010');
INSERT INTO esquema_grupo3.recibe (fecha, id_kit, legajo) VALUES ('2026-08-26', 3, 'LEG004');
INSERT INTO esquema_grupo3.recibe (fecha, id_kit, legajo) VALUES ('2026-08-27', 4, 'LEG011');


--
-- Data for Name: suministra; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.suministra (id_farmacia, id_kit, stock) VALUES (1, 1, 20);
INSERT INTO esquema_grupo3.suministra (id_farmacia, id_kit, stock) VALUES (1, 2, 12);
INSERT INTO esquema_grupo3.suministra (id_farmacia, id_kit, stock) VALUES (2, 3, 15);
INSERT INTO esquema_grupo3.suministra (id_farmacia, id_kit, stock) VALUES (2, 4, 8);
INSERT INTO esquema_grupo3.suministra (id_farmacia, id_kit, stock) VALUES (3, 5, 6);
INSERT INTO esquema_grupo3.suministra (id_farmacia, id_kit, stock) VALUES (4, 6, 10);
INSERT INTO esquema_grupo3.suministra (id_farmacia, id_kit, stock) VALUES (4, 7, 9);
INSERT INTO esquema_grupo3.suministra (id_farmacia, id_kit, stock) VALUES (5, 8, 5);


--
-- Data for Name: tipo_producto; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.tipo_producto (idtipo, descripcion) VALUES (1, 'Insumo de curación');
INSERT INTO esquema_grupo3.tipo_producto (idtipo, descripcion) VALUES (2, 'Insumo de bioseguridad');
INSERT INTO esquema_grupo3.tipo_producto (idtipo, descripcion) VALUES (3, 'Insumo de diagnóstico');
INSERT INTO esquema_grupo3.tipo_producto (idtipo, descripcion) VALUES (4, 'Insumo descartable');


--
-- Data for Name: tiene_un; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.tiene_un (id_suministro, idtipo) VALUES (1, 1);
INSERT INTO esquema_grupo3.tiene_un (id_suministro, idtipo) VALUES (2, 2);
INSERT INTO esquema_grupo3.tiene_un (id_suministro, idtipo) VALUES (3, 2);
INSERT INTO esquema_grupo3.tiene_un (id_suministro, idtipo) VALUES (4, 4);
INSERT INTO esquema_grupo3.tiene_un (id_suministro, idtipo) VALUES (5, 1);
INSERT INTO esquema_grupo3.tiene_un (id_suministro, idtipo) VALUES (6, 1);
INSERT INTO esquema_grupo3.tiene_un (id_suministro, idtipo) VALUES (7, 4);
INSERT INTO esquema_grupo3.tiene_un (id_suministro, idtipo) VALUES (8, 3);


--
-- Data for Name: turno; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.turno (id_turno, hora_inicio, hora_fin, fecha, legajo) VALUES (1, '08:00:00', '12:00:00', '2026-09-01', 'LEG001');
INSERT INTO esquema_grupo3.turno (id_turno, hora_inicio, hora_fin, fecha, legajo) VALUES (2, '13:00:00', '17:00:00', '2026-09-01', 'LEG002');
INSERT INTO esquema_grupo3.turno (id_turno, hora_inicio, hora_fin, fecha, legajo) VALUES (3, '08:00:00', '12:00:00', '2026-09-02', 'LEG003');
INSERT INTO esquema_grupo3.turno (id_turno, hora_inicio, hora_fin, fecha, legajo) VALUES (4, '14:00:00', '18:00:00', '2026-09-02', 'LEG004');
INSERT INTO esquema_grupo3.turno (id_turno, hora_inicio, hora_fin, fecha, legajo) VALUES (5, '09:00:00', '13:00:00', '2026-09-03', 'LEG005');
INSERT INTO esquema_grupo3.turno (id_turno, hora_inicio, hora_fin, fecha, legajo) VALUES (6, '08:00:00', '12:00:00', '2026-09-03', 'LEG008');
INSERT INTO esquema_grupo3.turno (id_turno, hora_inicio, hora_fin, fecha, legajo) VALUES (7, '13:00:00', '17:00:00', '2026-09-03', 'LEG009');
INSERT INTO esquema_grupo3.turno (id_turno, hora_inicio, hora_fin, fecha, legajo) VALUES (8, '08:00:00', '12:00:00', '2026-09-04', 'LEG010');
INSERT INTO esquema_grupo3.turno (id_turno, hora_inicio, hora_fin, fecha, legajo) VALUES (9, '14:00:00', '18:00:00', '2026-09-04', 'LEG011');
INSERT INTO esquema_grupo3.turno (id_turno, hora_inicio, hora_fin, fecha, legajo) VALUES (10, '09:00:00', '13:00:00', '2026-09-04', 'LEG007');


--
-- Data for Name: vacunas; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.vacunas (id_historia_clinica, vacuna) VALUES (1, 'Antigripal 2026');
INSERT INTO esquema_grupo3.vacunas (id_historia_clinica, vacuna) VALUES (2, 'COVID-19 refuerzo');
INSERT INTO esquema_grupo3.vacunas (id_historia_clinica, vacuna) VALUES (4, 'Antitetanica');
INSERT INTO esquema_grupo3.vacunas (id_historia_clinica, vacuna) VALUES (6, 'Antigripal 2026');
INSERT INTO esquema_grupo3.vacunas (id_historia_clinica, vacuna) VALUES (8, 'Hepatitis B');
INSERT INTO esquema_grupo3.vacunas (id_historia_clinica, vacuna) VALUES (10, 'COVID-19 refuerzo');


--
-- Data for Name: visita; Type: TABLE DATA; Schema: esquema_grupo3; Owner: postgres
--

INSERT INTO esquema_grupo3.visita (nro_doc, tipo_doc, id_visita, fecha, hora_inicio, hora_fin, estado, legajo, sexo) VALUES ('30111222', 'DNI', 1, '2026-09-02', '09:00:00', '09:45:00', 'realizada', 'LEG003', 'F');
INSERT INTO esquema_grupo3.visita (nro_doc, tipo_doc, id_visita, fecha, hora_inicio, hora_fin, estado, legajo, sexo) VALUES ('28555666', 'DNI', 2, '2026-09-02', '14:00:00', '14:30:00', 'programada', 'LEG004', 'M');
INSERT INTO esquema_grupo3.visita (nro_doc, tipo_doc, id_visita, fecha, hora_inicio, hora_fin, estado, legajo, sexo) VALUES ('40222333', 'DNI', 3, '2026-09-01', '11:00:00', NULL, 'pendiente de reasignacion', 'LEG001', 'F');
INSERT INTO esquema_grupo3.visita (nro_doc, tipo_doc, id_visita, fecha, hora_inicio, hora_fin, estado, legajo, sexo) VALUES ('35444555', 'DNI', 4, '2026-09-01', '15:00:00', '15:40:00', 'fallada', 'LEG002', 'M');
INSERT INTO esquema_grupo3.visita (nro_doc, tipo_doc, id_visita, fecha, hora_inicio, hora_fin, estado, legajo, sexo) VALUES ('41666777', 'DNI', 5, '2026-09-02', '09:30:00', '10:00:00', 'realizada', 'LEG003', 'X');
INSERT INTO esquema_grupo3.visita (nro_doc, tipo_doc, id_visita, fecha, hora_inicio, hora_fin, estado, legajo, sexo) VALUES ('32888999', 'DNI', 6, '2026-09-04', '11:15:00', '11:50:00', 'realizada', 'LEG010', 'F');
INSERT INTO esquema_grupo3.visita (nro_doc, tipo_doc, id_visita, fecha, hora_inicio, hora_fin, estado, legajo, sexo) VALUES ('27111333', 'DNI', 7, '2026-09-03', '08:30:00', '09:00:00', 'cancelada', 'LEG008', 'M');
INSERT INTO esquema_grupo3.visita (nro_doc, tipo_doc, id_visita, fecha, hora_inicio, hora_fin, estado, legajo, sexo) VALUES ('38222444', 'DNI', 8, '2026-09-04', '14:00:00', '14:35:00', 'realizada', 'LEG011', 'F');
INSERT INTO esquema_grupo3.visita (nro_doc, tipo_doc, id_visita, fecha, hora_inicio, hora_fin, estado, legajo, sexo) VALUES ('45555666', 'DNI', 9, '2026-09-03', '13:00:00', NULL, 'programada', 'LEG009', 'M');
INSERT INTO esquema_grupo3.visita (nro_doc, tipo_doc, id_visita, fecha, hora_inicio, hora_fin, estado, legajo, sexo) VALUES ('39777888', 'DNI', 10, '2026-09-02', '15:00:00', '15:30:00', 'realizada', 'LEG004', 'F');


--
-- Name: coordenada_id_coordenada_seq; Type: SEQUENCE SET; Schema: esquema_grupo3; Owner: postgres
--

SELECT pg_catalog.setval('esquema_grupo3.coordenada_id_coordenada_seq', 8, true);


--
-- Name: farmacia_id_farmacia_seq; Type: SEQUENCE SET; Schema: esquema_grupo3; Owner: postgres
--

SELECT pg_catalog.setval('esquema_grupo3.farmacia_id_farmacia_seq', 5, true);


--
-- Name: historia_clinica_id_historia_clinica_seq; Type: SEQUENCE SET; Schema: esquema_grupo3; Owner: postgres
--

SELECT pg_catalog.setval('esquema_grupo3.historia_clinica_id_historia_clinica_seq', 10, true);


--
-- Name: indicacion_id_indicacion_seq; Type: SEQUENCE SET; Schema: esquema_grupo3; Owner: postgres
--

SELECT pg_catalog.setval('esquema_grupo3.indicacion_id_indicacion_seq', 8, true);


--
-- Name: kit_id_kit_seq; Type: SEQUENCE SET; Schema: esquema_grupo3; Owner: postgres
--

SELECT pg_catalog.setval('esquema_grupo3.kit_id_kit_seq', 8, true);


--
-- Name: lesion_id_lesion_seq; Type: SEQUENCE SET; Schema: esquema_grupo3; Owner: postgres
--

SELECT pg_catalog.setval('esquema_grupo3.lesion_id_lesion_seq', 8, true);


--
-- Name: obra_social_id_obra_social_seq; Type: SEQUENCE SET; Schema: esquema_grupo3; Owner: postgres
--

SELECT pg_catalog.setval('esquema_grupo3.obra_social_id_obra_social_seq', 8, true);


--
-- Name: suministro_id_suministro_seq; Type: SEQUENCE SET; Schema: esquema_grupo3; Owner: postgres
--

SELECT pg_catalog.setval('esquema_grupo3.suministro_id_suministro_seq', 8, true);


--
-- Name: tipo_producto_idtipo_seq; Type: SEQUENCE SET; Schema: esquema_grupo3; Owner: postgres
--

SELECT pg_catalog.setval('esquema_grupo3.tipo_producto_idtipo_seq', 4, true);


--
-- Name: turno_id_turno_seq; Type: SEQUENCE SET; Schema: esquema_grupo3; Owner: postgres
--

SELECT pg_catalog.setval('esquema_grupo3.turno_id_turno_seq', 10, true);


--
-- Name: visita_id_visita_seq; Type: SEQUENCE SET; Schema: esquema_grupo3; Owner: postgres
--

SELECT pg_catalog.setval('esquema_grupo3.visita_id_visita_seq', 10, true);


--
-- Name: zona_id_zona_seq; Type: SEQUENCE SET; Schema: esquema_grupo3; Owner: postgres
--

SELECT pg_catalog.setval('esquema_grupo3.zona_id_zona_seq', 5, true);


--
-- PostgreSQL database dump complete
--

\unrestrict m6uULg5m6QgenX2911bnmAIaRabt1MrRDoJmcVKvmX7pkopKpOSr94osZ1F51ZU

