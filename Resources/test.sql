-- Table: public.DIGIMON

-- DROP TABLE public."DIGIMON";

CREATE TABLE IF NOT EXISTS public."DIGIMON"
(
    "NUMBER" integer NOT NULL,
    "DIGIMON" character varying(30) COLLATE pg_catalog."default",
    "STAGE" character varying(30) COLLATE pg_catalog."default",
    "TYPE" character varying(30) COLLATE pg_catalog."default",
    "ATTRIBUTE" character varying(30) COLLATE pg_catalog."default",
    "MEMORY" integer,
    "EQUIP_SLOTS" integer,
	"LV50_HP" integer,
    "LV50_SP" integer,
    "LV50_ATK" integer,
    "LV50_DEF" integer,
    "LV50_INT" integer,
    "LV50_SPD" integer,
    CONSTRAINT "DIGIMON_pkey" PRIMARY KEY ("NUMBER")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."DIGIMON"
    OWNER to postgres;