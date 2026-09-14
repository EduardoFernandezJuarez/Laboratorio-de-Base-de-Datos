CREATE VIEW VistaLocal2 AS
SELECT v.*
FROM VistaLocal v
WHERE EXISTS (
    SELECT v.legajo_profesional
    FROM Medico_esquema_grupo3 m
    WHERE m.legajo = v.legajo_profesional
)
AND EXISTS (
    SELECT v.legajo_profesional
    FROM atiende_en_esquema_grupo3 ae
    JOIN Zona_esquema_grupo3 z ON z.id_zona = ae.id_zona
    WHERE ae.legajo = v.legajo_profesional
      AND z.nombre = 'norte'
)
AND EXISTS (
    SELECT v.legajo_profesional
    FROM Turno_esquema_grupo3 t
    WHERE t.legajo = v.legajo_profesional
      AND t.hora_Inicio BETWEEN '08:00:00' AND '11:00:00'
)
WITH LOCAL CHECK OPTION;