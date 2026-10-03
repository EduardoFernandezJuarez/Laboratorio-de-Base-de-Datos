SET search_path TO esquema_grupo3;

CREATE OR REPLACE FUNCTION total_suministros(enf_legajo VARCHAR, fecha_inicio DATE, fecha_fin DATE) 
RETURNS TEXT
AS $$ DECLARE 
resultado TEXT; 
BEGIN 
SELECT 
CONCAT(
	'Legajo: ', enf_legajo,
' | Cantidad de kits: ', COUNT(*),
' | Total de suministros: ', 
SUM(
(SELECT COUNT (*)
FROM contiene c
WHERE c.id_kit =r.id_kit)
)
)
INTO resultado
FROM recibe r 
WHERE r.legajo = enf_legajo AND r.fecha BETWEEN fecha_incio AND fecha_fin;

RETURN resultado; 
END; 
$$ LANGUAGE 'plpgsql'; 
