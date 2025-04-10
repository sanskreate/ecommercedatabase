-- Table: public.vendorcourier

-- DROP TABLE IF EXISTS public.vendorcourier;

CREATE TABLE IF NOT EXISTS public.vendorcourier
(
    vendorcourierid integer NOT NULL DEFAULT nextval('vendorcourier_vendorcourierid_seq'::regclass),
    vendorid integer NOT NULL,
    courierid integer NOT NULL,
    CONSTRAINT vendorcourier_pkey PRIMARY KEY (vendorcourierid),
    CONSTRAINT vendorcourier_courierid_fkey FOREIGN KEY (courierid)
        REFERENCES public.courier (courierid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT vendorcourier_vendorid_fkey FOREIGN KEY (vendorid)
        REFERENCES public.vendor (vendorid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.vendorcourier
    OWNER to postgres;
