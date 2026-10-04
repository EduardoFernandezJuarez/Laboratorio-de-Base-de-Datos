-- 1. Triggers
DROP TRIGGER IF EXISTS agregarVisitaPaciente;
DROP TRIGGER IF EXISTS habilitarBorradoKit;
DROP TRIGGER IF EXISTS validar_lim_kits_insert;
DROP TRIGGER IF EXISTS validar_lim_kits_update;

-- 2. Procedimientos de auditoría (P2 punto 5)
DROP PROCEDURE IF EXISTS insertar_recibe;
DROP PROCEDURE IF EXISTS actualizar_recibe_fecha;
DROP PROCEDURE IF EXISTS actualizar_recibe_legajo;
DROP PROCEDURE IF EXISTS actualizar_recibe_kit;
DROP PROCEDURE IF EXISTS eliminar_recibe;

-- 3. Funciones de la Parte 1
DROP FUNCTION IF EXISTS total_suministros;
DROP FUNCTION IF EXISTS diferencia_meses;
DROP FUNCTION IF EXISTS vencimiento_matricula;

-- 4. Tabla de auditoría y atributo derivado
DROP TABLE IF EXISTS LOG_planillaControl;
ALTER TABLE Paciente_esquema_grupo3 DROP COLUMN IF EXISTS cantidadVisitasAnio;
