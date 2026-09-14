CREATE VIEW vistaPunto10 AS
SELECT k.*, s.*
FROM Kit_esquema_grupo3 k
JOIN contiene_esquema_grupo3 c ON c.id_kit = k.id_kit
JOIN Suministro_esquema_grupo3 s ON s.nombre = c.nombre_suministro
WITH CHECK OPTION;