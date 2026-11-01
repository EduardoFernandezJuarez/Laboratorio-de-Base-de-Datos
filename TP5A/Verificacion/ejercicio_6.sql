-- versión instalada y motores disponibles
SELECT VERSION();
SHOW ENGINES;

-- no se pueden mezclar motores en las particiones de una tabla
CREATE TABLE prueba_particion (id INT, localidad VARCHAR(20))
PARTITION BY LIST COLUMNS (localidad) (
  PARTITION p_local  VALUES IN ('Neuquen')   ENGINE = InnoDB,
  PARTITION p_remota VALUES IN ('Cipoletti') ENGINE = MyISAM
);