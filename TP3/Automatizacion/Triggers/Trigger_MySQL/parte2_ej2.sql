-- Trigger utilizado para actualizar el valor de cantidadVisitasAnio de un Paciente, al insertarse una nueva Visita en el sistema asociada a este. 
CREATE TRIGGER agregarVisitaPaciente
AFTER INSERT ON Visita_esquema_grupo3
FOR EACH ROW
BEGIN 
UPDATE Paciente_esquema_grupo3
SET cantidadVisitasAnio = cantidadVisitasAnio + 1
WHERE tipo_doc = NEW.tipo_doc AND nro_doc = NEW.nro_doc AND sexo = NEW.sexo;
END$$
