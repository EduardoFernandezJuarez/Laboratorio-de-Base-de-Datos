-- Trigger que rompe las restricciones establecidas sobre la eliminación de los Kits
CREATE TRIGGER habilitarEliminarKit
BEFORE DELETE ON Kit_esquema_grupo3
FOR EACH ROW
BEGIN 
DELETE FROM recibe_esquema_grupo3
WHERE id_kit = OLD.id_kit;
END$$
