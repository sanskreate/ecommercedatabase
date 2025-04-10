-- Table: public.product

-- DROP TABLE IF EXISTS public.product;

CREATE TABLE IF NOT EXISTS public.product
(
    productid integer NOT NULL DEFAULT nextval('product_productid_seq'::regclass),
    productname character varying(255) COLLATE pg_catalog."default" NOT NULL,
    categoryid integer NOT NULL,
    CONSTRAINT product_pkey PRIMARY KEY (productid),
    CONSTRAINT product_categoryid_fkey FOREIGN KEY (categoryid)
        REFERENCES public.category (categoryid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.product
    OWNER to postgres;
