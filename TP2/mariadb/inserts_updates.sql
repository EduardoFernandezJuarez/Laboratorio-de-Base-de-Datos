/*insert en vistalocal que cumple la condición  */

INSERT INTO Visita_esquema_grupo3
(nro_doc,tipo_doc,fecha,hora_inicio,hora_fin,estado,legajo,sexo) VALUES
('30111222','DNI', CURRENT_DATE + INTERVAL 5 DAY,'08:00:00','09:00:00','programada','LEG001','F');

INSERT INTO Visita_esquema_grupo3
(nro_doc,tipo_doc,fecha,hora_inicio,hora_fin,estado,legajo,sexo) VALUES
('45555666','DNI', CURRENT_DATE + INTERVAL 15 DAY,'09:00:00','10:00:00','programada','LEG002','M');

/* insert en vistalocal que no cumple la condición */

INSERT INTO Visita_esquema_grupo3
(nro_doc,tipo_doc,fecha,hora_inicio,hora_fin,estado,legajo,sexo) VALUES
('39777888','DNI', CURRENT_DATE - INTERVAL 5 DAY,'09:00:00','10:00:00','programada','LEG009','F');

/* insert en vistacascade que cumple la condición */

INSERT INTO Visita_esquema_grupo3
(nro_doc,tipo_doc,fecha,hora_inicio,hora_fin,estado,legajo,sexo) VALUES
('40222333','DNI', CURRENT_DATE + INTERVAL 10 DAY,'17:00:00','18:30:00','programada','LEG007','F');

/* insert en vistacascade que no cumple la condición */

INSERT INTO Visita_esquema_grupo3
(nro_doc,tipo_doc,fecha,hora_inicio,hora_fin,estado,legajo,sexo) VALUES
('41666777','DNI', CURRENT_DATE,'07:00:00','09:00:00','programada','LEG009','X');


UPDATE Visita_esquema_grupo3 SET legajo='LEG002' WHERE id_visita=15;

INSERT INTO Turno_esquema_grupo3 (hora_inicio,hora_fin,fecha,legajo) VALUES
('09:00:00','12:00:00',CURRENT_DATE + INTERVAL 5 DAY,'LEG002');

UPDATE Visita_esquema_grupo3 SET legajo='LEG002' WHERE id_visita=14;

/* update en vistacascade2 que no cumple  */
UPDATE VistaCascade2 SET fecha= CURRENT_DATE - INTERVAL 10 DAY WHERE id_visita=14;

/* update en vistacascade2 que cumple la condición */
UPDATE Visita_esquema_grupo3 SET fecha= CURRENT_DATE + INTERVAL 1 DAY WHERE id_visita=15;

/* insert en vistapunto10 */
INSERT INTO Suministro_esquema_grupo3(nombre) VALUES ('Gasas estérles');
INSERT INTO contiene_esquema_grupo3(id_kit,nombre_suministro) VALUES (9,'Gasas estérles');

INSERT INTO Kit_esquema_grupo3(tipo) VALUE ('diagnostico');
INSERT INTO Suministro_esquema_grupo3(nombre) VALUE ('Lupa');
INSERT INTO contiene_esquema_grupo3 (id_kit,nombre_suministro) VALUES (10,'Lupa');