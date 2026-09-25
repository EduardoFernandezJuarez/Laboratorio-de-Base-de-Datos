SET search_path TO esquema_grupo3; 

-- Trigger utilizado para actualizar el valor de cantidadVisitasAnio de un Paciente, al insertarse una nueva Visita en el sistema asociada a este. 

CREATE OR REPLACE FUNCTION incrementar_visitasAnio()
RETURNS TRIGGER AS $$
BEGIN 
UPDATE paciente
SET cantidadVisitasAnio = cantidadVisitasAnio + 1
WHERE NEW.tipo_doc = tipo_doc AND NEW.nro_doc = nro_doc AND NEW.sexo = sexo;
RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER agregarVisitaPaciente
AFTER INSERT ON Visita
FOR EACH ROW
EXECUTE FUNCTION incrementar_visitasAnio();
