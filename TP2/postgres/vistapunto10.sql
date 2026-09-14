SET search_path TO esquema_grupo3,

CREATE VIEW vistaPunto10 AS
SELECT k.*, s.*
FROM Kit k
JOIN contiene c ON c.id_kit = k.id_kit
JOIN Suministro s ON s.nombre = c.nombre_suministro
/*WITH CHECK OPTION; */