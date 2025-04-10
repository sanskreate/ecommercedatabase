-- Table: public.orderedproduct

-- DROP TABLE IF EXISTS public.orderedproduct;

CREATE TABLE IF NOT EXISTS public.orderedproduct
(
    orderedproductid integer NOT NULL DEFAULT nextval('orderedproduct_orderedproductid_seq'::regclass),
    vendorproductid integer NOT NULL,
    orderid integer NOT NULL,
    quantity integer NOT NULL,
    CONSTRAINT orderedproduct_pkey PRIMARY KEY (orderedproductid),
    CONSTRAINT orderedproduct_orderid_fkey FOREIGN KEY (orderid)
        REFERENCES public.orders (orderid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT orderedproduct_vendorproductid_fkey FOREIGN KEY (vendorproductid)
        REFERENCES public.vendorproduct (vendorproductid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.orderedproduct
    OWNER to postgres;
