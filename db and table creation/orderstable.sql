-- Table: public.orders

-- DROP TABLE IF EXISTS public.orders;

CREATE TABLE IF NOT EXISTS public.orders
(
    orderid integer NOT NULL DEFAULT nextval('orders_orderid_seq'::regclass),
    customerid integer NOT NULL,
    orderdate date NOT NULL,
    addressid integer NOT NULL,
    vendorcourierid integer NOT NULL,
    trackingid character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT orders_pkey PRIMARY KEY (orderid),
    CONSTRAINT orders_addressid_fkey FOREIGN KEY (addressid)
        REFERENCES public.address (addressid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT orders_customerid_fkey FOREIGN KEY (customerid)
        REFERENCES public.customer (customerid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT orders_vendorcourierid_fkey FOREIGN KEY (vendorcourierid)
        REFERENCES public.vendorcourier (vendorcourierid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.orders
    OWNER to postgres;
