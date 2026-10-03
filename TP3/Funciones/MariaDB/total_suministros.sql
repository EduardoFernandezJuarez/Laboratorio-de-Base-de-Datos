DELIMITER $$

CREATE FUNCTION total_suministros(
    enf_legajo VARCHAR(20),
    fecha_inicio DATE,
    fecha_fin DATE
)
RETURNS TEXT
DETERMINISTIC
BEGIN
    DECLARE resultado TEXT;
    SELECT
        CONCAT(
            'Legajo: ', enf_legajo,
            ' | Cantidad de kits: ', COUNT(*),
            ' | Total de suministros: ',
            SUM(
                (
                    SELECT COUNT(*)
                    FROM contiene_esquema_grupo3 c
                    WHERE c.id_kit = r.id_kit
                )
            )
        )
    INTO resultado
    FROM recibe_esquema_grupo3 r
    WHERE r.legajo = enf_legajo
    AND r.fecha BETWEEN fecha_inicio AND fecha_fin;
    RETURN resultado;
END $$

DELIMITER ;
