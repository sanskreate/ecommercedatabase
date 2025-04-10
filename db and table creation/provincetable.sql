-- Table: public.province

-- DROP TABLE IF EXISTS public.province;

CREATE TABLE IF NOT EXISTS public.province
(
    provinceid integer NOT NULL DEFAULT nextval('province_provinceid_seq'::regclass),
    provincename character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT province_pkey PRIMARY KEY (provinceid)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.province
    OWNER to postgres;
