/*insert en vistalocal que cumple la condición  */

INSERT INTO esquema_grupo3.visita (
nro_doc, tipo_doc, fecha, hora_inicio, hora_fin, estado, legajo, sexo) 
VALUES ('30111222','DNI',CURRENT_DATE + 5,'08:00:00','09:00:00','programada','LEG001','F');

/* insert en vistalocal que no cumple la condición */

INSERT INTO esquema_grupo3.visita(
nro_doc, tipo_doc, fecha, hora_inicio, hora_fin, estado, legajo, sexo)
VALUES ('28555666','DNI',CURRENT_DATE - 5,'10:00:00','11:00:00','programada','LEG012','M');


/* insert en vistacascade que cumple la condición */

INSERT INTO esquema_grupo3.visita(
nro_doc, tipo_doc, fecha, hora_inicio, hora_fin, estado, legajo, sexo)
VALUES ('40222333', 'DNI',CURRENT_DATE + 10, '17:00:00', '18:30:00', 'programada', 'LEG007', 'F');

/* insert en vistacascade que no cumple la condición */

INSERT INTO esquema_grupo3.visita(
nro_doc, tipo_doc,fecha, hora_inicio, hora_fin, estado, legajo, sexo)
VALUES ('41666777', 'DNI', CURRENT_DATE, '07:00:00', '09:00:00', 'realizada', 'LEG009', 'X');

/* update en vistalocal2 que cumple la condicion */

UPDATE esquema_grupo3.visita
SET legajo='LEG002'
WHERE id_visita=17;

INSERT INTO esquema_grupo3.turno(hora_inicio, hora_fin, fecha, legajo) VALUES ('09:00:00', '12:00:00', CURRENT_DATE+5, 'LEG002');


/* update en vistalocal2 que no cumple la condicion */

UPDATE esquema_grupo3.visita
SET legajo='LEG009'
WHERE id_visita=15;

/* insert y update en vistacascade2 que no cumple  */

INSERT INTO esquema_grupo3.visita(
nro_doc, tipo_doc,fecha, hora_inicio, hora_fin, estado, legajo, sexo)
VALUES ('35444555', 'DNI', CURRENT_DATE+7, '10:00:00', '10:30:00', 'programada', 'LEG002', 'M');

UPDATE esquema_grupo3.vistacascade2
SET fecha = CURRENT_DATE - 5
WHERE id_visita = 18;


/* update en vistacascade2 que cumple la condición */

UPDATE esquema_grupo3.vistacascade2
SET fecha = CURRENT_DATE + 20
WHERE id_visita = 18;


/* insert en vistapunto10 */

INSERT INTO Suministro_esquema_grupo3(nombre) VALUES ('Gasas esteriles');
INSERT INTO contiene_esquema_grupo3(id_kit,nombre_suministro) VALUES (9,'Gasas esteriles');



