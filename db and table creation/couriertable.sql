-- Table: public.courier

-- DROP TABLE IF EXISTS public.courier;

CREATE TABLE IF NOT EXISTS public.courier
(
    courierid integer NOT NULL DEFAULT nextval('courier_courierid_seq'::regclass),
    name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    contact character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT courier_pkey PRIMARY KEY (courierid)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.courier
    OWNER to postgres;
