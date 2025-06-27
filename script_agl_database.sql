-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler version: 0.9.4
-- PostgreSQL version: 13.0
-- Project Site: pgmodeler.io
-- Model Author: ---

-- Database creation must be performed outside a multi lined SQL file. 
-- These commands were put in this file only as a convenience.
-- 
-- object: sae | type: DATABASE --
DROP DATABASE IF EXISTS sae;
CREATE DATABASE sae;
-- ddl-end --


-- object: public."COUNTRY" | type: TABLE --
DROP TABLE IF EXISTS public."COUNTRY" CASCADE;
CREATE TABLE public."COUNTRY" (
	country_code integer NOT NULL,
	name character varying NOT NULL,
	"ISO2" char(2),
	"ISO3" char(2),
	sub_region_code integer,
	CONSTRAINT "COUNTRY_pk" PRIMARY KEY (country_code)
);
-- ddl-end --
ALTER TABLE public."COUNTRY" OWNER TO postgres;
-- ddl-end --

-- object: public."DISASTER" | type: TABLE --
DROP TABLE IF EXISTS public."DISASTER" CASCADE;
CREATE TABLE public."DISASTER" (
	disaster_code serial NOT NULL,
	disaster character varying NOT NULL,
	CONSTRAINT "DISASTER_pk" PRIMARY KEY (disaster_code)
);
-- ddl-end --
ALTER TABLE public."DISASTER" OWNER TO postgres;
-- ddl-end --

-- object: public."CLIMATE_DISASTER" | type: TABLE --
DROP TABLE IF EXISTS public."CLIMATE_DISASTER" CASCADE;
CREATE TABLE public."CLIMATE_DISASTER" (
	country_code integer NOT NULL,
	disaster_code integer NOT NULL,
	year integer NOT NULL,
	number integer,
	CONSTRAINT "CLIMATE_DISASTER_pk" PRIMARY KEY (country_code,disaster_code,year)
);
-- ddl-end --
ALTER TABLE public."CLIMATE_DISASTER" OWNER TO postgres;
-- ddl-end --

-- object: public."SUB_REGION" | type: TABLE --
DROP TABLE IF EXISTS public."SUB_REGION" CASCADE;
CREATE TABLE public."SUB_REGION" (
	sub_region_code integer NOT NULL,
	name character varying NOT NULL,
	region_code integer,
	CONSTRAINT "SUB_REGION_pk" PRIMARY KEY (sub_region_code)
);
-- ddl-end --
ALTER TABLE public."SUB_REGION" OWNER TO postgres;
-- ddl-end --

-- object: public."REGION" | type: TABLE --
DROP TABLE IF EXISTS public."REGION" CASCADE;
CREATE TABLE public."REGION" (
	region_code integer NOT NULL,
	name character varying NOT NULL,
	CONSTRAINT "REGION_pk" PRIMARY KEY (region_code)
);
-- ddl-end --
ALTER TABLE public."REGION" OWNER TO postgres;
-- ddl-end --

-- object: sub_region_fk | type: CONSTRAINT --
ALTER TABLE public."COUNTRY" DROP CONSTRAINT IF EXISTS sub_region_fk CASCADE;
ALTER TABLE public."COUNTRY" ADD CONSTRAINT sub_region_fk FOREIGN KEY (sub_region_code)
REFERENCES public."SUB_REGION" (sub_region_code) MATCH SIMPLE
ON DELETE SET NULL ON UPDATE NO ACTION;
-- ddl-end --

-- object: country_fk | type: CONSTRAINT --
ALTER TABLE public."CLIMATE_DISASTER" DROP CONSTRAINT IF EXISTS country_fk CASCADE;
ALTER TABLE public."CLIMATE_DISASTER" ADD CONSTRAINT country_fk FOREIGN KEY (country_code)
REFERENCES public."COUNTRY" (country_code) MATCH SIMPLE
ON DELETE CASCADE ON UPDATE NO ACTION;
-- ddl-end --

-- object: disaster_fk | type: CONSTRAINT --
ALTER TABLE public."CLIMATE_DISASTER" DROP CONSTRAINT IF EXISTS disaster_fk CASCADE;
ALTER TABLE public."CLIMATE_DISASTER" ADD CONSTRAINT disaster_fk FOREIGN KEY (disaster_code)
REFERENCES public."DISASTER" (disaster_code) MATCH SIMPLE
ON DELETE CASCADE ON UPDATE NO ACTION;
-- ddl-end --

-- object: region_fk | type: CONSTRAINT --
ALTER TABLE public."SUB_REGION" DROP CONSTRAINT IF EXISTS region_fk CASCADE;
ALTER TABLE public."SUB_REGION" ADD CONSTRAINT region_fk FOREIGN KEY (region_code)
REFERENCES public."REGION" (region_code) MATCH SIMPLE
ON DELETE SET NULL ON UPDATE NO ACTION;
-- ddl-end --


