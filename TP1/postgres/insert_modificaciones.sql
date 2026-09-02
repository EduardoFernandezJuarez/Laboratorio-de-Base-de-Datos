SET search_path TO esquema_grupo3;

-- ============================
-- 7. datos modicicacion
-- ============================

INSERT INTO tipo_producto (idtipo, descripcion) VALUES
(1, 'Insumo de curacion'),
(2, 'Insumo de bioseguridad'),
(3, 'Insumo de diagnostico'),
(4, 'Insumo descartable');

-- id_suministro tiene que existir en Suministro (FK)
INSERT INTO tiene_un (id_suministro, idtipo) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 4),
(5, 1),
(6, 1),
(7, 4),
(8, 3);

