-- EJERCICIO 4 nodo1

BEGIN; 

INSERT INTO esquema_grupo3.profesional (nro_doc, tipo_doc, sexo, nombre, apellido, legajo, fecha_nacimiento, matricula, fecha_vencimiento_matricula, direccion_calle, direccion_nro, telefono) VALUES ('80000003','DNI','M','Ezequiel','Sánchez','LEG115','1982-11-03','MPSP003','2029-06-01','Sarmiento','40','2994900001');

PREPARE TRANSACTION 'tr_grupo3_002';

-- EJERCICIO 4 nodo3

BEGIN; 

INSERT INTO esquema_grupo3.paciente (nro_doc, tipo_doc, sexo, nombre, apellido, nro_afiliado, fecha_nacimiento, fecha_afiliado, direccion_calle, direccion_nro, telefono, localidad, edad) VALUES ('81000005','DNI','M','Federico','Vega','AF-4003','1991-02-14','2021-09-01','La Pampa','60','2944900002','Cipoletti',35); 

PREPARE TRANSACTION 'tr_grupo3_002';
