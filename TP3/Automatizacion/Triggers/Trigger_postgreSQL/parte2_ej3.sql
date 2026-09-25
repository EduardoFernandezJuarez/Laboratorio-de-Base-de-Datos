SET search_path TO esquema_grupo3; 

-- Trigger que rompe las restricciones establecidas sobre la eliminación de los Kits
CREATE OR REPLACE FUNCTION fn_habilitarEliminarKit()
RETURNS TRIGGER AS $$
BEGIN
DELETE FROM recibe
WHERE id_kit = OLD.id_kit;

RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER habilitarEliminarKit
BEFORE DELETE ON kit
FOR EACH ROW
EXECUTE FUNCTION fn_habilitarEliminarKit();
