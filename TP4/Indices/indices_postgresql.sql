CREATE INDEX indice_arbolB ON Paciente_ArbolB USING BTREE (fecha_nacimiento);
CREATE INDEX indice_hash ON Paciente_Hash USING HASH (nro_doc);

