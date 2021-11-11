-- Table: public.DIGIMON

DROP TABLE public."MOVES";

CREATE TABLE IF NOT EXISTS public."MOVES"
(
    "NUMBER" integer NOT NULL,
    "MOVE_NAME" character varying(30) COLLATE pg_catalog."default",
    "SP_COST" character varying(30) COLLATE pg_catalog."default",
    "TYPE" character varying(30) COLLATE pg_catalog."default",
    "POWER" character varying(30) COLLATE pg_catalog."default",
    "ATTRIBUTE" character varying(30) COLLATE pg_catalog."default",
    "INHERITABLE" integer NOT NULL CHECK ("INHERITABLE" = 0 OR "INHERITABLE" = 1),
	"DESCRIPTION" character varying(200) COLLATE pg_catalog."default",
	
    CONSTRAINT "MOVES_pkey" PRIMARY KEY ("NUMBER")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."MOVES"
    OWNER to postgres;
	
	
	