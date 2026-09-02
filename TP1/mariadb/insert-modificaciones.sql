USE homecare;


INSERT INTO tipo_producto_esquema_grupo3 (idtipo, descripcion) VALUES
(1, 'Insumo de curacion'),
(2, 'Insumo de bioseguridad'),
(3, 'Insumo de diagnostico'),
(4, 'Insumo descartable');

INSERT INTO tiene_un_esquema_grupo3 (id_suministro, idtipo) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 4),
(5, 1),
(6, 1),
(7, 4),
(8, 3);


INSERT INTO tipo_producto_esquema_grupo3_alt (idtipo, descripcion) VALUES
(1, 'Insumo de curacion'),
(2, 'Insumo de bioseguridad'),
(3, 'Insumo de diagnostico'),
(4, 'Insumo descartable');

INSERT INTO tiene_un_esquema_grupo3_alt (id_suministro, idtipo) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 4),
(5, 1),
(6, 1),
(7, 4),
(8, 3);
