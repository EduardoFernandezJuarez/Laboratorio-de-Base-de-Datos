CREATE INDEX indice_paciente_hash
ON Paciente_Hash (nro_doc) USING HASH;
CREATE INDEX indice_paciente_arbol_b
ON Paciente_ArbolB (fecha_nacimiento);


