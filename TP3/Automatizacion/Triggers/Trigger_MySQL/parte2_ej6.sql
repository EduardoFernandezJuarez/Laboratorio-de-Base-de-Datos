DELIMITER $$

CREATE TRIGGER validar_lim_kits
BEFORE INSERT ON recibe_esquema_grupo3
FOR EACH ROW
BEGIN
    DECLARE cant_kits INT;
    DECLARE mensaje VARCHAR(255);

    SELECT COUNT(DISTINCT id_kit) INTO cant_kits
    FROM (
        SELECT id_kit FROM recibe_esquema_grupo3
        WHERE legajo = NEW.legajo
          AND fecha > DATE_SUB(CURDATE(), INTERVAL 15 DAY)
        UNION
        SELECT NEW.id_kit
    ) AS kit_recientes;

    IF cant_kits > 3 THEN
        SET mensaje = CONCAT('El enfermero ', NEW.legajo, ' ya tiene ', cant_kits, ' kits distintos recibidos en los últimos 15 días (máximo permitido: 3)');
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = mensaje;
    END IF;
END$$

DELIMITER ;
