-- Table: public.cart

-- DROP TABLE IF EXISTS public.cart;

CREATE TABLE IF NOT EXISTS public.cart
(
    cartid integer NOT NULL DEFAULT nextval('cart_cartid_seq'::regclass),
    datecreated date NOT NULL,
    customerid integer NOT NULL,
    CONSTRAINT cart_pkey PRIMARY KEY (cartid),
    CONSTRAINT cart_customerid_fkey FOREIGN KEY (customerid)
        REFERENCES public.customer (customerid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.cart
    OWNER to postgres;
