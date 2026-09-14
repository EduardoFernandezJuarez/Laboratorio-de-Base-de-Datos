/*CREATE ASSERTION enfermero_limite_kits
CHECK (
    NOT EXISTS (
        SELECT r.legajo
        FROM recibe_esquema_grupo3 r
        WHERE r.fecha > CURRENT_DATE - INTERVAL 15 DAY
        GROUP BY r.legajo
        HAVING COUNT(DISTINCT r.id_kit) > 3
    )
    AND NOT EXISTS (
        SELECT c.id_kit
        FROM contiene_esquema_grupo3 c
        GROUP BY c.id_kit
        HAVING COUNT(c.nombre_suministro) > 20
    )
);*/

/*consultas equivalentes*/

SELECT r.legajo, COUNT(DISTINCT r.id_kit) AS cantidad_kits
FROM recibe_esquema_grupo3 r
WHERE r.fecha > CURRENT_DATE - INTERVAL 15 DAY
GROUP BY r.legajo
HAVING COUNT(DISTINCT r.id_kit) > 3;

SELECT c.id_kit, COUNT(c.nombre_suministro) AS cantidad_suministros
FROM contiene_esquema_grupo3 c
GROUP BY c.id_kit
HAVING COUNT(c.nombre_suministro) > 20;