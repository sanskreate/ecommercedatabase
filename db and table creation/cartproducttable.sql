-- Table: public.cartproduct

-- DROP TABLE IF EXISTS public.cartproduct;

CREATE TABLE IF NOT EXISTS public.cartproduct
(
    cartproductid integer NOT NULL DEFAULT nextval('cartproduct_cartproductid_seq'::regclass),
    vendorproductid integer NOT NULL,
    quantity integer NOT NULL,
    cartid integer NOT NULL,
    CONSTRAINT cartproduct_pkey PRIMARY KEY (cartproductid),
    CONSTRAINT cartproduct_cartid_fkey FOREIGN KEY (cartid)
        REFERENCES public.cart (cartid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT cartproduct_vendorproductid_fkey FOREIGN KEY (vendorproductid)
        REFERENCES public.vendorproduct (vendorproductid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.cartproduct
    OWNER to postgres;
