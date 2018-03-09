--
-- PostgreSQL database dump
--

-- Dumped from database version 9.0.4
-- Dumped by pg_dump version 9.0.4
-- Started on 2013-11-27 23:05:27

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- TOC entry 348 (class 2612 OID 11574)
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: postgres
--

CREATE OR REPLACE PROCEDURAL LANGUAGE plpgsql;


ALTER PROCEDURAL LANGUAGE plpgsql OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 49 (class 1255 OID 447680)
-- Dependencies: 5
-- Name: armor(bytea); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION armor(bytea) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/pgcrypto', 'pg_armor';


ALTER FUNCTION public.armor(bytea) OWNER TO postgres;

--
-- TOC entry 22 (class 1255 OID 447653)
-- Dependencies: 5
-- Name: crypt(text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION crypt(text, text) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/pgcrypto', 'pg_crypt';


ALTER FUNCTION public.crypt(text, text) OWNER TO postgres;

--
-- TOC entry 50 (class 1255 OID 447681)
-- Dependencies: 5
-- Name: dearmor(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dearmor(text) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/pgcrypto', 'pg_dearmor';


ALTER FUNCTION public.dearmor(text) OWNER TO postgres;

--
-- TOC entry 26 (class 1255 OID 447657)
-- Dependencies: 5
-- Name: decrypt(bytea, bytea, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION decrypt(bytea, bytea, text) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/pgcrypto', 'pg_decrypt';


ALTER FUNCTION public.decrypt(bytea, bytea, text) OWNER TO postgres;

--
-- TOC entry 28 (class 1255 OID 447659)
-- Dependencies: 5
-- Name: decrypt_iv(bytea, bytea, bytea, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION decrypt_iv(bytea, bytea, bytea, text) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/pgcrypto', 'pg_decrypt_iv';


ALTER FUNCTION public.decrypt_iv(bytea, bytea, bytea, text) OWNER TO postgres;

--
-- TOC entry 15 (class 1255 OID 447649)
-- Dependencies: 5
-- Name: digest(text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION digest(text, text) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/pgcrypto', 'pg_digest';


ALTER FUNCTION public.digest(text, text) OWNER TO postgres;

--
-- TOC entry 19 (class 1255 OID 447650)
-- Dependencies: 5
-- Name: digest(bytea, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION digest(bytea, text) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/pgcrypto', 'pg_digest';


ALTER FUNCTION public.digest(bytea, text) OWNER TO postgres;

--
-- TOC entry 25 (class 1255 OID 447656)
-- Dependencies: 5
-- Name: encrypt(bytea, bytea, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION encrypt(bytea, bytea, text) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/pgcrypto', 'pg_encrypt';


ALTER FUNCTION public.encrypt(bytea, bytea, text) OWNER TO postgres;

--
-- TOC entry 27 (class 1255 OID 447658)
-- Dependencies: 5
-- Name: encrypt_iv(bytea, bytea, bytea, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION encrypt_iv(bytea, bytea, bytea, text) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/pgcrypto', 'pg_encrypt_iv';


ALTER FUNCTION public.encrypt_iv(bytea, bytea, bytea, text) OWNER TO postgres;

--
-- TOC entry 29 (class 1255 OID 447660)
-- Dependencies: 5
-- Name: gen_random_bytes(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION gen_random_bytes(integer) RETURNS bytea
    LANGUAGE c STRICT
    AS '$libdir/pgcrypto', 'pg_random_bytes';


ALTER FUNCTION public.gen_random_bytes(integer) OWNER TO postgres;

--
-- TOC entry 23 (class 1255 OID 447654)
-- Dependencies: 5
-- Name: gen_salt(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION gen_salt(text) RETURNS text
    LANGUAGE c STRICT
    AS '$libdir/pgcrypto', 'pg_gen_salt';


ALTER FUNCTION public.gen_salt(text) OWNER TO postgres;

--
-- TOC entry 24 (class 1255 OID 447655)
-- Dependencies: 5
-- Name: gen_salt(text, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION gen_salt(text, integer) RETURNS text
    LANGUAGE c STRICT
    AS '$libdir/pgcrypto', 'pg_gen_salt_rounds';


ALTER FUNCTION public.gen_salt(text, integer) OWNER TO postgres;

--
-- TOC entry 20 (class 1255 OID 447651)
-- Dependencies: 5
-- Name: hmac(text, text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION hmac(text, text, text) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/pgcrypto', 'pg_hmac';


ALTER FUNCTION public.hmac(text, text, text) OWNER TO postgres;

--
-- TOC entry 21 (class 1255 OID 447652)
-- Dependencies: 5
-- Name: hmac(bytea, bytea, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION hmac(bytea, bytea, text) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/pgcrypto', 'pg_hmac';


ALTER FUNCTION public.hmac(bytea, bytea, text) OWNER TO postgres;

--
-- TOC entry 48 (class 1255 OID 447679)
-- Dependencies: 5
-- Name: pgp_key_id(bytea); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION pgp_key_id(bytea) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/pgcrypto', 'pgp_key_id_w';


ALTER FUNCTION public.pgp_key_id(bytea) OWNER TO postgres;

--
-- TOC entry 42 (class 1255 OID 447673)
-- Dependencies: 5
-- Name: pgp_pub_decrypt(bytea, bytea); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION pgp_pub_decrypt(bytea, bytea) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/pgcrypto', 'pgp_pub_decrypt_text';


ALTER FUNCTION public.pgp_pub_decrypt(bytea, bytea) OWNER TO postgres;

--
-- TOC entry 44 (class 1255 OID 447675)
-- Dependencies: 5
-- Name: pgp_pub_decrypt(bytea, bytea, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION pgp_pub_decrypt(bytea, bytea, text) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/pgcrypto', 'pgp_pub_decrypt_text';


ALTER FUNCTION public.pgp_pub_decrypt(bytea, bytea, text) OWNER TO postgres;

--
-- TOC entry 46 (class 1255 OID 447677)
-- Dependencies: 5
-- Name: pgp_pub_decrypt(bytea, bytea, text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION pgp_pub_decrypt(bytea, bytea, text, text) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/pgcrypto', 'pgp_pub_decrypt_text';


ALTER FUNCTION public.pgp_pub_decrypt(bytea, bytea, text, text) OWNER TO postgres;

--
-- TOC entry 43 (class 1255 OID 447674)
-- Dependencies: 5
-- Name: pgp_pub_decrypt_bytea(bytea, bytea); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION pgp_pub_decrypt_bytea(bytea, bytea) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/pgcrypto', 'pgp_pub_decrypt_bytea';


ALTER FUNCTION public.pgp_pub_decrypt_bytea(bytea, bytea) OWNER TO postgres;

--
-- TOC entry 45 (class 1255 OID 447676)
-- Dependencies: 5
-- Name: pgp_pub_decrypt_bytea(bytea, bytea, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION pgp_pub_decrypt_bytea(bytea, bytea, text) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/pgcrypto', 'pgp_pub_decrypt_bytea';


ALTER FUNCTION public.pgp_pub_decrypt_bytea(bytea, bytea, text) OWNER TO postgres;

--
-- TOC entry 47 (class 1255 OID 447678)
-- Dependencies: 5
-- Name: pgp_pub_decrypt_bytea(bytea, bytea, text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION pgp_pub_decrypt_bytea(bytea, bytea, text, text) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/pgcrypto', 'pgp_pub_decrypt_bytea';


ALTER FUNCTION public.pgp_pub_decrypt_bytea(bytea, bytea, text, text) OWNER TO postgres;

--
-- TOC entry 38 (class 1255 OID 447669)
-- Dependencies: 5
-- Name: pgp_pub_encrypt(text, bytea); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION pgp_pub_encrypt(text, bytea) RETURNS bytea
    LANGUAGE c STRICT
    AS '$libdir/pgcrypto', 'pgp_pub_encrypt_text';


ALTER FUNCTION public.pgp_pub_encrypt(text, bytea) OWNER TO postgres;

--
-- TOC entry 40 (class 1255 OID 447671)
-- Dependencies: 5
-- Name: pgp_pub_encrypt(text, bytea, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION pgp_pub_encrypt(text, bytea, text) RETURNS bytea
    LANGUAGE c STRICT
    AS '$libdir/pgcrypto', 'pgp_pub_encrypt_text';


ALTER FUNCTION public.pgp_pub_encrypt(text, bytea, text) OWNER TO postgres;

--
-- TOC entry 39 (class 1255 OID 447670)
-- Dependencies: 5
-- Name: pgp_pub_encrypt_bytea(bytea, bytea); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION pgp_pub_encrypt_bytea(bytea, bytea) RETURNS bytea
    LANGUAGE c STRICT
    AS '$libdir/pgcrypto', 'pgp_pub_encrypt_bytea';


ALTER FUNCTION public.pgp_pub_encrypt_bytea(bytea, bytea) OWNER TO postgres;

--
-- TOC entry 41 (class 1255 OID 447672)
-- Dependencies: 5
-- Name: pgp_pub_encrypt_bytea(bytea, bytea, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION pgp_pub_encrypt_bytea(bytea, bytea, text) RETURNS bytea
    LANGUAGE c STRICT
    AS '$libdir/pgcrypto', 'pgp_pub_encrypt_bytea';


ALTER FUNCTION public.pgp_pub_encrypt_bytea(bytea, bytea, text) OWNER TO postgres;

--
-- TOC entry 34 (class 1255 OID 447665)
-- Dependencies: 5
-- Name: pgp_sym_decrypt(bytea, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION pgp_sym_decrypt(bytea, text) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/pgcrypto', 'pgp_sym_decrypt_text';


ALTER FUNCTION public.pgp_sym_decrypt(bytea, text) OWNER TO postgres;

--
-- TOC entry 36 (class 1255 OID 447667)
-- Dependencies: 5
-- Name: pgp_sym_decrypt(bytea, text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION pgp_sym_decrypt(bytea, text, text) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/pgcrypto', 'pgp_sym_decrypt_text';


ALTER FUNCTION public.pgp_sym_decrypt(bytea, text, text) OWNER TO postgres;

--
-- TOC entry 35 (class 1255 OID 447666)
-- Dependencies: 5
-- Name: pgp_sym_decrypt_bytea(bytea, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION pgp_sym_decrypt_bytea(bytea, text) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/pgcrypto', 'pgp_sym_decrypt_bytea';


ALTER FUNCTION public.pgp_sym_decrypt_bytea(bytea, text) OWNER TO postgres;

--
-- TOC entry 37 (class 1255 OID 447668)
-- Dependencies: 5
-- Name: pgp_sym_decrypt_bytea(bytea, text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION pgp_sym_decrypt_bytea(bytea, text, text) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/pgcrypto', 'pgp_sym_decrypt_bytea';


ALTER FUNCTION public.pgp_sym_decrypt_bytea(bytea, text, text) OWNER TO postgres;

--
-- TOC entry 30 (class 1255 OID 447661)
-- Dependencies: 5
-- Name: pgp_sym_encrypt(text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION pgp_sym_encrypt(text, text) RETURNS bytea
    LANGUAGE c STRICT
    AS '$libdir/pgcrypto', 'pgp_sym_encrypt_text';


ALTER FUNCTION public.pgp_sym_encrypt(text, text) OWNER TO postgres;

--
-- TOC entry 32 (class 1255 OID 447663)
-- Dependencies: 5
-- Name: pgp_sym_encrypt(text, text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION pgp_sym_encrypt(text, text, text) RETURNS bytea
    LANGUAGE c STRICT
    AS '$libdir/pgcrypto', 'pgp_sym_encrypt_text';


ALTER FUNCTION public.pgp_sym_encrypt(text, text, text) OWNER TO postgres;

--
-- TOC entry 31 (class 1255 OID 447662)
-- Dependencies: 5
-- Name: pgp_sym_encrypt_bytea(bytea, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION pgp_sym_encrypt_bytea(bytea, text) RETURNS bytea
    LANGUAGE c STRICT
    AS '$libdir/pgcrypto', 'pgp_sym_encrypt_bytea';


ALTER FUNCTION public.pgp_sym_encrypt_bytea(bytea, text) OWNER TO postgres;

--
-- TOC entry 33 (class 1255 OID 447664)
-- Dependencies: 5
-- Name: pgp_sym_encrypt_bytea(bytea, text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION pgp_sym_encrypt_bytea(bytea, text, text) RETURNS bytea
    LANGUAGE c STRICT
    AS '$libdir/pgcrypto', 'pgp_sym_encrypt_bytea';


ALTER FUNCTION public.pgp_sym_encrypt_bytea(bytea, text, text) OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 1543 (class 1259 OID 831456)
-- Dependencies: 5
-- Name: emailtemplate; Type: TABLE; Schema: public; Owner: mdsnapshotsdba; Tablespace: 
--

CREATE TABLE emailtemplate (
    template_code character varying(20) NOT NULL,
    descriptions text,
    created_by text,
    created_date timestamp with time zone,
    template_html text,
    email_subject text,
    email_from text,
    email_from_name text
);


CREATE TABLE site_user_invites
(
  userid text NOT NULL,
  invitee_email_address text NOT NULL,
  invitee_code character varying(30),
  CONSTRAINT pk_user_invites PRIMARY KEY (userid, invitee_email_address),
  CONSTRAINT fk_site_user_invites FOREIGN KEY (userid)
      REFERENCES site_user (userid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);
ALTER TABLE site_user_invites OWNER TO mdsnapshotsdba;
GRANT ALL ON TABLE site_user_invites TO mdsnapshotsdba;
GRANT ALL ON TABLE site_user_invites TO mdsnapshotsdbappuser;


CREATE TABLE reference_data
(
  ref_type text NOT NULL,
  ref_code text NOT NULL,
  ref_value text,
  CONSTRAINT pk_reference_data PRIMARY KEY (ref_type, ref_code)
);
ALTER TABLE reference_data OWNER TO mdsnapshotsdba;
GRANT ALL ON TABLE reference_data TO mdsnapshotsdba;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE reference_data TO mdsnapshotsdbappuser;



ALTER TABLE public.emailtemplate OWNER TO mdsnapshotsdba;

--
-- TOC entry 1540 (class 1259 OID 447682)
-- Dependencies: 5
-- Name: seq_testimonials; Type: SEQUENCE; Schema: public; Owner: mdsnapshotsdba
--

CREATE SEQUENCE seq_testimonials
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_testimonials OWNER TO mdsnapshotsdba;

--
-- TOC entry 1836 (class 0 OID 0)
-- Dependencies: 1540
-- Name: seq_testimonials; Type: SEQUENCE SET; Schema: public; Owner: mdsnapshotsdba
--

SELECT pg_catalog.setval('seq_testimonials', 31, true);


--
-- TOC entry 1542 (class 1259 OID 575217)
-- Dependencies: 1821 5
-- Name: siteUser; Type: TABLE; Schema: public; Owner: mdsnapshotsdba; Tablespace: 
--

CREATE TABLE "siteUser" (
    userid text NOT NULL,
    email_address text,
    passcode text,
    signup_date timestamp with time zone,
    signup_ipaddress text,
    last_login timestamp with time zone,
    date_activated timestamp with time zone,
    user_status character varying(20),
    activation_code character varying(30),
    authorized_albums text,
    admin_invited boolean DEFAULT false
);


ALTER TABLE public."siteUser" OWNER TO mdsnapshotsdba;

--
-- TOC entry 1541 (class 1259 OID 447684)
-- Dependencies: 5
-- Name: testimonials; Type: TABLE; Schema: public; Owner: mdsnapshotsdba; Tablespace: 
--

CREATE TABLE testimonials (
    testimonial_id bigint NOT NULL,
    email_address text,
    first_name text,
    last_name text,
    message text,
    social_media_acct text,
    url_address text,
    browser_info text,
    date_created timestamp with time zone,
    ip_address text,
    update_date timestamp with time zone
);


ALTER TABLE public.testimonials OWNER TO mdsnapshotsdba;

--
-- TOC entry 1830 (class 0 OID 831456)
-- Dependencies: 1543
-- Data for Name: emailtemplate; Type: TABLE DATA; Schema: public; Owner: mdsnapshotsdba
--



--
-- TOC entry 1829 (class 0 OID 575217)
-- Dependencies: 1542
-- Data for Name: siteUser; Type: TABLE DATA; Schema: public; Owner: mdsnapshotsdba
--



--
-- TOC entry 1828 (class 0 OID 447684)
-- Dependencies: 1541
-- Data for Name: testimonials; Type: TABLE DATA; Schema: public; Owner: mdsnapshotsdba
--

INSERT INTO testimonials VALUES (2, 'sam_101604@yahoo.com.ph', 'flora', 'dela paz', 'Good Job!!! so nice! ||keep it up and more pictures to come :)', 'https://www.facebook.com/floradp', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', '2013-07-26 09:18:30.487-07', '112.198.79.147', NULL);
INSERT INTO testimonials VALUES (4, 'arianne.copada@yahoo.ca', 'Arianne ', 'Quintos', 'awesome job kuya!! you are one heck of a photographer. congrats and goodluck to you!!! god bless, keep on rockin''!!! ', '', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', '2013-07-26 11:41:32.043-07', '208.181.169.178', NULL);
INSERT INTO testimonials VALUES (5, 'karla_tots@yahoo.com', 'K', 'O', '"There are always two people in every picture:  the photographer and the viewer. " ~Ansel Adams||Congratulations and keep up the good work!||', '', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.51.22 (KHTML, like Gecko) Version/5.1.1 Safari/534.51.22', '2013-07-27 11:36:17.093-07', '70.75.193.39', NULL);
INSERT INTO testimonials VALUES (6, 'jenifrancisco@yahoo.com', 'Jen', 'Francisco', 'Hi Kuya Randy,||Great eyes.. great shots!, i love your photos.. Hope you can do more photos when your here in Philippines!||', '', '', 'Mozilla/5.0 (Windows NT 6.1; rv:22.0) Gecko/20100101 Firefox/22.0', '2013-07-28 21:14:51.529-07', '121.127.13.35', NULL);
INSERT INTO testimonials VALUES (7, 'Paulasamuel24@yahoo.com', 'Paula', 'Samuel', ' Great Captures! You are one Great Photographer kuya Randy! :)', '', '', 'Mozilla/5.0 (Windows NT 5.1; rv:22.0) Gecko/20100101 Firefox/22.0', '2013-07-29 18:39:32.834-07', '121.127.13.35', NULL);
INSERT INTO testimonials VALUES (8, 'terenced02@yahoo.com', 'Terence', 'Dequina', 'Keep it bro, fun is just around the corner :)', '', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', '2013-08-02 09:01:26.438-07', '112.209.55.151', NULL);
INSERT INTO testimonials VALUES (9, 'kennethtaganna@yahoo.com', 'GSM', 'Panday', 'Congrats bro! Have fun. More clients to come. God Bless!', '', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', '2013-08-04 04:59:01.039-07', '114.108.237.30', NULL);
INSERT INTO testimonials VALUES (11, 'Benzhr@yahoo.ca', 'Benzh', 'San Juan', 'Amazing,Very PROFESSIONAL,EXCEPTIONAL,PHENOMENAL,INCREDIBLE,FANTASTIC...', '', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', '2013-08-10 19:49:37.921-07', '96.49.67.252', NULL);
INSERT INTO testimonials VALUES (12, 'jirehmary@yahoo.ca', 'mary', 'octavio', 'nice photos kuya! goodluck po and God bless!', '', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', '2013-08-17 20:54:14.698-07', '75.159.216.60', NULL);
INSERT INTO testimonials VALUES (13, 'jeckyjekyjecky@yahoo.com', 'jeck', 'jeckyjeckyjecky', 'Superb!!!!|Keep up the best shots!|', '', '', 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.62 Safari/537.36', '2013-09-02 22:10:13.719-07', '207.216.21.38', NULL);
INSERT INTO testimonials VALUES (14, 'pastellgear@yahoo.com', 'Michelle', 'Ong', 'Very inspiring captures, very professional.  Keep it up!  God bless.', '', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', '2013-09-12 17:20:32.732-07', '203.190.71.157', NULL);
INSERT INTO testimonials VALUES (15, 'j.vee@hotmail.ca', 'Jill', 'Vivo', 'The first time I saw the photos, I was smiling the whole time. I loved it! Kuya Randy captured everything perfectly. He is an amazing photographer. He is always open to ideas and even suggestion of his models too.  I love how comfortable I am while working with him. He will really make you comfortable and makes you confident while posing for the camera. He will give you advices too on how to make your shots look better, like when it comes to getting better angles... :). I will do another project with him because I am  really satisfied with his work. A great photographer that makes quality photos at a reasonable price too! What else can you ask for? :) thanks again kuya Randy for these great photos :)', 'Bluegadyet', '', 'Mozilla/5.0 (iPad; CPU OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Mobile/10B329 [FBAN/FBIOS;FBAV/6.4;FBBV/290891;FBDV/iPad2,5;FBMD/iPad;FBSN/iPhone OS;FBSV/6.1.3;FBSS/1; FBCR/;FBID/tablet;FBLC/en_US;FBOP/1]', '2013-09-16 18:59:56.797-07', '24.86.125.90', NULL);
INSERT INTO testimonials VALUES (17, 'melannie_28@yahoo.com', 'Melannie', 'Tamayo', 'Superb!!! Awesome shots and effects!! #lovelove', 'https://www.facebook.com/melannie.tamayo.7', '', 'Mozilla/5.0 (Windows NT 5.1; rv:22.0) Gecko/20100101 Firefox/22.0', '2013-09-18 08:12:41.524-07', '112.209.60.202', NULL);
INSERT INTO testimonials VALUES (18, 'everiathing@gmail.com', 'Jackie', 'Diy', 'This age shows an abundance of technological fields, digital art, visual art disciplines, etc. Amidst the growing challenges, photographers are among those who always keep up with the trends and technology and still be able to maintain a good eye for beauty! Such is the difference that Randy makes. Thanks so much for the great photos and for the awesome professionalism! Thanks for being so much fun to talk to and work with! See you again at the next events of eveRIAthing and ReyFort Media Group!', 'fb/yt/twitter:  @everiathing  and also @riajademusic', 'www.everiathing.com', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:23.0) Gecko/20100101 Firefox/23.0', '2013-09-20 14:24:20.587-07', '70.69.40.2', NULL);
INSERT INTO testimonials VALUES (19, 'mannynoelabuel@gmail.com', 'Manny', 'Noel', 'Keep up the good work! You''ve got great skills!', '', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', '2013-09-22 22:13:16.612-07', '66.183.193.6', NULL);
INSERT INTO testimonials VALUES (21, 'hannibal_deleon@yahoo.com', 'Hero', 'De Leon', 'Nice work. A must see for everyone. They will only have two options either they like it or they like it most.|||Cheers|', '', '', 'Mozilla/5.0 (Windows NT 6.1; rv:24.0) Gecko/20100101 Firefox/24.0', '2013-11-05 22:02:41.356-08', '121.127.13.35', NULL);
INSERT INTO testimonials VALUES (22, 'ydette14@yahoo.com', 'ydette', 'dumagat', 'Hi Randy thank you for the great photos! Keep it up and God bless!', '', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.101 Safari/537.36', '2013-11-05 22:07:12.712-08', '121.127.13.35', NULL);
INSERT INTO testimonials VALUES (23, 'shirley.olalia@ntrust.com', 'Shey', 'Olalia', 'WOW! They are amazing! Truly amazing job. I love every photos, the color the lights, everything. :) Nice job Sir Randy :)|||', '', '', 'Mozilla/5.0 (Windows NT 5.1; rv:25.0) Gecko/20100101 Firefox/25.0', '2013-11-05 22:11:46.333-08', '121.127.13.35', NULL);
INSERT INTO testimonials VALUES (24, 'gparan2002@yahoo.com', 'Gerald', 'Paran', 'Thanks Man for the wonderful Photos I know  this ain''t gonna be the last Photo shoot that we will having with you. "You bring out the best in us"', '', '', 'Mozilla/5.0 (Windows NT 6.1; rv:24.0) Gecko/20100101 Firefox/24.0', '2013-11-05 22:16:18.796-08', '121.127.13.35', NULL);
INSERT INTO testimonials VALUES (25, 'jennifer.arcilla@ntrust.com', 'Jennifer', 'Arcilla', 'Hello Sir Randy. I just want to take this opportunity to say thank you so much for the wonderful & amazing photo shoot. All the pictures are beautiful and fantastic. Hope to have more pictures and photo shoot. Two thumbs up for you Sir Randy…||Keep Safe always and God Bless…^_^||', '', '', 'Mozilla/5.0 (Windows NT 6.1; rv:25.0) Gecko/20100101 Firefox/25.0', '2013-11-06 00:45:24.578-08', '121.127.13.35', NULL);
INSERT INTO testimonials VALUES (26, 'filipinodealer@gmail.com', 'Mary Ann', 'Ms.Autokoto', 'Great shots! May you''ll be blessed with more clients with your talents.', '@filipinodealer', 'www.filipinodealer.com', 'Mozilla/5.0 (Windows NT 6.1; rv:25.0) Gecko/20100101 Firefox/25.0', '2013-11-06 14:10:09.318-08', '64.180.48.65', NULL);
INSERT INTO testimonials VALUES (27, 'zynagyl.molines@yahoo.com', 'Zynagyl', 'Molines', 'Your photos speaks wonderful words Sir. It was a pleasure to be one of your subject. I felt the excitement and amazement while looking into your work. Goodluck and more opportunities for you!', '', '', 'Mozilla/5.0 (Windows NT 6.1; rv:25.0) Gecko/20100101 Firefox/25.0', '2013-11-06 16:42:38.375-08', '121.127.13.35', NULL);
INSERT INTO testimonials VALUES (28, 'emjhaye02@yahoo.com', 'Joice', 'Tampoc', 'Hello Sir Randy. I am so happy with the photos. Thank you so much for making me comfortable the whole time we are taking photos, for the suggestions and for bringing up the best in us. Your such a great Photographer. I''m looking forward to another photo shoot with you Sir...thanks a lot...||God Bless. Keep safe always.  ||“There are two people in every photograph: the photographer and the viewer”  - Ansel Adams', 'https://www.facebook.com/cookiejay25', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.101 Safari/537.36', '2013-11-06 16:46:45.262-08', '121.127.13.35', NULL);
INSERT INTO testimonials VALUES (29, 'prettyprincesschua023@gmail.com', 'Princess', 'Chua', '~ One Of The Awesome, Kind, Professional, Nice Photographer,| I Had Worked, Thanks for Choosing me as one of your Model , It is such an Honor for me , More Awesome Photos & Blessing To Come , Keep Up The Professional Works , God bless :*||# PRINCESS CHUA :> ', 'fb@princesschua23 twitter@iamprincesschua', 'www.princesschua.com', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.101 Safari/537.36', '2013-11-07 10:08:19.038-08', '112.198.82.202', NULL);
INSERT INTO testimonials VALUES (30, 'bliznarf2005@hotmail.com', 'Francis', 'Gabo', 'He''s one of the best photographers in bc. Great shots!  Keep up the good work.', '', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:25.0) Gecko/20100101 Firefox/25.0', '2013-11-07 15:48:15.35-08', '205.250.225.45', NULL);


--
-- TOC entry 1827 (class 2606 OID 831463)
-- Dependencies: 1543 1543
-- Name: pk_email_template_code; Type: CONSTRAINT; Schema: public; Owner: mdsnapshotsdba; Tablespace: 
--

ALTER TABLE ONLY emailtemplate
    ADD CONSTRAINT pk_email_template_code PRIMARY KEY (template_code);


--
-- TOC entry 1825 (class 2606 OID 575224)
-- Dependencies: 1542 1542
-- Name: pk_site_user; Type: CONSTRAINT; Schema: public; Owner: mdsnapshotsdba; Tablespace: 
--

ALTER TABLE ONLY "siteUser"
    ADD CONSTRAINT pk_site_user PRIMARY KEY (userid);


--
-- TOC entry 1823 (class 2606 OID 447691)
-- Dependencies: 1541 1541
-- Name: pk_testimonials; Type: CONSTRAINT; Schema: public; Owner: mdsnapshotsdba; Tablespace: 
--

ALTER TABLE ONLY testimonials
    ADD CONSTRAINT pk_testimonials PRIMARY KEY (testimonial_id);


--
-- TOC entry 1835 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- TOC entry 1837 (class 0 OID 0)
-- Dependencies: 1540
-- Name: seq_testimonials; Type: ACL; Schema: public; Owner: mdsnapshotsdba
--

REVOKE ALL ON SEQUENCE seq_testimonials FROM PUBLIC;
REVOKE ALL ON SEQUENCE seq_testimonials FROM mdsnapshotsdba;
GRANT ALL ON SEQUENCE seq_testimonials TO mdsnapshotsdba;
GRANT ALL ON SEQUENCE seq_testimonials TO mdsnapshotsdbappuser;


--
-- TOC entry 1838 (class 0 OID 0)
-- Dependencies: 1541
-- Name: testimonials; Type: ACL; Schema: public; Owner: mdsnapshotsdba
--

REVOKE ALL ON TABLE testimonials FROM PUBLIC;
REVOKE ALL ON TABLE testimonials FROM mdsnapshotsdba;
GRANT ALL ON TABLE testimonials TO mdsnapshotsdba;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE testimonials TO mdsnapshotsdbappuser;


-- Completed on 2013-11-27 23:05:27

--
-- PostgreSQL database dump complete
--

