SET search_path TO esquema_grupo3;
CREATE OR REPLACE FUNCTION vencimiento_matricula(prof_legajo VARCHAR)
RETURNS TEXT
AS $$
DECLARE
fecha_vencimiento DATE;
BEGIN 
	SELECT fecha_vencimiento_matricula
	INTO fecha_vencimiento
	FROM Profesional
	WHERE legajo = prof_legajo;
RETURN
	EXTRACT(YEAR FROM (AGE(fecha_vencimiento, CURRENT_DATE)))::INTEGER || ' años, ' || 
	EXTRACT(MONTH FROM (AGE(fecha_vencimiento, CURRENT_DATE)))::INTEGER || ' meses y ' ||
	EXTRACT(DAY FROM (AGE(fecha_vencimiento, CURRENT_DATE)))::INTEGER || 'días';
END;
$$ LANGUAGE plpgsql;


