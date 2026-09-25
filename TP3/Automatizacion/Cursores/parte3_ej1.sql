
-- POSTGRESQL
-- Cursor que permite imprimir el último registro de la tabla recibe
CREATE OR REPLACE PROCEDURE recorrer_recibe_move()
LANGUAGE plpgsql
AS $$
DECLARE 
cur_recibe SCROLL CURSOR FOR
SELECT legajo, fecha, id_kit FROM recibe ORDER BY fecha ASC, id_kit ASC;
reg RECORD;
BEGIN
OPEN cur_recibe;

MOVE LAST FROM cur_recibe; 
FETCH RELATIVE 0 FROM cur_recibe INTO reg;
RAISE NOTICE 'Último registro: legajo=%, id_kit=%', reg.legajo, reg.id_kit;

CLOSE cur_recibe;
END;
$$;

