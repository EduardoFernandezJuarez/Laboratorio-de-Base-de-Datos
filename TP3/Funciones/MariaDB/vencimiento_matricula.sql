DELIMITER $$ 
CREATE FUNCTION vencimiento_matricula(prof_legajo VARCHAR(20))
RETURNS TEXT

DETERMINISTIC 
BEGIN
	DECLARE fecha_vencimiento DATE;

	SELECT fecha_vencimiento_matricula
	INTO fecha_vencimiento
	FROM Profesional_esquema_grupo3
	WHERE legajo = prof_legajo;

	RETURN CONCAT(
		TIMESTAMPDIFF(YEAR, CURDATE(), fecha_vencimiento), ' años, ',
MOD(TIMESTAMPDIFF(MONTH, CURDATE(), fecha_vencimiento), 12), ' meses y ', 
DATEDIFF(fecha_vencimiento, DATE_ADD(DATE_ADD(CURRENT_DATE, INTERVAL TIMESTAMPDIFF(YEAR, CURRENT_DATE, fecha_vencimiento) YEAR), INTERVAL TIMESTAMPDIFF(MONTH, DATE_ADD(CURRENT_DATE, INTERVAL TIMESTAMPDIFF(YEAR, CURRENT_DATE, fecha_vencimiento) YEAR), fecha_vencimiento) MONTH)), ' días') ;
END $$ 
DELIMITER ; 



