CREATE VIEW VistaCascade AS
SELECT
    v.id_visita,
    v.fecha,
    CONCAT(v.sexo, ' ', v.tipo_doc, ' ', v.nro_doc) AS paciente,
    v.legajo AS legajo_profesional
FROM Visita_esquema_grupo3 v
WHERE v.fecha > CURDATE()
WITH CASCADED CHECK OPTION;