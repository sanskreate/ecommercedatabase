-- Table: public.city

-- DROP TABLE IF EXISTS public.city;

CREATE TABLE IF NOT EXISTS public.city
(
    cityid integer NOT NULL DEFAULT nextval('city_cityid_seq'::regclass),
    cityname character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT city_pkey PRIMARY KEY (cityid)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.city
    OWNER to postgres;
