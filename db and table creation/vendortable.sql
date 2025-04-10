-- Table: public.vendor

-- DROP TABLE IF EXISTS public.vendor;

CREATE TABLE IF NOT EXISTS public.vendor
(
    vendorid integer NOT NULL DEFAULT nextval('vendor_vendorid_seq'::regclass),
    name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    address text COLLATE pg_catalog."default" NOT NULL,
    email character varying(255) COLLATE pg_catalog."default" NOT NULL,
    password character varying(255) COLLATE pg_catalog."default" NOT NULL,
    contact character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT vendor_pkey PRIMARY KEY (vendorid)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.vendor
    OWNER to postgres;
