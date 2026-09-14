SET search_path TO esquema_grupo3;
CREATE VIEW VistaCascade AS
SELECT
v.id_visita,
v.fecha,
v.sexo || ' ' || v.tipo_doc || ' ' || v.nro_doc AS paciente,
v.legajo AS legajo_profesional
FROM Visita v
WHERE v.fecha > CURRENT_DATE
WITH CASCADE CHECK OPTION;
