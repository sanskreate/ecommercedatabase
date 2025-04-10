-- Table: public.vendorproduct

-- DROP TABLE IF EXISTS public.vendorproduct;

CREATE TABLE IF NOT EXISTS public.vendorproduct
(
    vendorproductid integer NOT NULL DEFAULT nextval('vendorproduct_vendorproductid_seq'::regclass),
    vendorid integer NOT NULL,
    productid integer NOT NULL,
    price numeric(19,2) NOT NULL,
    quantity integer NOT NULL,
    description text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT vendorproduct_pkey PRIMARY KEY (vendorproductid),
    CONSTRAINT vendorproduct_productid_fkey FOREIGN KEY (productid)
        REFERENCES public.product (productid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT vendorproduct_vendorid_fkey FOREIGN KEY (vendorid)
        REFERENCES public.vendor (vendorid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.vendorproduct
    OWNER to postgres;
