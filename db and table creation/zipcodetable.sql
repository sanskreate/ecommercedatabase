-- Table: public.zipcode

-- DROP TABLE IF EXISTS public.zipcode;

CREATE TABLE IF NOT EXISTS public.zipcode
(
    zipcodeid integer NOT NULL DEFAULT nextval('zipcode_zipcodeid_seq'::regclass),
    cityid integer NOT NULL,
    provinceid integer NOT NULL,
    countryid integer NOT NULL,
    CONSTRAINT zipcode_pkey PRIMARY KEY (zipcodeid),
    CONSTRAINT zipcode_cityid_fkey FOREIGN KEY (cityid)
        REFERENCES public.city (cityid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT zipcode_countryid_fkey FOREIGN KEY (countryid)
        REFERENCES public.country (countryid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT zipcode_provinceid_fkey FOREIGN KEY (provinceid)
        REFERENCES public.province (provinceid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.zipcode
    OWNER to postgres;
