/*CREATE ASSERTION enfermero_limite_kits
CHECK (
    NOT EXISTS (
        SELECT r.legajo
        FROM recibe r
        WHERE r.fecha > CURRENT_DATE - INTERVAL '15 days'
        GROUP BY r.legajo
        HAVING COUNT(DISTINCT r.id_kit) > 3
    )
    AND NOT EXISTS (
        SELECT c.id_kit
        FROM contiene c
        GROUP BY c.id_kit
        HAVING COUNT(c.nombre_suministro) > 20
    )
); */

/*consultas equivalentes*/
SET search_path TO esquema_grupo3;

SELECT r.legajo, COUNT(DISTINCT r.id_kit) AS cantidad_kits
FROM recibe r
WHERE r.fecha > CURRENT_DATE - INTERVAL '15 days'
GROUP BY r.legajo
HAVING COUNT(DISTINCT r.id_kit) > 3;

SELECT c.id_kit, COUNT(c.nombre_suministro) AS cantidad_suministros
FROM contiene c
GROUP BY c.id_kit
HAVING COUNT(c.nombre_suministro) > 20;
