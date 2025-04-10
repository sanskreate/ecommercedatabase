-- Table: public.review

-- DROP TABLE IF EXISTS public.review;

CREATE TABLE IF NOT EXISTS public.review
(
    reviewid integer NOT NULL DEFAULT nextval('review_reviewid_seq'::regclass),
    rating smallint NOT NULL,
    customerid integer NOT NULL,
    orderedproductid integer NOT NULL,
    comment text COLLATE pg_catalog."default",
    CONSTRAINT review_pkey PRIMARY KEY (reviewid),
    CONSTRAINT review_customerid_fkey FOREIGN KEY (customerid)
        REFERENCES public.customer (customerid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT review_orderedproductid_fkey FOREIGN KEY (orderedproductid)
        REFERENCES public.orderedproduct (orderedproductid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.review
    OWNER to postgres;
