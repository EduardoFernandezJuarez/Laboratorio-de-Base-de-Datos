SET search_path TO esquema_grupo3;

-- Procedimiento que actualiza el estado de las visitas 
-- si hora-fin es distinta a null y su estado es programado, se modifica a realizado
CREATE OR REPLACE PROCEDURE actualizar_estado_visitas()
LANGUAGE plpgsql
AS $$
DECLARE 
cur_visitas CURSOR FOR
SELECT id_visita, estado 
FROM Visita
WHERE estado = 'programada' 
AND hora_fin IS NOT NULL
FOR UPDATE;
reg RECORD;
BEGIN
OPEN cur_visitas;
LOOP
FETCH cur_visitas INTO reg;
EXIT WHEN NOT FOUND;

UPDATE Visita
SET estado = 'realizada' 
WHERE CURRENT OF cur_visitas;

RAISE NOTICE 'Visita % actualizada: % -> realizada', reg.id_visita, reg.estado;
END LOOP;
CLOSE cur_visitas;
END;
$$; 
