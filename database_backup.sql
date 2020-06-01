--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: zinfira
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO zinfira;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: zinfira
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO zinfira;

--
-- Name: users; Type: TABLE; Schema: public; Owner: zinfira
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying,
    password_hash character varying,
    password_salt character varying
);


ALTER TABLE public.users OWNER TO zinfira;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: zinfira
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO zinfira;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zinfira
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: zinfira
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: zinfira
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-06-01 16:47:19.093524	2020-06-01 16:47:19.093524
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: zinfira
--

COPY public.schema_migrations (version) FROM stdin;
20200601164450
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: zinfira
--

COPY public.users (id, email, password_hash, password_salt) FROM stdin;
1	zsafargalieva@gmail.com	$2a$12$7B5jaBFTUNyogsId4FCyT.a6yAf0YtctZG2TBKnBEclDdkQTbd7yu	$2a$12$7B5jaBFTUNyogsId4FCyT.
2	jozypants@gmail.com	$2a$12$lN1AEWFlP0h3LXM4X./jDO7X7MHnlp/IqUkHyP3vSj3DGsEdJxXVS	$2a$12$lN1AEWFlP0h3LXM4X./jDO
3	tylerbowerman@yahoo.com	$2a$12$R7mTKghp09XMO2IilhUU/OfPM7URO1wINqGQneAap3MfZ.XSUoRm6	$2a$12$R7mTKghp09XMO2IilhUU/O
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zinfira
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: zinfira
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: zinfira
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: zinfira
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

