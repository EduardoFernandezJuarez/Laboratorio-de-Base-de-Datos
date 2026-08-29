--
-- PostgreSQL database dump
--

\restrict Om3no6cWgDFbBFXFPecwg9Dr7UHHLXZqZruhkR2ADPIj4yhp8eyk0Hvhv9bPBoO

-- Dumped from database version 18.6 (Debian 18.6-1.pgdg13+2)
-- Dumped by pg_dump version 18.6 (Debian 18.6-1.pgdg13+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: esquema_grupo3; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA esquema_grupo3;


ALTER SCHEMA esquema_grupo3 OWNER TO postgres;

--
-- Name: esquema_grupo3_alt; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA esquema_grupo3_alt;


ALTER SCHEMA esquema_grupo3_alt OWNER TO postgres;

--
-- Name: dominio_especialidades; Type: DOMAIN; Schema: esquema_grupo3; Owner: postgres
--

CREATE DOMAIN esquema_grupo3.dominio_especialidades AS character varying(30) DEFAULT 'clinica medica'::character varying
	CONSTRAINT dominio_especialidades_check CHECK (((VALUE)::text = ANY ((ARRAY['clinica medica'::character varying, 'pediatria'::character varying, 'traumatologia'::character varying, 'oftalmologia'::character varying, 'urologia'::character varying, 'gastroenterologia'::character varying, 'oncologia'::character varying, 'endocrinologia'::character varying, 'reumatologia'::character varying, 'nefrologia'::character varying, 'ginecologia'::character varying, 'cardiologia'::character varying])::text[])));


ALTER DOMAIN esquema_grupo3.dominio_especialidades OWNER TO postgres;

--
-- Name: dominio_parentesco; Type: DOMAIN; Schema: esquema_grupo3; Owner: postgres
--

CREATE DOMAIN esquema_grupo3.dominio_parentesco AS character varying(30) DEFAULT 'tutor/ra'::character varying
	CONSTRAINT dominio_parentesco_check CHECK (((VALUE)::text = ANY ((ARRAY['tutor/ra'::character varying, 'hijo/a'::character varying, 'padre'::character varying, 'madre'::character varying, 'nieto/a'::character varying, 'sobrino/a'::character varying, 'tio/a'::character varying, 'esposo/a'::character varying, 'hermano/a'::character varying])::text[])));


ALTER DOMAIN esquema_grupo3.dominio_parentesco OWNER TO postgres;

--
-- Name: dominio_sexo; Type: DOMAIN; Schema: esquema_grupo3; Owner: postgres
--

CREATE DOMAIN esquema_grupo3.dominio_sexo AS character(1) DEFAULT 'X'::bpchar
	CONSTRAINT dominio_sexo_check CHECK ((VALUE = ANY (ARRAY['X'::bpchar, 'M'::bpchar, 'F'::bpchar])));


ALTER DOMAIN esquema_grupo3.dominio_sexo OWNER TO postgres;

--
-- Name: dominio_stock; Type: DOMAIN; Schema: esquema_grupo3; Owner: postgres
--

CREATE DOMAIN esquema_grupo3.dominio_stock AS integer NOT NULL
	CONSTRAINT dominio_stock_check CHECK ((VALUE >= 0));


ALTER DOMAIN esquema_grupo3.dominio_stock OWNER TO postgres;

--
-- Name: dominio_tipo_medicamento; Type: DOMAIN; Schema: esquema_grupo3; Owner: postgres
--

CREATE DOMAIN esquema_grupo3.dominio_tipo_medicamento AS character varying(30) DEFAULT 'antibiotico'::character varying
	CONSTRAINT dominio_tipo_medicamento_check CHECK (((VALUE)::text = ANY ((ARRAY['analgesico'::character varying, 'antibiotico'::character varying, 'antiacido'::character varying, 'ansiolitico'::character varying, 'antiinflamatorio'::character varying, 'antihipertensivo'::character varying, 'antidiabetico'::character varying, 'anticoagulante'::character varying])::text[])));


ALTER DOMAIN esquema_grupo3.dominio_tipo_medicamento OWNER TO postgres;

--
-- Name: dominio_tipoobrasocial; Type: DOMAIN; Schema: esquema_grupo3; Owner: postgres
--

CREATE DOMAIN esquema_grupo3.dominio_tipoobrasocial AS character varying(30) DEFAULT 'Otra'::character varying
	CONSTRAINT dominio_tipoobrasocial_check CHECK (((VALUE)::text = ANY ((ARRAY['Otra'::character varying, 'Sindical'::character varying, 'Estatal'::character varying, 'Estatal/Provincial'::character varying, 'Personal de direccion'::character varying, 'Prepaga'::character varying])::text[])));


ALTER DOMAIN esquema_grupo3.dominio_tipoobrasocial OWNER TO postgres;

--
-- Name: dominio_zonas; Type: DOMAIN; Schema: esquema_grupo3; Owner: postgres
--

CREATE DOMAIN esquema_grupo3.dominio_zonas AS character varying(10) DEFAULT 'centro'::character varying
	CONSTRAINT dominio_zonas_check CHECK (((VALUE)::text = ANY ((ARRAY['centro'::character varying, 'norte'::character varying, 'sur'::character varying, 'este'::character varying, 'oeste'::character varying])::text[])));


ALTER DOMAIN esquema_grupo3.dominio_zonas OWNER TO postgres;

--
-- Name: estado_obrasocial; Type: DOMAIN; Schema: esquema_grupo3; Owner: postgres
--

CREATE DOMAIN esquema_grupo3.estado_obrasocial AS character varying(20) DEFAULT 'inactiva'::character varying
	CONSTRAINT estado_obrasocial_check CHECK (((VALUE)::text = ANY ((ARRAY['activa'::character varying, 'inactiva'::character varying])::text[])));


ALTER DOMAIN esquema_grupo3.estado_obrasocial OWNER TO postgres;

--
-- Name: estados_visita; Type: DOMAIN; Schema: esquema_grupo3; Owner: postgres
--

CREATE DOMAIN esquema_grupo3.estados_visita AS character varying(30) DEFAULT 'programada'::character varying
	CONSTRAINT estados_visita_check CHECK (((VALUE)::text = ANY ((ARRAY['programada'::character varying, 'fallada'::character varying, 'realizada'::character varying, 'pendiente de reasignacion'::character varying, 'cancelada'::character varying])::text[])));


ALTER DOMAIN esquema_grupo3.estados_visita OWNER TO postgres;

--
-- Name: tipo_kit; Type: DOMAIN; Schema: esquema_grupo3; Owner: postgres
--

CREATE DOMAIN esquema_grupo3.tipo_kit AS character varying(20) DEFAULT 'curacion'::character varying
	CONSTRAINT tipo_kit_check CHECK (((VALUE)::text = ANY ((ARRAY['curacion'::character varying, 'atencion'::character varying, 'diagnostico'::character varying, 'medicacion'::character varying, 'emergencia'::character varying])::text[])));


ALTER DOMAIN esquema_grupo3.tipo_kit OWNER TO postgres;

--
-- Name: tipo_lesion; Type: DOMAIN; Schema: esquema_grupo3; Owner: postgres
--

CREATE DOMAIN esquema_grupo3.tipo_lesion AS character varying(20) DEFAULT 'abrasion'::character varying
	CONSTRAINT tipo_lesion_check CHECK (((VALUE)::text = ANY ((ARRAY['abrasion'::character varying, 'cortante'::character varying, 'punzante'::character varying, 'laceracion'::character varying, 'quemadura'::character varying, 'contusion'::character varying, 'esguince'::character varying, 'fractura'::character varying, 'luxacion'::character varying, 'ulcera'::character varying])::text[])));


ALTER DOMAIN esquema_grupo3.tipo_lesion OWNER TO postgres;

--
-- Name: tipodocumento; Type: DOMAIN; Schema: esquema_grupo3; Owner: postgres
--

CREATE DOMAIN esquema_grupo3.tipodocumento AS character varying(20) DEFAULT 'DNI'::character varying
	CONSTRAINT tipodocumento_check CHECK (((VALUE)::text = ANY ((ARRAY['DNI'::character varying, 'pasaporte'::character varying, 'CUIL'::character varying, 'LC'::character varying, 'LE'::character varying])::text[])));


ALTER DOMAIN esquema_grupo3.tipodocumento OWNER TO postgres;

--
-- Name: vencimiento_matricula; Type: DOMAIN; Schema: esquema_grupo3; Owner: postgres
--

CREATE DOMAIN esquema_grupo3.vencimiento_matricula AS date NOT NULL
	CONSTRAINT vencimiento_matricula_check CHECK ((VALUE >= CURRENT_DATE));


ALTER DOMAIN esquema_grupo3.vencimiento_matricula OWNER TO postgres;

--
-- Name: dominio_especialidades; Type: DOMAIN; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE DOMAIN esquema_grupo3_alt.dominio_especialidades AS character varying(30) DEFAULT 'clinica medica'::character varying
	CONSTRAINT dominio_especialidades_check CHECK (((VALUE)::text = ANY ((ARRAY['clinica medica'::character varying, 'pediatria'::character varying, 'traumatologia'::character varying, 'oftalmologia'::character varying, 'urologia'::character varying, 'gastroenterologia'::character varying, 'oncologia'::character varying, 'endocrinologia'::character varying, 'reumatologia'::character varying, 'nefrologia'::character varying, 'ginecologia'::character varying, 'cardiologia'::character varying])::text[])));


ALTER DOMAIN esquema_grupo3_alt.dominio_especialidades OWNER TO postgres;

--
-- Name: dominio_parentesco; Type: DOMAIN; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE DOMAIN esquema_grupo3_alt.dominio_parentesco AS character varying(30) DEFAULT 'tutor/ra'::character varying
	CONSTRAINT dominio_parentesco_check CHECK (((VALUE)::text = ANY ((ARRAY['tutor/ra'::character varying, 'hijo/a'::character varying, 'padre'::character varying, 'madre'::character varying, 'nieto/a'::character varying, 'sobrino/a'::character varying, 'tio/a'::character varying, 'esposo/a'::character varying, 'hermano/a'::character varying])::text[])));


ALTER DOMAIN esquema_grupo3_alt.dominio_parentesco OWNER TO postgres;

--
-- Name: dominio_sexo; Type: DOMAIN; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE DOMAIN esquema_grupo3_alt.dominio_sexo AS character(1) DEFAULT 'X'::bpchar
	CONSTRAINT dominio_sexo_check CHECK ((VALUE = ANY (ARRAY['X'::bpchar, 'M'::bpchar, 'F'::bpchar])));


ALTER DOMAIN esquema_grupo3_alt.dominio_sexo OWNER TO postgres;

--
-- Name: dominio_stock; Type: DOMAIN; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE DOMAIN esquema_grupo3_alt.dominio_stock AS integer NOT NULL
	CONSTRAINT dominio_stock_check CHECK ((VALUE >= 0));


ALTER DOMAIN esquema_grupo3_alt.dominio_stock OWNER TO postgres;

--
-- Name: dominio_tipo_medicamento; Type: DOMAIN; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE DOMAIN esquema_grupo3_alt.dominio_tipo_medicamento AS character varying(30) DEFAULT 'antibiotico'::character varying
	CONSTRAINT dominio_tipo_medicamento_check CHECK (((VALUE)::text = ANY ((ARRAY['analgesico'::character varying, 'antibiotico'::character varying, 'antiacido'::character varying, 'ansiolitico'::character varying, 'antiinflamatorio'::character varying, 'antihipertensivo'::character varying, 'antidiabetico'::character varying, 'anticoagulante'::character varying])::text[])));


ALTER DOMAIN esquema_grupo3_alt.dominio_tipo_medicamento OWNER TO postgres;

--
-- Name: dominio_tipoobrasocial; Type: DOMAIN; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE DOMAIN esquema_grupo3_alt.dominio_tipoobrasocial AS character varying(30) DEFAULT 'Otra'::character varying
	CONSTRAINT dominio_tipoobrasocial_check CHECK (((VALUE)::text = ANY ((ARRAY['Otra'::character varying, 'Sindical'::character varying, 'Estatal'::character varying, 'Estatal/Provincial'::character varying, 'Personal de direccion'::character varying, 'Prepaga'::character varying])::text[])));


ALTER DOMAIN esquema_grupo3_alt.dominio_tipoobrasocial OWNER TO postgres;

--
-- Name: dominio_zonas; Type: DOMAIN; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE DOMAIN esquema_grupo3_alt.dominio_zonas AS character varying(10) DEFAULT 'centro'::character varying
	CONSTRAINT dominio_zonas_check CHECK (((VALUE)::text = ANY ((ARRAY['centro'::character varying, 'norte'::character varying, 'sur'::character varying, 'este'::character varying, 'oeste'::character varying])::text[])));


ALTER DOMAIN esquema_grupo3_alt.dominio_zonas OWNER TO postgres;

--
-- Name: estado_obrasocial; Type: DOMAIN; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE DOMAIN esquema_grupo3_alt.estado_obrasocial AS character varying(20) DEFAULT 'inactiva'::character varying
	CONSTRAINT estado_obrasocial_check CHECK (((VALUE)::text = ANY ((ARRAY['activa'::character varying, 'inactiva'::character varying])::text[])));


ALTER DOMAIN esquema_grupo3_alt.estado_obrasocial OWNER TO postgres;

--
-- Name: estados_visita; Type: DOMAIN; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE DOMAIN esquema_grupo3_alt.estados_visita AS character varying(30) DEFAULT 'programada'::character varying
	CONSTRAINT estados_visita_check CHECK (((VALUE)::text = ANY ((ARRAY['programada'::character varying, 'fallada'::character varying, 'realizada'::character varying, 'pendiente de reasignacion'::character varying, 'cancelada'::character varying])::text[])));


ALTER DOMAIN esquema_grupo3_alt.estados_visita OWNER TO postgres;

--
-- Name: tipo_kit; Type: DOMAIN; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE DOMAIN esquema_grupo3_alt.tipo_kit AS character varying(20) DEFAULT 'curacion'::character varying
	CONSTRAINT tipo_kit_check CHECK (((VALUE)::text = ANY ((ARRAY['curacion'::character varying, 'atencion'::character varying, 'diagnostico'::character varying, 'medicacion'::character varying, 'emergencia'::character varying])::text[])));


ALTER DOMAIN esquema_grupo3_alt.tipo_kit OWNER TO postgres;

--
-- Name: tipo_lesion; Type: DOMAIN; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE DOMAIN esquema_grupo3_alt.tipo_lesion AS character varying(20) DEFAULT 'abrasion'::character varying
	CONSTRAINT tipo_lesion_check CHECK (((VALUE)::text = ANY ((ARRAY['abrasion'::character varying, 'cortante'::character varying, 'punzante'::character varying, 'laceracion'::character varying, 'quemadura'::character varying, 'contusion'::character varying, 'esguince'::character varying, 'fractura'::character varying, 'luxacion'::character varying, 'ulcera'::character varying])::text[])));


ALTER DOMAIN esquema_grupo3_alt.tipo_lesion OWNER TO postgres;

--
-- Name: tipodocumento; Type: DOMAIN; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE DOMAIN esquema_grupo3_alt.tipodocumento AS character varying(20) DEFAULT 'DNI'::character varying
	CONSTRAINT tipodocumento_check CHECK (((VALUE)::text = ANY ((ARRAY['DNI'::character varying, 'pasaporte'::character varying, 'CUIL'::character varying, 'LC'::character varying, 'LE'::character varying])::text[])));


ALTER DOMAIN esquema_grupo3_alt.tipodocumento OWNER TO postgres;

--
-- Name: vencimiento_matricula; Type: DOMAIN; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE DOMAIN esquema_grupo3_alt.vencimiento_matricula AS date NOT NULL
	CONSTRAINT vencimiento_matricula_check CHECK ((VALUE >= CURRENT_DATE));


ALTER DOMAIN esquema_grupo3_alt.vencimiento_matricula OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: alergias; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.alergias (
    id_historia_clinica integer NOT NULL,
    alergia character varying(50) NOT NULL
);


ALTER TABLE esquema_grupo3.alergias OWNER TO postgres;

--
-- Name: almacena; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.almacena (
    id_farmacia integer NOT NULL,
    nombre_medicamento character varying(100) NOT NULL,
    stock esquema_grupo3.dominio_stock
);


ALTER TABLE esquema_grupo3.almacena OWNER TO postgres;

--
-- Name: antecedentes_medicos; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.antecedentes_medicos (
    id_historia_clinica integer NOT NULL,
    descripcion_antecedente character varying(150) NOT NULL
);


ALTER TABLE esquema_grupo3.antecedentes_medicos OWNER TO postgres;

--
-- Name: aplica; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.aplica (
    id_indicacion integer NOT NULL,
    nro_evolucion integer NOT NULL,
    id_historia_clinica integer NOT NULL,
    fecha date,
    legajo character varying(20) NOT NULL
);


ALTER TABLE esquema_grupo3.aplica OWNER TO postgres;

--
-- Name: atiende_en; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.atiende_en (
    id_zona integer NOT NULL,
    legajo character varying(20) NOT NULL
);


ALTER TABLE esquema_grupo3.atiende_en OWNER TO postgres;

--
-- Name: comprende; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.comprende (
    nombre_medicamento character varying(100) NOT NULL,
    id_indicacion integer NOT NULL
);


ALTER TABLE esquema_grupo3.comprende OWNER TO postgres;

--
-- Name: contacto_emergencia; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.contacto_emergencia (
    tipo_doc esquema_grupo3.tipodocumento NOT NULL,
    nro_doc character varying(8) NOT NULL,
    sexo esquema_grupo3.dominio_sexo NOT NULL,
    nombre character varying(30) NOT NULL,
    apellido character varying(30) NOT NULL,
    parentesco esquema_grupo3.dominio_parentesco,
    nro_telefono character varying(20) NOT NULL
);


ALTER TABLE esquema_grupo3.contacto_emergencia OWNER TO postgres;

--
-- Name: contiene; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.contiene (
    id_kit integer NOT NULL,
    nombre_suministro character varying(100) NOT NULL
);


ALTER TABLE esquema_grupo3.contiene OWNER TO postgres;

--
-- Name: coordenada; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.coordenada (
    id_coordenada integer NOT NULL,
    id_zona integer NOT NULL
);


ALTER TABLE esquema_grupo3.coordenada OWNER TO postgres;

--
-- Name: coordenada_id_coordenada_seq; Type: SEQUENCE; Schema: esquema_grupo3; Owner: postgres
--

CREATE SEQUENCE esquema_grupo3.coordenada_id_coordenada_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE esquema_grupo3.coordenada_id_coordenada_seq OWNER TO postgres;

--
-- Name: coordenada_id_coordenada_seq; Type: SEQUENCE OWNED BY; Schema: esquema_grupo3; Owner: postgres
--

ALTER SEQUENCE esquema_grupo3.coordenada_id_coordenada_seq OWNED BY esquema_grupo3.coordenada.id_coordenada;


--
-- Name: denota; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.denota (
    id_historia_clinica integer NOT NULL,
    nro_evolucion integer NOT NULL,
    id_lesion integer NOT NULL
);


ALTER TABLE esquema_grupo3.denota OWNER TO postgres;

--
-- Name: diagnostica; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.diagnostica (
    id_historia_clinica integer NOT NULL,
    nro_evolucion integer NOT NULL,
    legajo character varying(20) NOT NULL,
    diagnostico character varying(100)
);


ALTER TABLE esquema_grupo3.diagnostica OWNER TO postgres;

--
-- Name: enfermero; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.enfermero (
    legajo character varying(20) NOT NULL
);


ALTER TABLE esquema_grupo3.enfermero OWNER TO postgres;

--
-- Name: especialidades; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.especialidades (
    legajo character varying(20) NOT NULL,
    nombre_especialidad esquema_grupo3.dominio_especialidades NOT NULL
);


ALTER TABLE esquema_grupo3.especialidades OWNER TO postgres;

--
-- Name: evolucion; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.evolucion (
    id_historia_clinica integer NOT NULL,
    nro_evolucion integer NOT NULL,
    estado_paciente character varying(20),
    legajo character varying(20) NOT NULL
);


ALTER TABLE esquema_grupo3.evolucion OWNER TO postgres;

--
-- Name: farmacia; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.farmacia (
    id_farmacia integer NOT NULL,
    direccion character varying(50),
    telefono character varying(20)
);


ALTER TABLE esquema_grupo3.farmacia OWNER TO postgres;

--
-- Name: farmacia_id_farmacia_seq; Type: SEQUENCE; Schema: esquema_grupo3; Owner: postgres
--

CREATE SEQUENCE esquema_grupo3.farmacia_id_farmacia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE esquema_grupo3.farmacia_id_farmacia_seq OWNER TO postgres;

--
-- Name: farmacia_id_farmacia_seq; Type: SEQUENCE OWNED BY; Schema: esquema_grupo3; Owner: postgres
--

ALTER SEQUENCE esquema_grupo3.farmacia_id_farmacia_seq OWNED BY esquema_grupo3.farmacia.id_farmacia;


--
-- Name: historia_clinica; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.historia_clinica (
    id_historia_clinica integer NOT NULL,
    tipo_doc esquema_grupo3.tipodocumento,
    nro_doc character varying(8) NOT NULL,
    sexo esquema_grupo3.dominio_sexo
);


ALTER TABLE esquema_grupo3.historia_clinica OWNER TO postgres;

--
-- Name: historia_clinica_id_historia_clinica_seq; Type: SEQUENCE; Schema: esquema_grupo3; Owner: postgres
--

CREATE SEQUENCE esquema_grupo3.historia_clinica_id_historia_clinica_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE esquema_grupo3.historia_clinica_id_historia_clinica_seq OWNER TO postgres;

--
-- Name: historia_clinica_id_historia_clinica_seq; Type: SEQUENCE OWNED BY; Schema: esquema_grupo3; Owner: postgres
--

ALTER SEQUENCE esquema_grupo3.historia_clinica_id_historia_clinica_seq OWNED BY esquema_grupo3.historia_clinica.id_historia_clinica;


--
-- Name: indicacion; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.indicacion (
    id_indicacion integer NOT NULL,
    dosis character varying(50),
    via character varying(50)
);


ALTER TABLE esquema_grupo3.indicacion OWNER TO postgres;

--
-- Name: indicacion_id_indicacion_seq; Type: SEQUENCE; Schema: esquema_grupo3; Owner: postgres
--

CREATE SEQUENCE esquema_grupo3.indicacion_id_indicacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE esquema_grupo3.indicacion_id_indicacion_seq OWNER TO postgres;

--
-- Name: indicacion_id_indicacion_seq; Type: SEQUENCE OWNED BY; Schema: esquema_grupo3; Owner: postgres
--

ALTER SEQUENCE esquema_grupo3.indicacion_id_indicacion_seq OWNED BY esquema_grupo3.indicacion.id_indicacion;


--
-- Name: kinesiologo; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.kinesiologo (
    legajo character varying(20) NOT NULL
);


ALTER TABLE esquema_grupo3.kinesiologo OWNER TO postgres;

--
-- Name: kit; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.kit (
    id_kit integer NOT NULL,
    tipo esquema_grupo3.tipo_kit
);


ALTER TABLE esquema_grupo3.kit OWNER TO postgres;

--
-- Name: kit_id_kit_seq; Type: SEQUENCE; Schema: esquema_grupo3; Owner: postgres
--

CREATE SEQUENCE esquema_grupo3.kit_id_kit_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE esquema_grupo3.kit_id_kit_seq OWNER TO postgres;

--
-- Name: kit_id_kit_seq; Type: SEQUENCE OWNED BY; Schema: esquema_grupo3; Owner: postgres
--

ALTER SEQUENCE esquema_grupo3.kit_id_kit_seq OWNED BY esquema_grupo3.kit.id_kit;


--
-- Name: lesion; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.lesion (
    id_lesion integer NOT NULL,
    detalle_curacion character varying(100),
    area character varying(100),
    tamano character varying(30),
    grado character varying(20),
    tipo esquema_grupo3.tipo_lesion
);


ALTER TABLE esquema_grupo3.lesion OWNER TO postgres;

--
-- Name: lesion_id_lesion_seq; Type: SEQUENCE; Schema: esquema_grupo3; Owner: postgres
--

CREATE SEQUENCE esquema_grupo3.lesion_id_lesion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE esquema_grupo3.lesion_id_lesion_seq OWNER TO postgres;

--
-- Name: lesion_id_lesion_seq; Type: SEQUENCE OWNED BY; Schema: esquema_grupo3; Owner: postgres
--

ALTER SEQUENCE esquema_grupo3.lesion_id_lesion_seq OWNED BY esquema_grupo3.lesion.id_lesion;


--
-- Name: medicamento; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.medicamento (
    nombre character varying(100) NOT NULL,
    tipo esquema_grupo3.dominio_tipo_medicamento
);


ALTER TABLE esquema_grupo3.medicamento OWNER TO postgres;

--
-- Name: medico; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.medico (
    legajo character varying(20) NOT NULL
);


ALTER TABLE esquema_grupo3.medico OWNER TO postgres;

--
-- Name: necesita; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.necesita (
    id_kit integer NOT NULL,
    id_lesion integer NOT NULL
);


ALTER TABLE esquema_grupo3.necesita OWNER TO postgres;

--
-- Name: nutricionista; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.nutricionista (
    legajo character varying(20) NOT NULL
);


ALTER TABLE esquema_grupo3.nutricionista OWNER TO postgres;

--
-- Name: obra_social; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.obra_social (
    id_obra_social integer NOT NULL,
    tipo esquema_grupo3.dominio_tipoobrasocial,
    plan character varying(30),
    cobertura character varying(80),
    estado esquema_grupo3.estado_obrasocial,
    nombre character varying(30) NOT NULL
);


ALTER TABLE esquema_grupo3.obra_social OWNER TO postgres;

--
-- Name: obra_social_id_obra_social_seq; Type: SEQUENCE; Schema: esquema_grupo3; Owner: postgres
--

CREATE SEQUENCE esquema_grupo3.obra_social_id_obra_social_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE esquema_grupo3.obra_social_id_obra_social_seq OWNER TO postgres;

--
-- Name: obra_social_id_obra_social_seq; Type: SEQUENCE OWNED BY; Schema: esquema_grupo3; Owner: postgres
--

ALTER SEQUENCE esquema_grupo3.obra_social_id_obra_social_seq OWNED BY esquema_grupo3.obra_social.id_obra_social;


--
-- Name: paciente; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.paciente (
    nro_doc character varying(8) NOT NULL,
    tipo_doc character varying(20) NOT NULL,
    sexo esquema_grupo3.dominio_sexo NOT NULL,
    nombre character varying(30) NOT NULL,
    apellido character varying(30) NOT NULL,
    nro_afiliado character varying(30),
    fecha_nacimiento date,
    fecha_afiliado date,
    direccion_calle character varying(30),
    direccion_nro character varying(10),
    telefono character varying(20),
    fecha_alta date DEFAULT CURRENT_DATE NOT NULL
);


ALTER TABLE esquema_grupo3.paciente OWNER TO postgres;

--
-- Name: posee; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.posee (
    tipo_doc esquema_grupo3.tipodocumento NOT NULL,
    nro_doc character varying(8) NOT NULL,
    sexo esquema_grupo3.dominio_sexo NOT NULL,
    id_obra_social integer NOT NULL
);


ALTER TABLE esquema_grupo3.posee OWNER TO postgres;

--
-- Name: profesional; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.profesional (
    nro_doc character varying(8) NOT NULL,
    tipo_doc esquema_grupo3.tipodocumento,
    sexo esquema_grupo3.dominio_sexo,
    nombre character varying(30) NOT NULL,
    apellido character varying(30) NOT NULL,
    legajo character varying(20) NOT NULL,
    fecha_nacimiento date,
    matricula character varying(20),
    fecha_vencimiento_matricula esquema_grupo3.vencimiento_matricula,
    direccion_calle character varying(30),
    direccion_nro character varying(10),
    telefono character varying(20)
);


ALTER TABLE esquema_grupo3.profesional OWNER TO postgres;

--
-- Name: psicologo; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.psicologo (
    legajo character varying(20) NOT NULL
);


ALTER TABLE esquema_grupo3.psicologo OWNER TO postgres;

--
-- Name: recibe; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.recibe (
    fecha date NOT NULL,
    id_kit integer NOT NULL,
    legajo character varying(20) NOT NULL
);


ALTER TABLE esquema_grupo3.recibe OWNER TO postgres;

--
-- Name: suministra; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.suministra (
    id_farmacia integer NOT NULL,
    id_kit integer NOT NULL,
    stock esquema_grupo3.dominio_stock
);


ALTER TABLE esquema_grupo3.suministra OWNER TO postgres;

--
-- Name: suministro; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.suministro (
    id_suministro integer NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE esquema_grupo3.suministro OWNER TO postgres;

--
-- Name: suministro_id_suministro_seq; Type: SEQUENCE; Schema: esquema_grupo3; Owner: postgres
--

CREATE SEQUENCE esquema_grupo3.suministro_id_suministro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE esquema_grupo3.suministro_id_suministro_seq OWNER TO postgres;

--
-- Name: suministro_id_suministro_seq; Type: SEQUENCE OWNED BY; Schema: esquema_grupo3; Owner: postgres
--

ALTER SEQUENCE esquema_grupo3.suministro_id_suministro_seq OWNED BY esquema_grupo3.suministro.id_suministro;


--
-- Name: tiene_un; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.tiene_un (
    id_suministro integer NOT NULL,
    idtipo integer NOT NULL
);


ALTER TABLE esquema_grupo3.tiene_un OWNER TO postgres;

--
-- Name: tipo_producto; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.tipo_producto (
    idtipo integer NOT NULL,
    descripcion character varying(50)
);


ALTER TABLE esquema_grupo3.tipo_producto OWNER TO postgres;

--
-- Name: tipo_producto_idtipo_seq; Type: SEQUENCE; Schema: esquema_grupo3; Owner: postgres
--

CREATE SEQUENCE esquema_grupo3.tipo_producto_idtipo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE esquema_grupo3.tipo_producto_idtipo_seq OWNER TO postgres;

--
-- Name: tipo_producto_idtipo_seq; Type: SEQUENCE OWNED BY; Schema: esquema_grupo3; Owner: postgres
--

ALTER SEQUENCE esquema_grupo3.tipo_producto_idtipo_seq OWNED BY esquema_grupo3.tipo_producto.idtipo;


--
-- Name: turno; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.turno (
    id_turno integer NOT NULL,
    hora_inicio time without time zone NOT NULL,
    hora_fin time without time zone NOT NULL,
    fecha date NOT NULL,
    legajo character varying(20) NOT NULL
);


ALTER TABLE esquema_grupo3.turno OWNER TO postgres;

--
-- Name: turno_id_turno_seq; Type: SEQUENCE; Schema: esquema_grupo3; Owner: postgres
--

CREATE SEQUENCE esquema_grupo3.turno_id_turno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE esquema_grupo3.turno_id_turno_seq OWNER TO postgres;

--
-- Name: turno_id_turno_seq; Type: SEQUENCE OWNED BY; Schema: esquema_grupo3; Owner: postgres
--

ALTER SEQUENCE esquema_grupo3.turno_id_turno_seq OWNED BY esquema_grupo3.turno.id_turno;


--
-- Name: vacunas; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.vacunas (
    id_historia_clinica integer NOT NULL,
    vacuna character varying(50) NOT NULL
);


ALTER TABLE esquema_grupo3.vacunas OWNER TO postgres;

--
-- Name: visita; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.visita (
    nro_doc character varying(8) NOT NULL,
    tipo_doc esquema_grupo3.tipodocumento,
    id_visita integer NOT NULL,
    fecha date NOT NULL,
    hora_inicio time without time zone NOT NULL,
    hora_fin time without time zone,
    estado esquema_grupo3.estados_visita,
    legajo character varying(20) NOT NULL,
    sexo esquema_grupo3.dominio_sexo
);


ALTER TABLE esquema_grupo3.visita OWNER TO postgres;

--
-- Name: visita_id_visita_seq; Type: SEQUENCE; Schema: esquema_grupo3; Owner: postgres
--

CREATE SEQUENCE esquema_grupo3.visita_id_visita_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE esquema_grupo3.visita_id_visita_seq OWNER TO postgres;

--
-- Name: visita_id_visita_seq; Type: SEQUENCE OWNED BY; Schema: esquema_grupo3; Owner: postgres
--

ALTER SEQUENCE esquema_grupo3.visita_id_visita_seq OWNED BY esquema_grupo3.visita.id_visita;


--
-- Name: zona; Type: TABLE; Schema: esquema_grupo3; Owner: postgres
--

CREATE TABLE esquema_grupo3.zona (
    id_zona integer NOT NULL,
    nombre esquema_grupo3.dominio_zonas
);


ALTER TABLE esquema_grupo3.zona OWNER TO postgres;

--
-- Name: zona_id_zona_seq; Type: SEQUENCE; Schema: esquema_grupo3; Owner: postgres
--

CREATE SEQUENCE esquema_grupo3.zona_id_zona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE esquema_grupo3.zona_id_zona_seq OWNER TO postgres;

--
-- Name: zona_id_zona_seq; Type: SEQUENCE OWNED BY; Schema: esquema_grupo3; Owner: postgres
--

ALTER SEQUENCE esquema_grupo3.zona_id_zona_seq OWNED BY esquema_grupo3.zona.id_zona;


--
-- Name: alergias; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.alergias (
    id_historia_clinica integer NOT NULL,
    alergia character varying(50) NOT NULL
);


ALTER TABLE esquema_grupo3_alt.alergias OWNER TO postgres;

--
-- Name: almacena; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.almacena (
    id_farmacia integer NOT NULL,
    nombre_medicamento character varying(100) NOT NULL,
    stock esquema_grupo3_alt.dominio_stock
);


ALTER TABLE esquema_grupo3_alt.almacena OWNER TO postgres;

--
-- Name: antecedentes_medicos; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.antecedentes_medicos (
    id_historia_clinica integer NOT NULL,
    descripcion_antecedente character varying(150) NOT NULL
);


ALTER TABLE esquema_grupo3_alt.antecedentes_medicos OWNER TO postgres;

--
-- Name: aplica; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.aplica (
    id_indicacion integer NOT NULL,
    nro_evolucion integer NOT NULL,
    id_historia_clinica integer NOT NULL,
    fecha date,
    legajo character varying(20) NOT NULL
);


ALTER TABLE esquema_grupo3_alt.aplica OWNER TO postgres;

--
-- Name: atiende_en; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.atiende_en (
    id_zona integer NOT NULL,
    legajo character varying(20) NOT NULL
);


ALTER TABLE esquema_grupo3_alt.atiende_en OWNER TO postgres;

--
-- Name: comprende; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.comprende (
    nombre_medicamento character varying(100) NOT NULL,
    id_indicacion integer NOT NULL
);


ALTER TABLE esquema_grupo3_alt.comprende OWNER TO postgres;

--
-- Name: contacto_emergencia; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.contacto_emergencia (
    tipo_doc esquema_grupo3_alt.tipodocumento NOT NULL,
    nro_doc character varying(8) NOT NULL,
    sexo esquema_grupo3_alt.dominio_sexo NOT NULL,
    nombre character varying(30) NOT NULL,
    apellido character varying(30) NOT NULL,
    parentesco esquema_grupo3_alt.dominio_parentesco,
    nro_telefono character varying(20) NOT NULL
);


ALTER TABLE esquema_grupo3_alt.contacto_emergencia OWNER TO postgres;

--
-- Name: contiene; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.contiene (
    id_kit integer NOT NULL,
    nombre_suministro character varying(100) NOT NULL
);


ALTER TABLE esquema_grupo3_alt.contiene OWNER TO postgres;

--
-- Name: coordenada; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.coordenada (
    id_coordenada integer NOT NULL,
    id_zona integer NOT NULL
);


ALTER TABLE esquema_grupo3_alt.coordenada OWNER TO postgres;

--
-- Name: coordenada_id_coordenada_seq; Type: SEQUENCE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE SEQUENCE esquema_grupo3_alt.coordenada_id_coordenada_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE esquema_grupo3_alt.coordenada_id_coordenada_seq OWNER TO postgres;

--
-- Name: coordenada_id_coordenada_seq; Type: SEQUENCE OWNED BY; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER SEQUENCE esquema_grupo3_alt.coordenada_id_coordenada_seq OWNED BY esquema_grupo3_alt.coordenada.id_coordenada;


--
-- Name: denota; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.denota (
    id_historia_clinica integer NOT NULL,
    nro_evolucion integer NOT NULL,
    id_lesion integer NOT NULL
);


ALTER TABLE esquema_grupo3_alt.denota OWNER TO postgres;

--
-- Name: diagnostica; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.diagnostica (
    id_historia_clinica integer NOT NULL,
    nro_evolucion integer NOT NULL,
    legajo character varying(20) NOT NULL,
    diagnostico character varying(100)
);


ALTER TABLE esquema_grupo3_alt.diagnostica OWNER TO postgres;

--
-- Name: enfermero; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.enfermero (
    legajo character varying(20) NOT NULL
);


ALTER TABLE esquema_grupo3_alt.enfermero OWNER TO postgres;

--
-- Name: especialidades; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.especialidades (
    legajo character varying(20) NOT NULL,
    nombre_especialidad esquema_grupo3_alt.dominio_especialidades NOT NULL
);


ALTER TABLE esquema_grupo3_alt.especialidades OWNER TO postgres;

--
-- Name: evolucion; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.evolucion (
    id_historia_clinica integer NOT NULL,
    nro_evolucion integer NOT NULL,
    estado_paciente character varying(20),
    legajo character varying(20) NOT NULL
);


ALTER TABLE esquema_grupo3_alt.evolucion OWNER TO postgres;

--
-- Name: farmacia; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.farmacia (
    id_farmacia integer NOT NULL,
    direccion character varying(50),
    telefono character varying(20)
);


ALTER TABLE esquema_grupo3_alt.farmacia OWNER TO postgres;

--
-- Name: farmacia_id_farmacia_seq; Type: SEQUENCE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE SEQUENCE esquema_grupo3_alt.farmacia_id_farmacia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE esquema_grupo3_alt.farmacia_id_farmacia_seq OWNER TO postgres;

--
-- Name: farmacia_id_farmacia_seq; Type: SEQUENCE OWNED BY; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER SEQUENCE esquema_grupo3_alt.farmacia_id_farmacia_seq OWNED BY esquema_grupo3_alt.farmacia.id_farmacia;


--
-- Name: historia_clinica; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.historia_clinica (
    id_historia_clinica integer NOT NULL,
    tipo_doc esquema_grupo3_alt.tipodocumento,
    nro_doc character varying(8) NOT NULL,
    sexo esquema_grupo3_alt.dominio_sexo
);


ALTER TABLE esquema_grupo3_alt.historia_clinica OWNER TO postgres;

--
-- Name: historia_clinica_id_historia_clinica_seq; Type: SEQUENCE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE SEQUENCE esquema_grupo3_alt.historia_clinica_id_historia_clinica_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE esquema_grupo3_alt.historia_clinica_id_historia_clinica_seq OWNER TO postgres;

--
-- Name: historia_clinica_id_historia_clinica_seq; Type: SEQUENCE OWNED BY; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER SEQUENCE esquema_grupo3_alt.historia_clinica_id_historia_clinica_seq OWNED BY esquema_grupo3_alt.historia_clinica.id_historia_clinica;


--
-- Name: indicacion; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.indicacion (
    id_indicacion integer NOT NULL,
    dosis character varying(50),
    via character varying(50)
);


ALTER TABLE esquema_grupo3_alt.indicacion OWNER TO postgres;

--
-- Name: indicacion_id_indicacion_seq; Type: SEQUENCE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE SEQUENCE esquema_grupo3_alt.indicacion_id_indicacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE esquema_grupo3_alt.indicacion_id_indicacion_seq OWNER TO postgres;

--
-- Name: indicacion_id_indicacion_seq; Type: SEQUENCE OWNED BY; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER SEQUENCE esquema_grupo3_alt.indicacion_id_indicacion_seq OWNED BY esquema_grupo3_alt.indicacion.id_indicacion;


--
-- Name: kinesiologo; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.kinesiologo (
    legajo character varying(20) NOT NULL
);


ALTER TABLE esquema_grupo3_alt.kinesiologo OWNER TO postgres;

--
-- Name: kit; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.kit (
    id_kit integer NOT NULL,
    tipo esquema_grupo3_alt.tipo_kit
);


ALTER TABLE esquema_grupo3_alt.kit OWNER TO postgres;

--
-- Name: kit_id_kit_seq; Type: SEQUENCE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE SEQUENCE esquema_grupo3_alt.kit_id_kit_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE esquema_grupo3_alt.kit_id_kit_seq OWNER TO postgres;

--
-- Name: kit_id_kit_seq; Type: SEQUENCE OWNED BY; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER SEQUENCE esquema_grupo3_alt.kit_id_kit_seq OWNED BY esquema_grupo3_alt.kit.id_kit;


--
-- Name: lesion; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.lesion (
    id_lesion integer NOT NULL,
    detalle_curacion character varying(100),
    area character varying(100),
    tamano character varying(30),
    grado character varying(20),
    tipo esquema_grupo3_alt.tipo_lesion
);


ALTER TABLE esquema_grupo3_alt.lesion OWNER TO postgres;

--
-- Name: lesion_id_lesion_seq; Type: SEQUENCE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE SEQUENCE esquema_grupo3_alt.lesion_id_lesion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE esquema_grupo3_alt.lesion_id_lesion_seq OWNER TO postgres;

--
-- Name: lesion_id_lesion_seq; Type: SEQUENCE OWNED BY; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER SEQUENCE esquema_grupo3_alt.lesion_id_lesion_seq OWNED BY esquema_grupo3_alt.lesion.id_lesion;


--
-- Name: medicamento; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.medicamento (
    nombre character varying(100) NOT NULL,
    tipo esquema_grupo3_alt.dominio_tipo_medicamento
);


ALTER TABLE esquema_grupo3_alt.medicamento OWNER TO postgres;

--
-- Name: medico; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.medico (
    legajo character varying(20) NOT NULL
);


ALTER TABLE esquema_grupo3_alt.medico OWNER TO postgres;

--
-- Name: necesita; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.necesita (
    id_kit integer NOT NULL,
    id_lesion integer NOT NULL
);


ALTER TABLE esquema_grupo3_alt.necesita OWNER TO postgres;

--
-- Name: nutricionista; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.nutricionista (
    legajo character varying(20) NOT NULL
);


ALTER TABLE esquema_grupo3_alt.nutricionista OWNER TO postgres;

--
-- Name: obra_social; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.obra_social (
    id_obra_social integer NOT NULL,
    tipo esquema_grupo3_alt.dominio_tipoobrasocial,
    plan character varying(30),
    cobertura character varying(80),
    estado esquema_grupo3_alt.estado_obrasocial,
    nombre character varying(30) NOT NULL
);


ALTER TABLE esquema_grupo3_alt.obra_social OWNER TO postgres;

--
-- Name: obra_social_id_obra_social_seq; Type: SEQUENCE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE SEQUENCE esquema_grupo3_alt.obra_social_id_obra_social_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE esquema_grupo3_alt.obra_social_id_obra_social_seq OWNER TO postgres;

--
-- Name: obra_social_id_obra_social_seq; Type: SEQUENCE OWNED BY; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER SEQUENCE esquema_grupo3_alt.obra_social_id_obra_social_seq OWNED BY esquema_grupo3_alt.obra_social.id_obra_social;


--
-- Name: paciente; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.paciente (
    nro_doc character varying(8) NOT NULL,
    tipo_doc character varying(20) NOT NULL,
    sexo esquema_grupo3_alt.dominio_sexo NOT NULL,
    nombre character varying(30) NOT NULL,
    apellido character varying(30) NOT NULL,
    nro_afiliado character varying(30),
    fecha_nacimiento date,
    fecha_afiliado date,
    direccion_calle character varying(30),
    direccion_nro character varying(10),
    telefono character varying(20),
    fecha_alta date DEFAULT CURRENT_DATE NOT NULL
);


ALTER TABLE esquema_grupo3_alt.paciente OWNER TO postgres;

--
-- Name: posee; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.posee (
    tipo_doc esquema_grupo3_alt.tipodocumento NOT NULL,
    nro_doc character varying(8) NOT NULL,
    sexo esquema_grupo3_alt.dominio_sexo NOT NULL,
    id_obra_social integer NOT NULL
);


ALTER TABLE esquema_grupo3_alt.posee OWNER TO postgres;

--
-- Name: profesional; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.profesional (
    nro_doc character varying(8) NOT NULL,
    tipo_doc esquema_grupo3_alt.tipodocumento,
    sexo esquema_grupo3_alt.dominio_sexo,
    nombre character varying(30) NOT NULL,
    apellido character varying(30) NOT NULL,
    legajo character varying(20) NOT NULL,
    fecha_nacimiento date,
    matricula character varying(20),
    fecha_vencimiento_matricula esquema_grupo3_alt.vencimiento_matricula,
    direccion_calle character varying(30),
    direccion_nro character varying(10),
    telefono character varying(20)
);


ALTER TABLE esquema_grupo3_alt.profesional OWNER TO postgres;

--
-- Name: psicologo; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.psicologo (
    legajo character varying(20) NOT NULL
);


ALTER TABLE esquema_grupo3_alt.psicologo OWNER TO postgres;

--
-- Name: recibe; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.recibe (
    fecha date NOT NULL,
    id_kit integer NOT NULL,
    legajo character varying(20) NOT NULL
);


ALTER TABLE esquema_grupo3_alt.recibe OWNER TO postgres;

--
-- Name: suministra; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.suministra (
    id_farmacia integer NOT NULL,
    id_kit integer NOT NULL,
    stock esquema_grupo3_alt.dominio_stock
);


ALTER TABLE esquema_grupo3_alt.suministra OWNER TO postgres;

--
-- Name: suministro; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.suministro (
    id_suministro integer NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE esquema_grupo3_alt.suministro OWNER TO postgres;

--
-- Name: suministro_id_suministro_seq; Type: SEQUENCE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE SEQUENCE esquema_grupo3_alt.suministro_id_suministro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE esquema_grupo3_alt.suministro_id_suministro_seq OWNER TO postgres;

--
-- Name: suministro_id_suministro_seq; Type: SEQUENCE OWNED BY; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER SEQUENCE esquema_grupo3_alt.suministro_id_suministro_seq OWNED BY esquema_grupo3_alt.suministro.id_suministro;


--
-- Name: tiene_un; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.tiene_un (
    id_suministro integer NOT NULL,
    idtipo integer NOT NULL
);


ALTER TABLE esquema_grupo3_alt.tiene_un OWNER TO postgres;

--
-- Name: tipo_producto; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.tipo_producto (
    idtipo integer NOT NULL,
    descripcion character varying(50)
);


ALTER TABLE esquema_grupo3_alt.tipo_producto OWNER TO postgres;

--
-- Name: tipo_producto_idtipo_seq; Type: SEQUENCE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE SEQUENCE esquema_grupo3_alt.tipo_producto_idtipo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE esquema_grupo3_alt.tipo_producto_idtipo_seq OWNER TO postgres;

--
-- Name: tipo_producto_idtipo_seq; Type: SEQUENCE OWNED BY; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER SEQUENCE esquema_grupo3_alt.tipo_producto_idtipo_seq OWNED BY esquema_grupo3_alt.tipo_producto.idtipo;


--
-- Name: turno; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.turno (
    id_turno integer NOT NULL,
    hora_inicio time without time zone NOT NULL,
    hora_fin time without time zone NOT NULL,
    fecha date NOT NULL,
    legajo character varying(20) NOT NULL
);


ALTER TABLE esquema_grupo3_alt.turno OWNER TO postgres;

--
-- Name: turno_id_turno_seq; Type: SEQUENCE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE SEQUENCE esquema_grupo3_alt.turno_id_turno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE esquema_grupo3_alt.turno_id_turno_seq OWNER TO postgres;

--
-- Name: turno_id_turno_seq; Type: SEQUENCE OWNED BY; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER SEQUENCE esquema_grupo3_alt.turno_id_turno_seq OWNED BY esquema_grupo3_alt.turno.id_turno;


--
-- Name: vacunas; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.vacunas (
    id_historia_clinica integer NOT NULL,
    vacuna character varying(50) NOT NULL
);


ALTER TABLE esquema_grupo3_alt.vacunas OWNER TO postgres;

--
-- Name: visita; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.visita (
    nro_doc character varying(8) NOT NULL,
    tipo_doc esquema_grupo3_alt.tipodocumento,
    id_visita integer NOT NULL,
    fecha date NOT NULL,
    hora_inicio time without time zone NOT NULL,
    hora_fin time without time zone,
    estado esquema_grupo3_alt.estados_visita,
    legajo character varying(20) NOT NULL,
    sexo esquema_grupo3_alt.dominio_sexo
);


ALTER TABLE esquema_grupo3_alt.visita OWNER TO postgres;

--
-- Name: visita_id_visita_seq; Type: SEQUENCE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE SEQUENCE esquema_grupo3_alt.visita_id_visita_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE esquema_grupo3_alt.visita_id_visita_seq OWNER TO postgres;

--
-- Name: visita_id_visita_seq; Type: SEQUENCE OWNED BY; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER SEQUENCE esquema_grupo3_alt.visita_id_visita_seq OWNED BY esquema_grupo3_alt.visita.id_visita;


--
-- Name: zona; Type: TABLE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE TABLE esquema_grupo3_alt.zona (
    id_zona integer NOT NULL,
    nombre esquema_grupo3_alt.dominio_zonas
);


ALTER TABLE esquema_grupo3_alt.zona OWNER TO postgres;

--
-- Name: zona_id_zona_seq; Type: SEQUENCE; Schema: esquema_grupo3_alt; Owner: postgres
--

CREATE SEQUENCE esquema_grupo3_alt.zona_id_zona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE esquema_grupo3_alt.zona_id_zona_seq OWNER TO postgres;

--
-- Name: zona_id_zona_seq; Type: SEQUENCE OWNED BY; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER SEQUENCE esquema_grupo3_alt.zona_id_zona_seq OWNED BY esquema_grupo3_alt.zona.id_zona;


--
-- Name: coordenada id_coordenada; Type: DEFAULT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.coordenada ALTER COLUMN id_coordenada SET DEFAULT nextval('esquema_grupo3.coordenada_id_coordenada_seq'::regclass);


--
-- Name: farmacia id_farmacia; Type: DEFAULT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.farmacia ALTER COLUMN id_farmacia SET DEFAULT nextval('esquema_grupo3.farmacia_id_farmacia_seq'::regclass);


--
-- Name: historia_clinica id_historia_clinica; Type: DEFAULT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.historia_clinica ALTER COLUMN id_historia_clinica SET DEFAULT nextval('esquema_grupo3.historia_clinica_id_historia_clinica_seq'::regclass);


--
-- Name: indicacion id_indicacion; Type: DEFAULT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.indicacion ALTER COLUMN id_indicacion SET DEFAULT nextval('esquema_grupo3.indicacion_id_indicacion_seq'::regclass);


--
-- Name: kit id_kit; Type: DEFAULT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.kit ALTER COLUMN id_kit SET DEFAULT nextval('esquema_grupo3.kit_id_kit_seq'::regclass);


--
-- Name: lesion id_lesion; Type: DEFAULT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.lesion ALTER COLUMN id_lesion SET DEFAULT nextval('esquema_grupo3.lesion_id_lesion_seq'::regclass);


--
-- Name: obra_social id_obra_social; Type: DEFAULT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.obra_social ALTER COLUMN id_obra_social SET DEFAULT nextval('esquema_grupo3.obra_social_id_obra_social_seq'::regclass);


--
-- Name: suministro id_suministro; Type: DEFAULT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.suministro ALTER COLUMN id_suministro SET DEFAULT nextval('esquema_grupo3.suministro_id_suministro_seq'::regclass);


--
-- Name: tipo_producto idtipo; Type: DEFAULT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.tipo_producto ALTER COLUMN idtipo SET DEFAULT nextval('esquema_grupo3.tipo_producto_idtipo_seq'::regclass);


--
-- Name: turno id_turno; Type: DEFAULT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.turno ALTER COLUMN id_turno SET DEFAULT nextval('esquema_grupo3.turno_id_turno_seq'::regclass);


--
-- Name: visita id_visita; Type: DEFAULT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.visita ALTER COLUMN id_visita SET DEFAULT nextval('esquema_grupo3.visita_id_visita_seq'::regclass);


--
-- Name: zona id_zona; Type: DEFAULT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.zona ALTER COLUMN id_zona SET DEFAULT nextval('esquema_grupo3.zona_id_zona_seq'::regclass);


--
-- Name: coordenada id_coordenada; Type: DEFAULT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.coordenada ALTER COLUMN id_coordenada SET DEFAULT nextval('esquema_grupo3_alt.coordenada_id_coordenada_seq'::regclass);


--
-- Name: farmacia id_farmacia; Type: DEFAULT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.farmacia ALTER COLUMN id_farmacia SET DEFAULT nextval('esquema_grupo3_alt.farmacia_id_farmacia_seq'::regclass);


--
-- Name: historia_clinica id_historia_clinica; Type: DEFAULT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.historia_clinica ALTER COLUMN id_historia_clinica SET DEFAULT nextval('esquema_grupo3_alt.historia_clinica_id_historia_clinica_seq'::regclass);


--
-- Name: indicacion id_indicacion; Type: DEFAULT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.indicacion ALTER COLUMN id_indicacion SET DEFAULT nextval('esquema_grupo3_alt.indicacion_id_indicacion_seq'::regclass);


--
-- Name: kit id_kit; Type: DEFAULT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.kit ALTER COLUMN id_kit SET DEFAULT nextval('esquema_grupo3_alt.kit_id_kit_seq'::regclass);


--
-- Name: lesion id_lesion; Type: DEFAULT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.lesion ALTER COLUMN id_lesion SET DEFAULT nextval('esquema_grupo3_alt.lesion_id_lesion_seq'::regclass);


--
-- Name: obra_social id_obra_social; Type: DEFAULT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.obra_social ALTER COLUMN id_obra_social SET DEFAULT nextval('esquema_grupo3_alt.obra_social_id_obra_social_seq'::regclass);


--
-- Name: suministro id_suministro; Type: DEFAULT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.suministro ALTER COLUMN id_suministro SET DEFAULT nextval('esquema_grupo3_alt.suministro_id_suministro_seq'::regclass);


--
-- Name: tipo_producto idtipo; Type: DEFAULT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.tipo_producto ALTER COLUMN idtipo SET DEFAULT nextval('esquema_grupo3_alt.tipo_producto_idtipo_seq'::regclass);


--
-- Name: turno id_turno; Type: DEFAULT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.turno ALTER COLUMN id_turno SET DEFAULT nextval('esquema_grupo3_alt.turno_id_turno_seq'::regclass);


--
-- Name: visita id_visita; Type: DEFAULT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.visita ALTER COLUMN id_visita SET DEFAULT nextval('esquema_grupo3_alt.visita_id_visita_seq'::regclass);


--
-- Name: zona id_zona; Type: DEFAULT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.zona ALTER COLUMN id_zona SET DEFAULT nextval('esquema_grupo3_alt.zona_id_zona_seq'::regclass);


--
-- Name: alergias alergias_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.alergias
    ADD CONSTRAINT alergias_pkey PRIMARY KEY (id_historia_clinica, alergia);


--
-- Name: almacena almacena_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.almacena
    ADD CONSTRAINT almacena_pkey PRIMARY KEY (id_farmacia, nombre_medicamento);


--
-- Name: antecedentes_medicos antecedentes_medicos_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.antecedentes_medicos
    ADD CONSTRAINT antecedentes_medicos_pkey PRIMARY KEY (id_historia_clinica, descripcion_antecedente);


--
-- Name: aplica aplica_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.aplica
    ADD CONSTRAINT aplica_pkey PRIMARY KEY (id_historia_clinica, nro_evolucion, id_indicacion);


--
-- Name: atiende_en atiende_en_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.atiende_en
    ADD CONSTRAINT atiende_en_pkey PRIMARY KEY (id_zona, legajo);


--
-- Name: comprende comprende_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.comprende
    ADD CONSTRAINT comprende_pkey PRIMARY KEY (nombre_medicamento, id_indicacion);


--
-- Name: contacto_emergencia contacto_emergencia_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.contacto_emergencia
    ADD CONSTRAINT contacto_emergencia_pkey PRIMARY KEY (tipo_doc, nro_doc, sexo, nro_telefono);


--
-- Name: contiene contiene_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.contiene
    ADD CONSTRAINT contiene_pkey PRIMARY KEY (id_kit, nombre_suministro);


--
-- Name: coordenada coordenada_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.coordenada
    ADD CONSTRAINT coordenada_pkey PRIMARY KEY (id_coordenada);


--
-- Name: denota denota_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.denota
    ADD CONSTRAINT denota_pkey PRIMARY KEY (id_historia_clinica, nro_evolucion, id_lesion);


--
-- Name: diagnostica diagnostica_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.diagnostica
    ADD CONSTRAINT diagnostica_pkey PRIMARY KEY (id_historia_clinica, nro_evolucion, legajo);


--
-- Name: enfermero enfermero_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.enfermero
    ADD CONSTRAINT enfermero_pkey PRIMARY KEY (legajo);


--
-- Name: especialidades especialidades_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.especialidades
    ADD CONSTRAINT especialidades_pkey PRIMARY KEY (legajo, nombre_especialidad);


--
-- Name: evolucion evolucion_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.evolucion
    ADD CONSTRAINT evolucion_pkey PRIMARY KEY (id_historia_clinica, nro_evolucion);


--
-- Name: farmacia farmacia_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.farmacia
    ADD CONSTRAINT farmacia_pkey PRIMARY KEY (id_farmacia);


--
-- Name: historia_clinica historia_clinica_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.historia_clinica
    ADD CONSTRAINT historia_clinica_pkey PRIMARY KEY (id_historia_clinica);


--
-- Name: indicacion indicacion_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.indicacion
    ADD CONSTRAINT indicacion_pkey PRIMARY KEY (id_indicacion);


--
-- Name: kinesiologo kinesiologo_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.kinesiologo
    ADD CONSTRAINT kinesiologo_pkey PRIMARY KEY (legajo);


--
-- Name: kit kit_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.kit
    ADD CONSTRAINT kit_pkey PRIMARY KEY (id_kit);


--
-- Name: lesion lesion_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.lesion
    ADD CONSTRAINT lesion_pkey PRIMARY KEY (id_lesion);


--
-- Name: medicamento medicamento_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.medicamento
    ADD CONSTRAINT medicamento_pkey PRIMARY KEY (nombre);


--
-- Name: medico medico_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.medico
    ADD CONSTRAINT medico_pkey PRIMARY KEY (legajo);


--
-- Name: necesita necesita_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.necesita
    ADD CONSTRAINT necesita_pkey PRIMARY KEY (id_kit, id_lesion);


--
-- Name: nutricionista nutricionista_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.nutricionista
    ADD CONSTRAINT nutricionista_pkey PRIMARY KEY (legajo);


--
-- Name: obra_social obra_social_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.obra_social
    ADD CONSTRAINT obra_social_pkey PRIMARY KEY (id_obra_social);


--
-- Name: paciente paciente_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.paciente
    ADD CONSTRAINT paciente_pkey PRIMARY KEY (nro_doc, tipo_doc, sexo);


--
-- Name: posee posee_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.posee
    ADD CONSTRAINT posee_pkey PRIMARY KEY (tipo_doc, nro_doc, sexo, id_obra_social);


--
-- Name: profesional profesional_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.profesional
    ADD CONSTRAINT profesional_pkey PRIMARY KEY (legajo);


--
-- Name: psicologo psicologo_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.psicologo
    ADD CONSTRAINT psicologo_pkey PRIMARY KEY (legajo);


--
-- Name: recibe recibe_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.recibe
    ADD CONSTRAINT recibe_pkey PRIMARY KEY (id_kit, legajo, fecha);


--
-- Name: suministra suministra_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.suministra
    ADD CONSTRAINT suministra_pkey PRIMARY KEY (id_farmacia, id_kit);


--
-- Name: suministro suministro_nombre_key; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.suministro
    ADD CONSTRAINT suministro_nombre_key UNIQUE (nombre);


--
-- Name: suministro suministro_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.suministro
    ADD CONSTRAINT suministro_pkey PRIMARY KEY (id_suministro);


--
-- Name: tiene_un tiene_un_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.tiene_un
    ADD CONSTRAINT tiene_un_pkey PRIMARY KEY (id_suministro);


--
-- Name: tipo_producto tipo_producto_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.tipo_producto
    ADD CONSTRAINT tipo_producto_pkey PRIMARY KEY (idtipo);


--
-- Name: turno turno_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.turno
    ADD CONSTRAINT turno_pkey PRIMARY KEY (id_turno, legajo);


--
-- Name: vacunas vacunas_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.vacunas
    ADD CONSTRAINT vacunas_pkey PRIMARY KEY (id_historia_clinica, vacuna);


--
-- Name: visita visita_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.visita
    ADD CONSTRAINT visita_pkey PRIMARY KEY (id_visita);


--
-- Name: zona zona_pkey; Type: CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.zona
    ADD CONSTRAINT zona_pkey PRIMARY KEY (id_zona);


--
-- Name: alergias alergias_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.alergias
    ADD CONSTRAINT alergias_pkey PRIMARY KEY (id_historia_clinica, alergia);


--
-- Name: almacena almacena_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.almacena
    ADD CONSTRAINT almacena_pkey PRIMARY KEY (id_farmacia, nombre_medicamento);


--
-- Name: antecedentes_medicos antecedentes_medicos_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.antecedentes_medicos
    ADD CONSTRAINT antecedentes_medicos_pkey PRIMARY KEY (id_historia_clinica, descripcion_antecedente);


--
-- Name: aplica aplica_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.aplica
    ADD CONSTRAINT aplica_pkey PRIMARY KEY (id_historia_clinica, nro_evolucion, id_indicacion);


--
-- Name: atiende_en atiende_en_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.atiende_en
    ADD CONSTRAINT atiende_en_pkey PRIMARY KEY (id_zona, legajo);


--
-- Name: comprende comprende_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.comprende
    ADD CONSTRAINT comprende_pkey PRIMARY KEY (nombre_medicamento, id_indicacion);


--
-- Name: contacto_emergencia contacto_emergencia_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.contacto_emergencia
    ADD CONSTRAINT contacto_emergencia_pkey PRIMARY KEY (tipo_doc, nro_doc, sexo, nro_telefono);


--
-- Name: contiene contiene_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.contiene
    ADD CONSTRAINT contiene_pkey PRIMARY KEY (id_kit, nombre_suministro);


--
-- Name: coordenada coordenada_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.coordenada
    ADD CONSTRAINT coordenada_pkey PRIMARY KEY (id_coordenada);


--
-- Name: denota denota_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.denota
    ADD CONSTRAINT denota_pkey PRIMARY KEY (id_historia_clinica, nro_evolucion, id_lesion);


--
-- Name: diagnostica diagnostica_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.diagnostica
    ADD CONSTRAINT diagnostica_pkey PRIMARY KEY (id_historia_clinica, nro_evolucion, legajo);


--
-- Name: enfermero enfermero_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.enfermero
    ADD CONSTRAINT enfermero_pkey PRIMARY KEY (legajo);


--
-- Name: especialidades especialidades_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.especialidades
    ADD CONSTRAINT especialidades_pkey PRIMARY KEY (legajo, nombre_especialidad);


--
-- Name: evolucion evolucion_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.evolucion
    ADD CONSTRAINT evolucion_pkey PRIMARY KEY (id_historia_clinica, nro_evolucion);


--
-- Name: farmacia farmacia_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.farmacia
    ADD CONSTRAINT farmacia_pkey PRIMARY KEY (id_farmacia);


--
-- Name: historia_clinica historia_clinica_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.historia_clinica
    ADD CONSTRAINT historia_clinica_pkey PRIMARY KEY (id_historia_clinica);


--
-- Name: indicacion indicacion_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.indicacion
    ADD CONSTRAINT indicacion_pkey PRIMARY KEY (id_indicacion);


--
-- Name: kinesiologo kinesiologo_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.kinesiologo
    ADD CONSTRAINT kinesiologo_pkey PRIMARY KEY (legajo);


--
-- Name: kit kit_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.kit
    ADD CONSTRAINT kit_pkey PRIMARY KEY (id_kit);


--
-- Name: lesion lesion_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.lesion
    ADD CONSTRAINT lesion_pkey PRIMARY KEY (id_lesion);


--
-- Name: medicamento medicamento_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.medicamento
    ADD CONSTRAINT medicamento_pkey PRIMARY KEY (nombre);


--
-- Name: medico medico_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.medico
    ADD CONSTRAINT medico_pkey PRIMARY KEY (legajo);


--
-- Name: necesita necesita_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.necesita
    ADD CONSTRAINT necesita_pkey PRIMARY KEY (id_kit, id_lesion);


--
-- Name: nutricionista nutricionista_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.nutricionista
    ADD CONSTRAINT nutricionista_pkey PRIMARY KEY (legajo);


--
-- Name: obra_social obra_social_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.obra_social
    ADD CONSTRAINT obra_social_pkey PRIMARY KEY (id_obra_social);


--
-- Name: paciente paciente_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.paciente
    ADD CONSTRAINT paciente_pkey PRIMARY KEY (nro_doc, tipo_doc, sexo);


--
-- Name: posee posee_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.posee
    ADD CONSTRAINT posee_pkey PRIMARY KEY (tipo_doc, nro_doc, sexo, id_obra_social);


--
-- Name: profesional profesional_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.profesional
    ADD CONSTRAINT profesional_pkey PRIMARY KEY (legajo);


--
-- Name: psicologo psicologo_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.psicologo
    ADD CONSTRAINT psicologo_pkey PRIMARY KEY (legajo);


--
-- Name: recibe recibe_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.recibe
    ADD CONSTRAINT recibe_pkey PRIMARY KEY (id_kit, legajo, fecha);


--
-- Name: suministra suministra_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.suministra
    ADD CONSTRAINT suministra_pkey PRIMARY KEY (id_farmacia, id_kit);


--
-- Name: suministro suministro_nombre_key; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.suministro
    ADD CONSTRAINT suministro_nombre_key UNIQUE (nombre);


--
-- Name: suministro suministro_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.suministro
    ADD CONSTRAINT suministro_pkey PRIMARY KEY (id_suministro);


--
-- Name: tiene_un tiene_un_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.tiene_un
    ADD CONSTRAINT tiene_un_pkey PRIMARY KEY (id_suministro);


--
-- Name: tipo_producto tipo_producto_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.tipo_producto
    ADD CONSTRAINT tipo_producto_pkey PRIMARY KEY (idtipo);


--
-- Name: turno turno_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.turno
    ADD CONSTRAINT turno_pkey PRIMARY KEY (id_turno, legajo);


--
-- Name: vacunas vacunas_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.vacunas
    ADD CONSTRAINT vacunas_pkey PRIMARY KEY (id_historia_clinica, vacuna);


--
-- Name: visita visita_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.visita
    ADD CONSTRAINT visita_pkey PRIMARY KEY (id_visita);


--
-- Name: zona zona_pkey; Type: CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.zona
    ADD CONSTRAINT zona_pkey PRIMARY KEY (id_zona);


--
-- Name: alergias alergias_id_historia_clinica_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.alergias
    ADD CONSTRAINT alergias_id_historia_clinica_fkey FOREIGN KEY (id_historia_clinica) REFERENCES esquema_grupo3.historia_clinica(id_historia_clinica) ON DELETE CASCADE;


--
-- Name: almacena almacena_id_farmacia_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.almacena
    ADD CONSTRAINT almacena_id_farmacia_fkey FOREIGN KEY (id_farmacia) REFERENCES esquema_grupo3.farmacia(id_farmacia) ON DELETE CASCADE;


--
-- Name: almacena almacena_nombre_medicamento_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.almacena
    ADD CONSTRAINT almacena_nombre_medicamento_fkey FOREIGN KEY (nombre_medicamento) REFERENCES esquema_grupo3.medicamento(nombre) ON DELETE CASCADE;


--
-- Name: antecedentes_medicos antecedentes_medicos_id_historia_clinica_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.antecedentes_medicos
    ADD CONSTRAINT antecedentes_medicos_id_historia_clinica_fkey FOREIGN KEY (id_historia_clinica) REFERENCES esquema_grupo3.historia_clinica(id_historia_clinica) ON DELETE CASCADE;


--
-- Name: aplica aplica_id_historia_clinica_nro_evolucion_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.aplica
    ADD CONSTRAINT aplica_id_historia_clinica_nro_evolucion_fkey FOREIGN KEY (id_historia_clinica, nro_evolucion) REFERENCES esquema_grupo3.evolucion(id_historia_clinica, nro_evolucion) ON DELETE RESTRICT;


--
-- Name: aplica aplica_id_indicacion_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.aplica
    ADD CONSTRAINT aplica_id_indicacion_fkey FOREIGN KEY (id_indicacion) REFERENCES esquema_grupo3.indicacion(id_indicacion) ON DELETE CASCADE;


--
-- Name: aplica aplica_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.aplica
    ADD CONSTRAINT aplica_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3.profesional(legajo);


--
-- Name: atiende_en atiende_en_id_zona_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.atiende_en
    ADD CONSTRAINT atiende_en_id_zona_fkey FOREIGN KEY (id_zona) REFERENCES esquema_grupo3.zona(id_zona) ON DELETE CASCADE;


--
-- Name: atiende_en atiende_en_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.atiende_en
    ADD CONSTRAINT atiende_en_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3.profesional(legajo) ON DELETE CASCADE;


--
-- Name: comprende comprende_id_indicacion_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.comprende
    ADD CONSTRAINT comprende_id_indicacion_fkey FOREIGN KEY (id_indicacion) REFERENCES esquema_grupo3.indicacion(id_indicacion) ON DELETE CASCADE;


--
-- Name: comprende comprende_nombre_medicamento_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.comprende
    ADD CONSTRAINT comprende_nombre_medicamento_fkey FOREIGN KEY (nombre_medicamento) REFERENCES esquema_grupo3.medicamento(nombre) ON DELETE CASCADE;


--
-- Name: contacto_emergencia contacto_emergencia_tipo_doc_nro_doc_sexo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.contacto_emergencia
    ADD CONSTRAINT contacto_emergencia_tipo_doc_nro_doc_sexo_fkey FOREIGN KEY (tipo_doc, nro_doc, sexo) REFERENCES esquema_grupo3.paciente(tipo_doc, nro_doc, sexo) ON DELETE RESTRICT;


--
-- Name: contiene contiene_id_kit_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.contiene
    ADD CONSTRAINT contiene_id_kit_fkey FOREIGN KEY (id_kit) REFERENCES esquema_grupo3.kit(id_kit) ON DELETE CASCADE;


--
-- Name: contiene contiene_nombre_suministro_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.contiene
    ADD CONSTRAINT contiene_nombre_suministro_fkey FOREIGN KEY (nombre_suministro) REFERENCES esquema_grupo3.suministro(nombre) ON DELETE CASCADE;


--
-- Name: coordenada coordenada_id_zona_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.coordenada
    ADD CONSTRAINT coordenada_id_zona_fkey FOREIGN KEY (id_zona) REFERENCES esquema_grupo3.zona(id_zona);


--
-- Name: denota denota_id_historia_clinica_nro_evolucion_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.denota
    ADD CONSTRAINT denota_id_historia_clinica_nro_evolucion_fkey FOREIGN KEY (id_historia_clinica, nro_evolucion) REFERENCES esquema_grupo3.evolucion(id_historia_clinica, nro_evolucion) ON DELETE CASCADE;


--
-- Name: denota denota_id_lesion_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.denota
    ADD CONSTRAINT denota_id_lesion_fkey FOREIGN KEY (id_lesion) REFERENCES esquema_grupo3.lesion(id_lesion);


--
-- Name: diagnostica diagnostica_id_historia_clinica_nro_evolucion_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.diagnostica
    ADD CONSTRAINT diagnostica_id_historia_clinica_nro_evolucion_fkey FOREIGN KEY (id_historia_clinica, nro_evolucion) REFERENCES esquema_grupo3.evolucion(id_historia_clinica, nro_evolucion) ON DELETE RESTRICT;


--
-- Name: diagnostica diagnostica_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.diagnostica
    ADD CONSTRAINT diagnostica_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3.medico(legajo);


--
-- Name: enfermero enfermero_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.enfermero
    ADD CONSTRAINT enfermero_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3.profesional(legajo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: especialidades especialidades_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.especialidades
    ADD CONSTRAINT especialidades_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3.medico(legajo) ON DELETE RESTRICT;


--
-- Name: evolucion evolucion_id_historia_clinica_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.evolucion
    ADD CONSTRAINT evolucion_id_historia_clinica_fkey FOREIGN KEY (id_historia_clinica) REFERENCES esquema_grupo3.historia_clinica(id_historia_clinica) ON DELETE CASCADE;


--
-- Name: evolucion evolucion_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.evolucion
    ADD CONSTRAINT evolucion_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3.profesional(legajo);


--
-- Name: historia_clinica historia_clinica_tipo_doc_nro_doc_sexo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.historia_clinica
    ADD CONSTRAINT historia_clinica_tipo_doc_nro_doc_sexo_fkey FOREIGN KEY (tipo_doc, nro_doc, sexo) REFERENCES esquema_grupo3.paciente(tipo_doc, nro_doc, sexo) ON DELETE RESTRICT;


--
-- Name: kinesiologo kinesiologo_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.kinesiologo
    ADD CONSTRAINT kinesiologo_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3.profesional(legajo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: medico medico_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.medico
    ADD CONSTRAINT medico_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3.profesional(legajo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: necesita necesita_id_kit_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.necesita
    ADD CONSTRAINT necesita_id_kit_fkey FOREIGN KEY (id_kit) REFERENCES esquema_grupo3.kit(id_kit) ON DELETE CASCADE;


--
-- Name: necesita necesita_id_lesion_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.necesita
    ADD CONSTRAINT necesita_id_lesion_fkey FOREIGN KEY (id_lesion) REFERENCES esquema_grupo3.lesion(id_lesion) ON DELETE CASCADE;


--
-- Name: nutricionista nutricionista_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.nutricionista
    ADD CONSTRAINT nutricionista_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3.profesional(legajo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: posee posee_id_obra_social_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.posee
    ADD CONSTRAINT posee_id_obra_social_fkey FOREIGN KEY (id_obra_social) REFERENCES esquema_grupo3.obra_social(id_obra_social) ON DELETE CASCADE;


--
-- Name: posee posee_tipo_doc_nro_doc_sexo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.posee
    ADD CONSTRAINT posee_tipo_doc_nro_doc_sexo_fkey FOREIGN KEY (tipo_doc, nro_doc, sexo) REFERENCES esquema_grupo3.paciente(tipo_doc, nro_doc, sexo) ON DELETE CASCADE;


--
-- Name: psicologo psicologo_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.psicologo
    ADD CONSTRAINT psicologo_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3.profesional(legajo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: recibe recibe_id_kit_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.recibe
    ADD CONSTRAINT recibe_id_kit_fkey FOREIGN KEY (id_kit) REFERENCES esquema_grupo3.kit(id_kit);


--
-- Name: recibe recibe_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.recibe
    ADD CONSTRAINT recibe_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3.enfermero(legajo);


--
-- Name: suministra suministra_id_farmacia_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.suministra
    ADD CONSTRAINT suministra_id_farmacia_fkey FOREIGN KEY (id_farmacia) REFERENCES esquema_grupo3.farmacia(id_farmacia) ON DELETE CASCADE;


--
-- Name: suministra suministra_id_kit_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.suministra
    ADD CONSTRAINT suministra_id_kit_fkey FOREIGN KEY (id_kit) REFERENCES esquema_grupo3.kit(id_kit) ON DELETE CASCADE;


--
-- Name: tiene_un tiene_un_id_suministro_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.tiene_un
    ADD CONSTRAINT tiene_un_id_suministro_fkey FOREIGN KEY (id_suministro) REFERENCES esquema_grupo3.suministro(id_suministro);


--
-- Name: tiene_un tiene_un_idtipo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.tiene_un
    ADD CONSTRAINT tiene_un_idtipo_fkey FOREIGN KEY (idtipo) REFERENCES esquema_grupo3.tipo_producto(idtipo);


--
-- Name: turno turno_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.turno
    ADD CONSTRAINT turno_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3.profesional(legajo) ON DELETE RESTRICT;


--
-- Name: vacunas vacunas_id_historia_clinica_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.vacunas
    ADD CONSTRAINT vacunas_id_historia_clinica_fkey FOREIGN KEY (id_historia_clinica) REFERENCES esquema_grupo3.historia_clinica(id_historia_clinica) ON DELETE CASCADE;


--
-- Name: visita visita_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.visita
    ADD CONSTRAINT visita_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3.profesional(legajo);


--
-- Name: visita visita_tipo_doc_nro_doc_sexo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3.visita
    ADD CONSTRAINT visita_tipo_doc_nro_doc_sexo_fkey FOREIGN KEY (tipo_doc, nro_doc, sexo) REFERENCES esquema_grupo3.paciente(tipo_doc, nro_doc, sexo) ON DELETE RESTRICT;


--
-- Name: alergias alergias_id_historia_clinica_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.alergias
    ADD CONSTRAINT alergias_id_historia_clinica_fkey FOREIGN KEY (id_historia_clinica) REFERENCES esquema_grupo3_alt.historia_clinica(id_historia_clinica) ON DELETE CASCADE;


--
-- Name: almacena almacena_id_farmacia_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.almacena
    ADD CONSTRAINT almacena_id_farmacia_fkey FOREIGN KEY (id_farmacia) REFERENCES esquema_grupo3_alt.farmacia(id_farmacia) ON DELETE CASCADE;


--
-- Name: almacena almacena_nombre_medicamento_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.almacena
    ADD CONSTRAINT almacena_nombre_medicamento_fkey FOREIGN KEY (nombre_medicamento) REFERENCES esquema_grupo3_alt.medicamento(nombre) ON DELETE CASCADE;


--
-- Name: antecedentes_medicos antecedentes_medicos_id_historia_clinica_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.antecedentes_medicos
    ADD CONSTRAINT antecedentes_medicos_id_historia_clinica_fkey FOREIGN KEY (id_historia_clinica) REFERENCES esquema_grupo3_alt.historia_clinica(id_historia_clinica) ON DELETE CASCADE;


--
-- Name: aplica aplica_id_historia_clinica_nro_evolucion_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.aplica
    ADD CONSTRAINT aplica_id_historia_clinica_nro_evolucion_fkey FOREIGN KEY (id_historia_clinica, nro_evolucion) REFERENCES esquema_grupo3_alt.evolucion(id_historia_clinica, nro_evolucion) ON DELETE RESTRICT;


--
-- Name: aplica aplica_id_indicacion_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.aplica
    ADD CONSTRAINT aplica_id_indicacion_fkey FOREIGN KEY (id_indicacion) REFERENCES esquema_grupo3_alt.indicacion(id_indicacion) ON DELETE CASCADE;


--
-- Name: aplica aplica_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.aplica
    ADD CONSTRAINT aplica_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3_alt.profesional(legajo);


--
-- Name: atiende_en atiende_en_id_zona_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.atiende_en
    ADD CONSTRAINT atiende_en_id_zona_fkey FOREIGN KEY (id_zona) REFERENCES esquema_grupo3_alt.zona(id_zona) ON DELETE CASCADE;


--
-- Name: atiende_en atiende_en_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.atiende_en
    ADD CONSTRAINT atiende_en_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3_alt.profesional(legajo) ON DELETE CASCADE;


--
-- Name: comprende comprende_id_indicacion_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.comprende
    ADD CONSTRAINT comprende_id_indicacion_fkey FOREIGN KEY (id_indicacion) REFERENCES esquema_grupo3_alt.indicacion(id_indicacion) ON DELETE CASCADE;


--
-- Name: comprende comprende_nombre_medicamento_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.comprende
    ADD CONSTRAINT comprende_nombre_medicamento_fkey FOREIGN KEY (nombre_medicamento) REFERENCES esquema_grupo3_alt.medicamento(nombre) ON DELETE CASCADE;


--
-- Name: contacto_emergencia contacto_emergencia_tipo_doc_nro_doc_sexo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.contacto_emergencia
    ADD CONSTRAINT contacto_emergencia_tipo_doc_nro_doc_sexo_fkey FOREIGN KEY (tipo_doc, nro_doc, sexo) REFERENCES esquema_grupo3_alt.paciente(tipo_doc, nro_doc, sexo) ON DELETE RESTRICT;


--
-- Name: contiene contiene_id_kit_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.contiene
    ADD CONSTRAINT contiene_id_kit_fkey FOREIGN KEY (id_kit) REFERENCES esquema_grupo3_alt.kit(id_kit) ON DELETE CASCADE;


--
-- Name: contiene contiene_nombre_suministro_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.contiene
    ADD CONSTRAINT contiene_nombre_suministro_fkey FOREIGN KEY (nombre_suministro) REFERENCES esquema_grupo3_alt.suministro(nombre) ON DELETE CASCADE;


--
-- Name: coordenada coordenada_id_zona_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.coordenada
    ADD CONSTRAINT coordenada_id_zona_fkey FOREIGN KEY (id_zona) REFERENCES esquema_grupo3_alt.zona(id_zona);


--
-- Name: denota denota_id_historia_clinica_nro_evolucion_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.denota
    ADD CONSTRAINT denota_id_historia_clinica_nro_evolucion_fkey FOREIGN KEY (id_historia_clinica, nro_evolucion) REFERENCES esquema_grupo3_alt.evolucion(id_historia_clinica, nro_evolucion) ON DELETE CASCADE;


--
-- Name: denota denota_id_lesion_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.denota
    ADD CONSTRAINT denota_id_lesion_fkey FOREIGN KEY (id_lesion) REFERENCES esquema_grupo3_alt.lesion(id_lesion);


--
-- Name: diagnostica diagnostica_id_historia_clinica_nro_evolucion_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.diagnostica
    ADD CONSTRAINT diagnostica_id_historia_clinica_nro_evolucion_fkey FOREIGN KEY (id_historia_clinica, nro_evolucion) REFERENCES esquema_grupo3_alt.evolucion(id_historia_clinica, nro_evolucion) ON DELETE RESTRICT;


--
-- Name: diagnostica diagnostica_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.diagnostica
    ADD CONSTRAINT diagnostica_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3_alt.medico(legajo);


--
-- Name: enfermero enfermero_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.enfermero
    ADD CONSTRAINT enfermero_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3_alt.profesional(legajo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: especialidades especialidades_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.especialidades
    ADD CONSTRAINT especialidades_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3_alt.medico(legajo) ON DELETE RESTRICT;


--
-- Name: evolucion evolucion_id_historia_clinica_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.evolucion
    ADD CONSTRAINT evolucion_id_historia_clinica_fkey FOREIGN KEY (id_historia_clinica) REFERENCES esquema_grupo3_alt.historia_clinica(id_historia_clinica) ON DELETE CASCADE;


--
-- Name: evolucion evolucion_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.evolucion
    ADD CONSTRAINT evolucion_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3_alt.profesional(legajo);


--
-- Name: historia_clinica historia_clinica_tipo_doc_nro_doc_sexo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.historia_clinica
    ADD CONSTRAINT historia_clinica_tipo_doc_nro_doc_sexo_fkey FOREIGN KEY (tipo_doc, nro_doc, sexo) REFERENCES esquema_grupo3_alt.paciente(tipo_doc, nro_doc, sexo) ON DELETE RESTRICT;


--
-- Name: kinesiologo kinesiologo_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.kinesiologo
    ADD CONSTRAINT kinesiologo_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3_alt.profesional(legajo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: medico medico_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.medico
    ADD CONSTRAINT medico_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3_alt.profesional(legajo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: necesita necesita_id_kit_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.necesita
    ADD CONSTRAINT necesita_id_kit_fkey FOREIGN KEY (id_kit) REFERENCES esquema_grupo3_alt.kit(id_kit) ON DELETE CASCADE;


--
-- Name: necesita necesita_id_lesion_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.necesita
    ADD CONSTRAINT necesita_id_lesion_fkey FOREIGN KEY (id_lesion) REFERENCES esquema_grupo3_alt.lesion(id_lesion) ON DELETE CASCADE;


--
-- Name: nutricionista nutricionista_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.nutricionista
    ADD CONSTRAINT nutricionista_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3_alt.profesional(legajo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: posee posee_id_obra_social_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.posee
    ADD CONSTRAINT posee_id_obra_social_fkey FOREIGN KEY (id_obra_social) REFERENCES esquema_grupo3_alt.obra_social(id_obra_social) ON DELETE CASCADE;


--
-- Name: posee posee_tipo_doc_nro_doc_sexo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.posee
    ADD CONSTRAINT posee_tipo_doc_nro_doc_sexo_fkey FOREIGN KEY (tipo_doc, nro_doc, sexo) REFERENCES esquema_grupo3_alt.paciente(tipo_doc, nro_doc, sexo) ON DELETE CASCADE;


--
-- Name: psicologo psicologo_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.psicologo
    ADD CONSTRAINT psicologo_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3_alt.profesional(legajo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: recibe recibe_id_kit_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.recibe
    ADD CONSTRAINT recibe_id_kit_fkey FOREIGN KEY (id_kit) REFERENCES esquema_grupo3_alt.kit(id_kit);


--
-- Name: recibe recibe_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.recibe
    ADD CONSTRAINT recibe_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3_alt.enfermero(legajo);


--
-- Name: suministra suministra_id_farmacia_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.suministra
    ADD CONSTRAINT suministra_id_farmacia_fkey FOREIGN KEY (id_farmacia) REFERENCES esquema_grupo3_alt.farmacia(id_farmacia) ON DELETE CASCADE;


--
-- Name: suministra suministra_id_kit_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.suministra
    ADD CONSTRAINT suministra_id_kit_fkey FOREIGN KEY (id_kit) REFERENCES esquema_grupo3_alt.kit(id_kit) ON DELETE CASCADE;


--
-- Name: tiene_un tiene_un_id_suministro_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.tiene_un
    ADD CONSTRAINT tiene_un_id_suministro_fkey FOREIGN KEY (id_suministro) REFERENCES esquema_grupo3_alt.suministro(id_suministro);


--
-- Name: tiene_un tiene_un_idtipo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.tiene_un
    ADD CONSTRAINT tiene_un_idtipo_fkey FOREIGN KEY (idtipo) REFERENCES esquema_grupo3_alt.tipo_producto(idtipo);


--
-- Name: turno turno_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.turno
    ADD CONSTRAINT turno_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3_alt.profesional(legajo) ON DELETE RESTRICT;


--
-- Name: vacunas vacunas_id_historia_clinica_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.vacunas
    ADD CONSTRAINT vacunas_id_historia_clinica_fkey FOREIGN KEY (id_historia_clinica) REFERENCES esquema_grupo3_alt.historia_clinica(id_historia_clinica) ON DELETE CASCADE;


--
-- Name: visita visita_legajo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.visita
    ADD CONSTRAINT visita_legajo_fkey FOREIGN KEY (legajo) REFERENCES esquema_grupo3_alt.profesional(legajo);


--
-- Name: visita visita_tipo_doc_nro_doc_sexo_fkey; Type: FK CONSTRAINT; Schema: esquema_grupo3_alt; Owner: postgres
--

ALTER TABLE ONLY esquema_grupo3_alt.visita
    ADD CONSTRAINT visita_tipo_doc_nro_doc_sexo_fkey FOREIGN KEY (tipo_doc, nro_doc, sexo) REFERENCES esquema_grupo3_alt.paciente(tipo_doc, nro_doc, sexo) ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

\unrestrict Om3no6cWgDFbBFXFPecwg9Dr7UHHLXZqZruhkR2ADPIj4yhp8eyk0Hvhv9bPBoO

