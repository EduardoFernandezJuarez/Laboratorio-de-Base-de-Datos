SET search_path TO esquema_grupo3;
CREATE VIEW VistaLocal2 AS
SELECT v.*
FROM vistalocal v
WHERE EXISTS (
    SELECT v.legajo_profesional
    FROM Medico m
    WHERE m.legajo = v.legajo_profesional
)AND EXISTS (
    SELECT v.legajo_profesional
    FROM atiende_en ae
    JOIN Zona z ON z.id_zona = ae.id_zona
    WHERE ae.legajo = v.legajo_profesional
      AND z.nombre = 'norte'
)AND EXISTS (
    SELECT v.legajo_profesional
    FROM Turno t
    WHERE t.legajo = v.legajo_profesional
    AND t.hora_Inicio BETWEEN '08:00:00' AND '11:00:00'
)
WITH LOCAL CHECK OPTION;
