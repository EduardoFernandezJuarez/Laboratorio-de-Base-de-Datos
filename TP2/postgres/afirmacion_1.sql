/* CREATE ASSERTION visita_requiere_paciente_y_profesional
CHECK (
   NOT EXISTS (
       SELECT v.id_visita
       FROM Visita v
       WHERE NOT EXISTS (
           SELECT p.nombre
			FROM Paciente p
           WHERE p.tipo_doc = v.tipo_doc
             AND p.nro_doc = v.nro_doc
             AND p.sexo = v.sexo
       )
       OR NOT EXISTS (
           SELECT pr.nombre
			FROM Profesional pr
           WHERE pr.legajo = v.legajo
       )
   )
); */

/*consulta equivalente*/

SET search_path TO esquema_grupo3;
SELECT v.*
FROM Visita v
WHERE NOT EXISTS (
    SELECT p.nombre
	FROM Paciente p
    WHERE p.tipo_doc = v.tipo_doc
      AND p.nro_doc = v.nro_doc
      AND p.sexo = v.sexo
)
OR NOT EXISTS (
    SELECT pr.nombre
	FROM Profesional pr
    WHERE pr.legajo = v.legajo
);
