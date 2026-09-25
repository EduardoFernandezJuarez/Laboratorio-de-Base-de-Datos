SET search_path TO esquema_grupo3; 

CREATE OR REPLACE FUNCTION auditRecibe()
RETURNS TRIGGER AS $$
BEGIN
INSERT INTO LOG_planillaControl (operacion) VALUES (TG_OP);
RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER auditar_recibe_update
AFTER UPDATE ON recibe
FOR EACH STATEMENT
EXECUTE FUNCTION auditRecibe();

CREATE TRIGGER auditar_recibe_insert
AFTER INSERT ON recibe
FOR EACH STATEMENT
EXECUTE FUNCTION auditRecibe();

CREATE TRIGGER auditar_recibe_delete
AFTER DELETE ON recibe
FOR EACH STATEMENT
EXECUTE FUNCTION auditRecibe();
