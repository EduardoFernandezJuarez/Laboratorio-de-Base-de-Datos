/*CREATE ASSERTION visita_requiere_paciente_y_profesional
CHECK (
    NOT EXISTS (
        SELECT v.id_visita
        FROM Visita_esquema_grupo3 v
        WHERE NOT EXISTS (
            SELECT p.nombre
            FROM Paciente_esquema_grupo3 p
            WHERE p.tipo_doc = v.tipo_doc
              AND p.nro_doc = v.nro_doc
              AND p.sexo = v.sexo
        )
        OR NOT EXISTS (
            SELECT pr.nombre
            FROM Profesional_esquema_grupo3 pr
            WHERE pr.legajo = v.legajo
        )
    )
);*/

/*consulta equivalente*/

SELECT v.id_visita, v.tipo_doc, v.nro_doc, v.sexo, v.legajo
FROM Visita_esquema_grupo3 v
WHERE NOT EXISTS (
    SELECT 1 FROM Paciente_esquema_grupo3 p
    WHERE p.tipo_doc = v.tipo_doc
      AND p.nro_doc = v.nro_doc
      AND p.sexo = v.sexo
)
OR NOT EXISTS (
    SELECT 1 FROM Profesional_esquema_grupo3 pr
    WHERE pr.legajo = v.legajo
);