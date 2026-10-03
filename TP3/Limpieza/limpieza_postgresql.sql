SET search_path TO esquema_grupo3;

-- 1. Triggers (dependen de sus funciones)
DROP TRIGGER IF EXISTS agregarVisitaPaciente ON visita;
DROP TRIGGER IF EXISTS habilitarEliminarKit ON kit;
DROP TRIGGER IF EXISTS auditar_recibe_insert ON recibe;
DROP TRIGGER IF EXISTS auditar_recibe_update ON recibe;
DROP TRIGGER IF EXISTS auditar_recibe_delete ON recibe;
DROP TRIGGER IF EXISTS validar_lim_kits ON recibe;

-- 2. Funciones de trigger
DROP FUNCTION IF EXISTS incrementar_visitasAnio();
DROP FUNCTION IF EXISTS fn_habilitarEliminarKit();
DROP FUNCTION IF EXISTS auditRecibe();
DROP FUNCTION IF EXISTS validar_LimKits();

-- 3. Procedimientos con cursores (Parte 3)
DROP PROCEDURE IF EXISTS recorrer_recibe_move();
DROP PROCEDURE IF EXISTS actualizar_estado_visitas();
DROP PROCEDURE IF EXISTS listar_indicaciones_pan();

-- 4. Funciones de la Parte 1
DROP FUNCTION IF EXISTS total_suministros;
DROP FUNCTION IF EXISTS diferencia_meses;
DROP FUNCTION IF EXISTS meses2;
DROP FUNCTION IF EXISTS vencimiento_matricula;

-- 5. Tabla de auditoría y atributo derivado
DROP TABLE IF EXISTS LOG_planillaControl;
ALTER TABLE paciente DROP COLUMN IF EXISTS cantidadVisitasAnio;