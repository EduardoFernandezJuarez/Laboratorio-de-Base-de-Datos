SET search_path TO esquema_grupo3;

-- POSTGRESQL
-- Definimos procedimiento para listar las indicaciones a medicamentos que inician con pan o PAN
CREATE OR REPLACE PROCEDURE listar_indicaciones_pan()
LANGUAGE plpgsql
AS $$
DECLARE 
cur_indicaciones CURSOR FOR
SELECT i.id_indicacion, i.dosis, i.via, m.nombre AS medicamento, m.tipo, a.fecha, a.legajo
FROM comprende c
JOIN Medicamento m ON m.nombre=c.nombre_medicamento
JOIN Indicacion i ON i.id_indicacion=c.id_indicacion
LEFT JOIN aplica a ON a.id_indicacion=i.id_indicacion
WHERE m.nombre ILIKE '%PAN%';
reg RECORD;
linea TEXT;
BEGIN
OPEN cur_indicaciones;
LOOP
FETCH cur_indicaciones INTO reg;
EXIT WHEN NOT FOUND;

linea:= 'Indicación #' || reg.id_indicacion || 
        ' - Medicamento: ' || reg.medicamento || 
        ' (tipo: ' || COALESCE(reg.tipo::TEXT, '[ TIPO No especificado]') || ')' || 
       ' - Dosis: ' || COALESCE(reg.dosis, '[DOSIS No especificada]') || 
      ' - Vía: ' || COALESCE(reg.via, '[VIA No especificada]') || 
     ' - Aplicada por legajo: ' || COALESCE(reg.legajo, '[LEGAJO No especificado]') ||               ' el ' || COALESCE(reg.fecha::TEXT, '[FECHA No especificada]'); 

RAISE NOTICE '%', linea; 
END LOOP;
CLOSE cur_indicaciones;
END; 
$$;
