DELIMITER $$
CREATE FUNCTION diferencia_meses(fecha1 DATE, fecha2 DATE)
RETURNS INTEGER
DETERMINISTIC
BEGIN
    RETURN(YEAR(fecha2) - YEAR(fecha1)) * 12
        + (MONTH(fecha2) - MONTH(fecha1));
END $$
DELIMITER ;

