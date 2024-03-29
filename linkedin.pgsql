--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10
-- Dumped by pg_dump version 10.10

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: account; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account (
    account_id character varying(100) NOT NULL,
    account_name character varying(100),
    account_title character varying(100),
    account_region character varying(100)
);


ALTER TABLE public.account OWNER TO postgres;

--
-- Name: education; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.education (
    account_id character varying(100) NOT NULL,
    education_institution character varying(100),
    education_title character varying(100)
);


ALTER TABLE public.education OWNER TO postgres;

--
-- Name: workplace; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.workplace (
    account_id character varying(100) NOT NULL,
    workplace1 character varying(100),
    workplace2 character varying(100)
);


ALTER TABLE public.workplace OWNER TO postgres;

--
-- Data for Name: account; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account (account_id, account_name, account_title, account_region) FROM stdin;
1234	Jack	IT	Indo
6b00ab158	Jan Meyer Saragih	Student at Institut Teknologi Bandung	West Java Province, Indonesia
767a7316a	William Halim	Student at Institut Teknologi Bandung	Indonesia
225394158	Feby Eliana	Most Outstanding Student of STEI ITB | Ex-Product Management Intern at GDP	Indonesia
805965120	Hernanta Kusuma Cakrawerdaya	Consultant at Packet Systems Indonesia	Greater Jakarta Area, Indonesia
61a1aa75	Rahmad Fadli	System Engineer at Packet Systems Indonesia	Indonesia
38302238	Prawita Hertika	VP Telecommunication Sales	Indonesia
568806141	Andini Putri Ayu	Actor Model di Model Management Group (MMG)	Greater Jakarta Area, Indonesia
675b5b91	Awal Chalik	Vice President ICT Network Management Area Jabotabek Jabar at Telkomsel	Medan Area, North Sumatera, Indonesia
54b913118	Samantha Prawira	Recruitment Officer (PT. SMART TBK)	Greater Jakarta Area, Indonesia
b7177a90	Ika Sugiarti	Manager at PT HM Sampoerna Tbk	East Java Province, Indonesia
08222a18b	Nicholaus Yosodipuro	Information System and Technology Undergraduate Student at Bandung Institute of Technology (ITB)	Greater Jakarta Area, Indonesia
3a0366145	Sergio Ryan	Information System and Technology Student at Institut Teknologi Bandung | CCNA R&S	West Java Province, Indonesia
402846142	Aldrich Valentino Halim	Final year student at Institut Teknologi Bandung	Greater Jakarta Area, Indonesia
1b052b4b	Bobby Prabowo	Android Developer Manager at Quipper	Banten Province, Indonesia
396b573a	Yuta Funase	Indonesia Country Manager at Quipper	Indonesia
7b020553	Ivonny Sualdani	Strategy Planner at Quipper	Greater Jakarta Area, Indonesia
b519927	Widyawardana Adiprawita	Lecturer at Institut Teknologi Bandung	Bandung Area, West Java, Indonesia
16ab7495	Prangki Tua	Systems Engineer at PT. Packet Systems Indonesia	Greater Jakarta Area, Indonesia
41363517a	Adani Wicaksono Mawaridi	Digital Marketing Specialist at PT. BRISK BUSI INDONESIA	Greater Jakarta Area, Indonesia
68a73016b	Vincent Siauw	Sales Manager bei IPCO Germany GmbH	Stuttgart Area, Germany
70398889	D. Baskara Putra	Brand Manager at Double Deer & Father of BagiKata.	Banten Province, Indonesia
a0babb130	Abigail Marcia	YLI National Wave 11 by McKinsey & Co	Greater Jakarta Area, Indonesia
a798b2142	Nezela Ardiani	Assistant Manager, Financial Planning & Analysis	Greater Jakarta Area, Indonesia
tandicky30@gmail.com	Dicky Tan	Student at Institut Teknologi Bandung	Bandung Area, West Java, Indonesia
t.williamhalim@gmail.com	William Halim	Student at Institut Teknologi Bandung	Indonesia
education	\N	\N	\N
\.


--
-- Data for Name: education; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.education (account_id, education_institution, education_title) FROM stdin;
1234	ITB	Bachelor of Engineering
6b00ab158	Institut Teknologi Bandung	Informatics
767a7316a	Institut Teknologi Bandung (ITB)	Bachelor of Engineering - BE
225394158	Institut Teknologi Bandung	Bachelor of Engineering - BE
805965120	Telkom University	Bachelor's degree
61a1aa75	Universitas Gunadarma	Magister Teknik (M.T.)
568806141	Boston University	Bachelor's degree
38302238	University of Indonesia	bachelor
675b5b91	Institut Teknologi Bandung (ITB)	Master's degree
b7177a90	Unair	Universitas airlangga Surabaya
08222a18b	Institut Teknologi Bandung (ITB)	Bachelor's degree
1b052b4b	\N	\N
3a0366145	Institut Teknologi Bandung	Bachelor of Engineering - BE
b519927	Institut Teknologi Bandung (ITB)	Dr.
16ab7495	Universitas Bina Nusantara (Binus)	Bachelor's degree
41363517a	Institut Ilmu Sosial dan llmu Politik Jakarta	Bachelor of Applied Science - BASc
68a73016b	Karlsruher Institut für Technologie (KIT)	Diplom-Ingenieur
70398889	Universitas Indonesia (UI)	S.Sos
a0babb130	Institut Teknologi Bandung (ITB)	Bachelor of Food Engineering
a798b2142	Institut Teknologi Sepuluh Nopember Surabaya	Undergraduate Student
email	\N	\N
tandicky30@gmail.com	Institut Teknologi Bandung	Undergraduate
t.williamhalim@gmail.com	Institut Teknologi Bandung (ITB)	Bachelor of Engineering - BE
\.


--
-- Data for Name: workplace; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.workplace (account_id, workplace1, workplace2) FROM stdin;
1234	Binus	ITB
6b00ab158	Comlabs-USDI ITB	Institut Teknologi Bandung
767a7316a	Institut Teknologi Bandung	(ITB)
225394158	Inkubator IT HMIF	Institut Teknologi Bandung
805965120	Packet Systems Indonesia	Telkom University
61a1aa75	Packet Systems Indonesia	Universitas Gunadarma
54b913118	PT SMART Tbk	Universitas Tarumanagara
b7177a90	PT HM Sampoerna Tbk	Unair
1b052b4b	Quipper	Institut Teknologi Bandung
3a0366145	Self-Employed	Institut Teknologi Bandung
b519927	Centrums, ITB	Institut Teknologi Bandung
16ab7495	PT. Packet Systems Indonesia	Universitas Bina Nusantara
41363517a	PT. BRISK BUSI INDONESIA	Institut Ilmu Sosial dan llmu
68a73016b	IPCO AB	Karlsruher Institut für
70398889	Double Deer	Universitas Indonesia (UI)
a0babb130	Unilever	Institut Teknologi Bandung
a798b2142	Unilever	Institut Teknologi Sepuluh
t.williamhalim@gmail.com	Institut Teknologi Bandung	(ITB)
tandicky30@gmail.com	Lnpoint	Institut Teknologi Bandung
\.


--
-- Name: account account_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_pkey PRIMARY KEY (account_id);


--
-- Name: education education_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.education
    ADD CONSTRAINT education_pkey PRIMARY KEY (account_id);


--
-- Name: workplace workplace_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workplace
    ADD CONSTRAINT workplace_pkey PRIMARY KEY (account_id);


--
-- PostgreSQL database dump complete
--

