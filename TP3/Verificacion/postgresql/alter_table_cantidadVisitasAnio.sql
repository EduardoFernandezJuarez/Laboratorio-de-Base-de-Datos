/*alteramos la tabla paciente para añadir la cantidad de visitas por año*/
SET search_path TO esquema_grupo3;
ALTER TABLE paciente ADD COLUMN cantidadVisitasAnio INT DEFAULT 0;
