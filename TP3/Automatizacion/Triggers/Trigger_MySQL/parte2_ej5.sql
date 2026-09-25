DELIMITER $$

-- Triggers para la escritura de operaciones en planilla LOG
CREATE PROCEDURE insertar_recibe(IN p_legajo VARCHAR(20), IN p_id_kit INT)
BEGIN
INSERT INTO recibe_esquema_grupo3 (legajo,fecha,id_kit)
VALUES (p_legajo,CURDATE(),p_id_kit);

INSERT INTO LOG_planillaControl (operacion) VALUES (‘INSERT’);
END$$

CREATE PROCEDURE actualizar_recibe(IN p_legajo VARCHAR(20))
BEGIN
UPDATE recibe_esquema_grupo3 
SET fecha = CURDATE()
WHERE legajo = p_legajo;

INSERT INTO LOG_planillaControl (operacion) VALUES (‘UPDATE’);
END$$

CREATE PROCEDURE eliminar_recibe(IN p_legajo VARCHAR(20))
BEGIN
DELETE FROM recibe_esquema_grupo3 
WHERE legajo = p_legajo;

INSERT INTO LOG_planillaControl (operacion) VALUES (‘DELETE’);
END$$

DELIMITER;
