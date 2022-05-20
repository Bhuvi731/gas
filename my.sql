--
-- PostgreSQL database dump
--

-- Dumped from database version 13.7
-- Dumped by pg_dump version 13.7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cylindertype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cylindertype (
    id integer NOT NULL,
    type character varying(32),
    status integer,
    createdby character varying(64),
    createdat bigint,
    updatedby character varying(64),
    updatedat bigint
);


ALTER TABLE public.cylindertype OWNER TO postgres;

--
-- Name: cylindertype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cylindertype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cylindertype_id_seq OWNER TO postgres;

--
-- Name: cylindertype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cylindertype_id_seq OWNED BY public.cylindertype.id;


--
-- Name: cylinderweight; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cylinderweight (
    id integer NOT NULL,
    weight character varying(32),
    status integer,
    createdby character varying(64),
    createdat bigint,
    updatedby character varying(64),
    updatedat bigint
);


ALTER TABLE public.cylinderweight OWNER TO postgres;

--
-- Name: cylinderweight_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cylinderweight_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cylinderweight_id_seq OWNER TO postgres;

--
-- Name: cylinderweight_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cylinderweight_id_seq OWNED BY public.cylinderweight.id;


--
-- Name: feedbacks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.feedbacks (
    id integer NOT NULL,
    orderid character varying(64),
    userid character varying(64),
    vendorid character varying(64),
    vendorbranch character varying(64),
    rating integer,
    review character varying(256),
    status integer,
    createdby character varying(64),
    createdat bigint,
    updatedby character varying(64),
    updatedat bigint
);


ALTER TABLE public.feedbacks OWNER TO postgres;

--
-- Name: feedbacks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.feedbacks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.feedbacks_id_seq OWNER TO postgres;

--
-- Name: feedbacks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.feedbacks_id_seq OWNED BY public.feedbacks.id;


--
-- Name: inventory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventory (
    id integer NOT NULL,
    productid character varying(64),
    availablestock integer,
    status integer,
    createdby character varying(64),
    createdat bigint,
    updatedby character varying(64),
    updatedat bigint
);


ALTER TABLE public.inventory OWNER TO postgres;

--
-- Name: inventory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inventory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inventory_id_seq OWNER TO postgres;

--
-- Name: inventory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inventory_id_seq OWNED BY public.inventory.id;


--
-- Name: login; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.login (
    id character varying NOT NULL,
    username character varying(32),
    password character varying(32),
    usertype character varying(32)
);


ALTER TABLE public.login OWNER TO postgres;

--
-- Name: ordermanagement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ordermanagement (
    id integer NOT NULL,
    userid integer,
    deliveryaddressid integer,
    vendorid integer,
    productid character varying(64),
    quantity integer,
    status integer,
    createdby character varying(64),
    createdat bigint,
    updatedby character varying(64),
    updatedat bigint
);


ALTER TABLE public.ordermanagement OWNER TO postgres;

--
-- Name: ordermanagement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ordermanagement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ordermanagement_id_seq OWNER TO postgres;

--
-- Name: ordermanagement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ordermanagement_id_seq OWNED BY public.ordermanagement.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    vendorid character varying(64),
    cylindertypeid character varying(64),
    cylinderweightid character varying(64),
    location character varying(64),
    price double precision,
    status integer,
    createdby character varying(64),
    createdat bigint,
    updatedby character varying(64),
    updatedat bigint
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: useraddresses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.useraddresses (
    id integer NOT NULL,
    userid integer,
    name character varying(32),
    addressline1 character varying(128),
    addressline2 character varying(128),
    city character varying(128),
    landmark character varying(128),
    district character varying(128),
    state character varying(128),
    country character varying(128),
    pincode character varying(16),
    latitude double precision,
    longitude double precision,
    status integer,
    createdby character varying(64),
    createdat bigint,
    updatedby character varying(64),
    updatedat bigint
);


ALTER TABLE public.useraddresses OWNER TO postgres;

--
-- Name: useraddresses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.useraddresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.useraddresses_id_seq OWNER TO postgres;

--
-- Name: useraddresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.useraddresses_id_seq OWNED BY public.useraddresses.id;


--
-- Name: userlogins; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.userlogins (
    id integer NOT NULL,
    userid integer,
    successfullogin bigint,
    failedlogin bigint,
    invalidloginattempt integer
);


ALTER TABLE public.userlogins OWNER TO postgres;

--
-- Name: userlogins_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.userlogins_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.userlogins_id_seq OWNER TO postgres;

--
-- Name: userlogins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.userlogins_id_seq OWNED BY public.userlogins.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    firstname character varying(64),
    lastname character varying(64),
    phone character varying(50),
    email character varying(50),
    gender character varying(50),
    dateofbirth date,
    status integer,
    createdby character varying(64),
    createdat bigint,
    updatedby character varying(64),
    updatedat bigint,
    password character varying
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: vendoraddresses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vendoraddresses (
    id integer NOT NULL,
    vendorid character varying(64),
    name character varying(32),
    addressline1 character varying(128),
    addressline2 character varying(128),
    city character varying(128),
    landmark character varying(128),
    district character varying(128),
    state character varying(128),
    country character varying(128),
    pincode character varying(16),
    latitude double precision,
    longitude double precision,
    status integer,
    createdby character varying(64),
    createdat bigint,
    updatedby character varying(64),
    updatedat bigint
);


ALTER TABLE public.vendoraddresses OWNER TO postgres;

--
-- Name: vendoraddresses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vendoraddresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vendoraddresses_id_seq OWNER TO postgres;

--
-- Name: vendoraddresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vendoraddresses_id_seq OWNED BY public.vendoraddresses.id;


--
-- Name: vendors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vendors (
    id integer NOT NULL,
    businessname character varying(128),
    status integer,
    createdby character varying(64),
    createdat bigint,
    updatedby character varying(64),
    updatedat bigint
);


ALTER TABLE public.vendors OWNER TO postgres;

--
-- Name: vendors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vendors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vendors_id_seq OWNER TO postgres;

--
-- Name: vendors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vendors_id_seq OWNED BY public.vendors.id;


--
-- Name: cylindertype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cylindertype ALTER COLUMN id SET DEFAULT nextval('public.cylindertype_id_seq'::regclass);


--
-- Name: cylinderweight id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cylinderweight ALTER COLUMN id SET DEFAULT nextval('public.cylinderweight_id_seq'::regclass);


--
-- Name: feedbacks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedbacks ALTER COLUMN id SET DEFAULT nextval('public.feedbacks_id_seq'::regclass);


--
-- Name: inventory id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory ALTER COLUMN id SET DEFAULT nextval('public.inventory_id_seq'::regclass);


--
-- Name: ordermanagement id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordermanagement ALTER COLUMN id SET DEFAULT nextval('public.ordermanagement_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: useraddresses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.useraddresses ALTER COLUMN id SET DEFAULT nextval('public.useraddresses_id_seq'::regclass);


--
-- Name: userlogins id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userlogins ALTER COLUMN id SET DEFAULT nextval('public.userlogins_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: vendoraddresses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendoraddresses ALTER COLUMN id SET DEFAULT nextval('public.vendoraddresses_id_seq'::regclass);


--
-- Name: vendors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendors ALTER COLUMN id SET DEFAULT nextval('public.vendors_id_seq'::regclass);


--
-- Name: cylindertype cylindertype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cylindertype
    ADD CONSTRAINT cylindertype_pkey PRIMARY KEY (id);


--
-- Name: cylinderweight cylinderweight_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cylinderweight
    ADD CONSTRAINT cylinderweight_pkey PRIMARY KEY (id);


--
-- Name: feedbacks feedbacks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT feedbacks_pkey PRIMARY KEY (id);


--
-- Name: inventory inventory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (id);


--
-- Name: ordermanagement ordermanagement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordermanagement
    ADD CONSTRAINT ordermanagement_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: useraddresses useraddresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.useraddresses
    ADD CONSTRAINT useraddresses_pkey PRIMARY KEY (id);


--
-- Name: userlogins userlogins_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userlogins
    ADD CONSTRAINT userlogins_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: vendoraddresses vendoraddresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendoraddresses
    ADD CONSTRAINT vendoraddresses_pkey PRIMARY KEY (id);


--
-- Name: vendors vendors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendors
    ADD CONSTRAINT vendors_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

