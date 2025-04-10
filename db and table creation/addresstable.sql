-- Table: public.address

-- DROP TABLE IF EXISTS public.address;

CREATE TABLE IF NOT EXISTS public.address
(
    addressid integer NOT NULL DEFAULT nextval('address_addressid_seq'::regclass),
    houseno character varying(255) COLLATE pg_catalog."default" NOT NULL,
    street integer NOT NULL,
    customerid integer NOT NULL,
    zipcodeid integer NOT NULL,
    area character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT address_pkey PRIMARY KEY (addressid),
    CONSTRAINT address_customerid_fkey FOREIGN KEY (customerid)
        REFERENCES public.customer (customerid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT address_zipcodeid_fkey FOREIGN KEY (zipcodeid)
        REFERENCES public.zipcode (zipcodeid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.address
    OWNER to postgres;
