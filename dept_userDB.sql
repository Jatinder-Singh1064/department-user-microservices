--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

-- Started on 2022-07-17 16:14:02

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
-- TOC entry 209 (class 1259 OID 18039)
-- Name: department; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.department (
    id bigint NOT NULL,
    address character varying(255),
    code character varying(255),
    name character varying(255)
);


ALTER TABLE public.department OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 18046)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 18047)
-- Name: user_tbl; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_tbl (
    id bigint NOT NULL,
    department_id bigint,
    email character varying(255),
    first_name character varying(255),
    last_name character varying(255)
);


ALTER TABLE public.user_tbl OWNER TO postgres;

--
-- TOC entry 3311 (class 0 OID 18039)
-- Dependencies: 209
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.department (id, address, code, name) FROM stdin;
1	25 Parkway Forest Drive	IT-006	IT
3	40 Forest Manor Drive	HR-008	HR
5	80 Humber Drive	FN-020	Finance
\.


--
-- TOC entry 3313 (class 0 OID 18047)
-- Dependencies: 211
-- Data for Name: user_tbl; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_tbl (id, department_id, email, first_name, last_name) FROM stdin;
2	1	jsh@gmail.com	Jatidner	Singh
4	3	dvm@gmail.com	David	Miller
6	5	tds@gmail.com	Tedd	Stuart
\.


--
-- TOC entry 3319 (class 0 OID 0)
-- Dependencies: 210
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 6, true);


--
-- TOC entry 3169 (class 2606 OID 18045)
-- Name: department department_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (id);


--
-- TOC entry 3171 (class 2606 OID 18053)
-- Name: user_tbl user_tbl_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_tbl
    ADD CONSTRAINT user_tbl_pkey PRIMARY KEY (id);


-- Completed on 2022-07-17 16:14:03

--
-- PostgreSQL database dump complete
--

