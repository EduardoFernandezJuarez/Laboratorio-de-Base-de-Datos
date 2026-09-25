SET search_path TO esquema_grupo3;

-- Afirmación que garantiza que un enfermero NO pueda tener más de 3 kits 
CREATE OR REPLACE FUNCTION validar_LimKits()
RETURNS TRIGGER AS $$
DECLARE 
cant_kits INT;
BEGIN
SELECT COUNT(DISTINCT id_kit) INTO cant_kits
FROM (
SELECT id_kit FROM recibe
WHERE legajo = NEW.legajo
AND fecha > CURRENT_DATE - INTERVAL '15 days'
UNION 
SELECT NEW.id_kit
) AS kit_recientes;

IF cant_kits > 3 THEN 
RAISE EXCEPTION 'El enfermero % ya tiene % kits distintos recibidos en los últimos 15 dias (máximo permitido: 3)', NEW.legajo, cant_kits;
END IF;
RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER validar_lim_kits
BEFORE INSERT ON recibe
FOR EACH ROW 
EXECUTE FUNCTION validar_LimKits();
