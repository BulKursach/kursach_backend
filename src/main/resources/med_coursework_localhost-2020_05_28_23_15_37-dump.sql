--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Ubuntu 10.12-2.pgdg18.04+1)
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-2.pgdg18.04+1)

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
-- Name: med_coursework; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE med_coursework WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE med_coursework OWNER TO postgres;

\connect med_coursework

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

--
-- Name: diseases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.diseases (
    disease character varying(255) NOT NULL,
    district character varying(255) NOT NULL,
    year smallint NOT NULL,
    abs integer,
    abs_child integer,
    predicted boolean,
    rel integer,
    rel_child integer
);


ALTER TABLE public.diseases OWNER TO postgres;

--
-- Name: federal_districts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.federal_districts (
    district character varying(255) NOT NULL
);


ALTER TABLE public.federal_districts OWNER TO postgres;

--
-- Data for Name: diseases; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'центральный федеральный округ', 2013, 16027, NULL, false, 41, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'центральный федеральный округ', 2014, 15178, NULL, false, 39, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'северо-западный федеральный округ', 2013, 6521, NULL, false, 47, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'северо-западный федеральный округ', 2014, 6330, NULL, false, 46, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'южный федеральный округ', 2013, 8735, NULL, false, 63, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'южный федеральный округ', 2014, 8022, NULL, false, 57, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'северо-кавказский федеральный округ', 2013, 4083, NULL, false, 43, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'северо-кавказский федеральный округ', 2014, 3731, NULL, false, 39, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'приволжский федеральный округ', 2013, 18246, NULL, false, 61, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'приволжский федеральный округ', 2014, 17358, NULL, false, 58, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'уральский федеральный округ', 2013, 9416, NULL, false, 77, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'уральский федеральный округ', 2014, 9203, NULL, false, 75, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'сибирский федеральный округ', 2013, 20186, NULL, false, 105, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'сибирский федеральный округ', 2014, 19058, NULL, false, 99, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'дальневосточный федеральный округ', 2013, 7206, NULL, false, 116, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'дальневосточный федеральный округ', 2014, 6410, NULL, false, 103, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'центральный федеральный округ', 2015, 14700, NULL, false, 38, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'центральный федеральный округ', 2016, 13375, NULL, false, 34, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'северо-западный федеральный округ', 2015, 5642, NULL, false, 41, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'северо-западный федеральный округ', 2016, 5144, NULL, false, 37, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'южный федеральный округ', 2015, 7616, NULL, false, 54, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'южный федеральный округ', 2016, 8336, NULL, false, 51, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'северо-кавказский федеральный округ', 2015, 3481, NULL, false, 36, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'северо-кавказский федеральный округ', 2016, 3285, NULL, false, 34, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'приволжский федеральный округ', 2015, 16623, NULL, false, 56, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'приволжский федеральный округ', 2016, 15572, NULL, false, 53, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'уральский федеральный округ', 2015, 9629, NULL, false, 78, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'уральский федеральный округ', 2016, 8876, NULL, false, 72, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'сибирский федеральный округ', 2015, 18851, NULL, false, 98, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'сибирский федеральный округ', 2016, 17671, NULL, false, 91, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'дальневосточный федеральный округ', 2015, 6334, NULL, false, 102, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'дальневосточный федеральный округ', 2016, 5860, NULL, false, 95, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'центральный федеральный округ', 2017, 12158, NULL, false, 31, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'центральный федеральный округ', 2018, 10952, NULL, false, 28, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'северо-западный федеральный округ', 2017, 4356, NULL, false, 31, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'северо-западный федеральный округ', 2018, 4000, NULL, false, 29, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'южный федеральный округ', 2017, 7964, NULL, false, 49, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'южный федеральный округ', 2018, 7106, NULL, false, 43, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'северо-кавказский федеральный округ', 2017, 3081, NULL, false, 31, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'северо-кавказский федеральный округ', 2018, 2948, NULL, false, 30, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'приволжский федеральный округ', 2017, 14092, NULL, false, 48, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'приволжский федеральный округ', 2018, 12706, NULL, false, 43, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'уральский федеральный округ', 2017, 7770, NULL, false, 63, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'уральский федеральный округ', 2018, 7616, NULL, false, 62, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'сибирский федеральный округ', 2017, 16119, NULL, false, 84, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'сибирский федеральный округ', 2018, 13825, NULL, false, 80, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'дальневосточный федеральный округ', 2017, 5321, NULL, false, 86, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'дальневосточный федеральный округ', 2018, 6081, NULL, false, 74, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'центральный федеральный округ', 2013, 133091, NULL, false, 344, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'центральный федеральный округ', 2014, 153397, NULL, false, 394, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'северо-западный федеральный округ', 2013, 35569, NULL, false, 259, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'северо-западный федеральный округ', 2014, 39903, NULL, false, 288, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'южный федеральный округ', 2013, 60199, NULL, false, 432, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'южный федеральный округ', 2014, 68280, NULL, false, 488, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'северо-кавказский федеральный округ', 2013, 47817, NULL, false, 500, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'северо-кавказский федеральный округ', 2014, 41171, NULL, false, 426, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'приволжский федеральный округ', 2013, 124110, NULL, false, 417, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'приволжский федеральный округ', 2014, 176364, NULL, false, 594, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'уральский федеральный округ', 2013, 32615, NULL, false, 267, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'уральский федеральный округ', 2014, 38244, NULL, false, 312, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'сибирский федеральный округ', 2013, 119103, NULL, false, 618, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'сибирский федеральный округ', 2014, 133882, NULL, false, 693, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'дальневосточный федеральный округ', 2013, 15042, NULL, false, 241, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'дальневосточный федеральный округ', 2014, 14757, NULL, false, 238, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'центральный федеральный округ', 2015, 213479, NULL, false, 547, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'центральный федеральный округ', 2016, 211996, NULL, false, 542, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'северо-западный федеральный округ', 2015, 80569, NULL, false, 582, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'северо-западный федеральный округ', 2016, 78655, NULL, false, 568, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'южный федеральный округ', 2015, 94985, NULL, false, 677, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'южный федеральный округ', 2016, 151910, NULL, false, 928, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'северо-кавказский федеральный округ', 2015, 46478, NULL, false, 480, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'северо-кавказский федеральный округ', 2016, 45546, NULL, false, 469, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'приволжский федеральный округ', 2015, 255993, NULL, false, 862, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'приволжский федеральный округ', 2016, 269615, NULL, false, 909, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'уральский федеральный округ', 2015, 55332, NULL, false, 450, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'уральский федеральный округ', 2016, 56230, NULL, false, 457, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'сибирский федеральный округ', 2015, 145601, NULL, false, 754, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'сибирский федеральный округ', 2016, 154145, NULL, false, 798, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'дальневосточный федеральный округ', 2015, 19360, NULL, false, 312, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'дальневосточный федеральный округ', 2016, 19528, NULL, false, 315, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'центральный федеральный округ', 2017, 238086, NULL, false, 607, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'северо-западный федеральный округ', 2017, 87544, NULL, false, 630, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'южный федеральный округ', 2017, 150332, NULL, false, 915, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'северо-кавказский федеральный округ', 2017, 34835, NULL, false, 356, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'приволжский федеральный округ', 2017, 280041, NULL, false, 945, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'уральский федеральный округ', 2017, 64924, NULL, false, 526, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'сибирский федеральный округ', 2017, 150780, NULL, false, 780, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'дальневосточный федеральный округ', 2017, 21386, NULL, false, 346, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'центральный федеральный округ', 2013, 399917, NULL, false, 1032, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'центральный федеральный округ', 2014, 408158, NULL, false, 1048, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'северо-западный федеральный округ', 2013, 171442, NULL, false, 1246, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'северо-западный федеральный округ', 2014, 177562, NULL, false, 1283, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'южный федеральный округ', 2013, 153698, NULL, false, 1103, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'южный федеральный округ', 2014, 158102, NULL, false, 1129, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'северо-кавказский федеральный округ', 2013, 56440, NULL, false, 590, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'северо-кавказский федеральный округ', 2014, 55043, NULL, false, 570, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'приволжский федеральный округ', 2013, 370637, NULL, false, 1246, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'приволжский федеральный округ', 2014, 388208, NULL, false, 1306, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'уральский федеральный округ', 2013, 137413, NULL, false, 1125, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'уральский федеральный округ', 2014, 140426, NULL, false, 1144, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'сибирский федеральный округ', 2013, 260946, NULL, false, 1353, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'сибирский федеральный округ', 2014, 267552, NULL, false, 1385, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'дальневосточный федеральный округ', 2013, 65818, NULL, false, 1055, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'дальневосточный федеральный округ', 2014, 64748, NULL, false, 1043, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'центральный федеральный округ', 2015, 398604, NULL, false, 1021, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'центральный федеральный округ', 2016, 408833, NULL, false, 1046, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'северо-западный федеральный округ', 2015, 189388, NULL, false, 1368, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'северо-западный федеральный округ', 2016, 191510, NULL, false, 1382, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'южный федеральный округ', 2015, 140150, NULL, false, 999, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'южный федеральный округ', 2016, 175944, NULL, false, 1075, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'северо-кавказский федеральный округ', 2015, 57774, NULL, false, 596, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'северо-кавказский федеральный округ', 2016, 59638, NULL, false, 614, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'приволжский федеральный округ', 2015, 387912, NULL, false, 1306, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'приволжский федеральный округ', 2016, 352757, NULL, false, 1189, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'уральский федеральный округ', 2015, 135699, NULL, false, 1104, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'уральский федеральный округ', 2016, 138800, NULL, false, 1128, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'сибирский федеральный округ', 2015, 263614, NULL, false, 1365, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'сибирский федеральный округ', 2016, 259579, NULL, false, 1343, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'дальневосточный федеральный округ', 2015, 65666, NULL, false, 1059, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'дальневосточный федеральный округ', 2016, 67081, NULL, false, 1083, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'центральный федеральный округ', 2017, 395950, NULL, false, 1010, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'северо-западный федеральный округ', 2017, 203696, NULL, false, 1466, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'южный федеральный округ', 2017, 178479, NULL, false, 1086, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'северо-кавказский федеральный округ', 2017, 57357, NULL, false, 587, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'приволжский федеральный округ', 2017, 354141, NULL, false, 1195, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'уральский федеральный округ', 2017, 138937, NULL, false, 1125, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'сибирский федеральный округ', 2017, 263100, NULL, false, 1361, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'дальневосточный федеральный округ', 2017, 68557, NULL, false, 1109, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'центральный федеральный округ', 2013, 94177, NULL, false, 243, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'центральный федеральный округ', 2014, 92530, NULL, false, 238, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'северо-западный федеральный округ', 2013, 31981, NULL, false, 232, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'северо-западный федеральный округ', 2014, 32106, NULL, false, 232, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'южный федеральный округ', 2013, 33829, NULL, false, 243, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'южный федеральный округ', 2014, 34350, NULL, false, 245, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'северо-кавказский федеральный округ', 2013, 14928, NULL, false, 156, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'северо-кавказский федеральный округ', 2014, 13880, NULL, false, 144, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'приволжский федеральный округ', 2013, 75306, NULL, false, 253, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'приволжский федеральный округ', 2014, 75403, NULL, false, 254, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'уральский федеральный округ', 2013, 32148, NULL, false, 263, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'уральский федеральный округ', 2014, 31961, NULL, false, 260, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'сибирский федеральный округ', 2013, 43266, NULL, false, 224, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'сибирский федеральный округ', 2014, 44110, NULL, false, 228, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'дальневосточный федеральный округ', 2013, 13166, NULL, false, 211, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'дальневосточный федеральный округ', 2014, 13140, NULL, false, 212, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'центральный федеральный округ', 2015, 91182, NULL, false, 234, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'центральный федеральный округ', 2016, 86378, NULL, false, 221, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'северо-западный федеральный округ', 2015, 38126, NULL, false, 275, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'северо-западный федеральный округ', 2016, 40008, NULL, false, 289, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'южный федеральный округ', 2015, 38236, NULL, false, 273, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'южный федеральный округ', 2016, 37948, NULL, false, 232, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'северо-кавказский федеральный округ', 2015, 14488, NULL, false, 150, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'северо-кавказский федеральный округ', 2016, 14719, NULL, false, 152, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'приволжский федеральный округ', 2015, 76310, NULL, false, 257, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'приволжский федеральный округ', 2016, 74679, NULL, false, 252, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'уральский федеральный округ', 2015, 31397, NULL, false, 255, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'уральский федеральный округ', 2016, 31522, NULL, false, 256, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'сибирский федеральный округ', 2015, 44501, NULL, false, 230, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'сибирский федеральный округ', 2016, 42521, NULL, false, 220, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'дальневосточный федеральный округ', 2015, 10537, NULL, false, 170, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'дальневосточный федеральный округ', 2016, 11028, NULL, false, 178, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'центральный федеральный округ', 2017, 91705, NULL, false, 234, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'северо-западный федеральный округ', 2017, 38513, NULL, false, 277, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'южный федеральный округ', 2017, 46774, NULL, false, 285, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'северо-кавказский федеральный округ', 2017, 14059, NULL, false, 144, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'приволжский федеральный округ', 2017, 79327, NULL, false, 268, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'уральский федеральный округ', 2017, 36845, NULL, false, 298, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'сибирский федеральный округ', 2017, 44880, NULL, false, 232, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'дальневосточный федеральный округ', 2017, 10884, NULL, false, 176, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'центральный федеральный округ', 2013, 18586, NULL, false, 48, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'центральный федеральный округ', 2014, 18991, NULL, false, 49, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'северо-западный федеральный округ', 2013, 11360, NULL, false, 83, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'северо-западный федеральный округ', 2014, 12198, NULL, false, 88, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'южный федеральный округ', 2013, 8058, NULL, false, 58, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'южный федеральный округ', 2014, 7590, NULL, false, 54, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'северо-кавказский федеральный округ', 2013, 4881, NULL, false, 51, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'северо-кавказский федеральный округ', 2014, 4356, NULL, false, 45, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'приволжский федеральный округ', 2013, 18549, NULL, false, 62, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'приволжский федеральный округ', 2014, 20173, NULL, false, 68, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'уральский федеральный округ', 2013, 9447, NULL, false, 77, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'уральский федеральный округ', 2014, 10410, NULL, false, 85, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'сибирский федеральный округ', 2013, 18008, NULL, false, 93, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'сибирский федеральный округ', 2014, 18834, NULL, false, 98, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'дальневосточный федеральный округ', 2013, 6253, NULL, false, 100, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'дальневосточный федеральный округ', 2014, 5841, NULL, false, 94, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'центральный федеральный округ', 2015, 21850, NULL, false, 56, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'центральный федеральный округ', 2016, 17106, NULL, false, 44, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'северо-западный федеральный округ', 2015, 12283, NULL, false, 89, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'северо-западный федеральный округ', 2016, 12608, NULL, false, 91, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'южный федеральный округ', 2015, 6697, NULL, false, 48, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'южный федеральный округ', 2016, 9177, NULL, false, 56, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'северо-кавказский федеральный округ', 2015, 3528, NULL, false, 36, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'северо-кавказский федеральный округ', 2016, 3590, NULL, false, 37, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'приволжский федеральный округ', 2015, 18947, NULL, false, 64, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'приволжский федеральный округ', 2016, 20192, NULL, false, 68, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'уральский федеральный округ', 2015, 10025, NULL, false, 82, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'уральский федеральный округ', 2016, 8623, NULL, false, 70, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'сибирский федеральный округ', 2015, 16454, NULL, false, 85, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'сибирский федеральный округ', 2016, 17414, NULL, false, 90, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'дальневосточный федеральный округ', 2015, 5223, NULL, false, 84, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'дальневосточный федеральный округ', 2016, 5310, NULL, false, 86, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'центральный федеральный округ', 2017, 17087, NULL, false, 44, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'северо-западный федеральный округ', 2017, 11962, NULL, false, 86, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'южный федеральный округ', 2017, 7956, NULL, false, 48, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'северо-кавказский федеральный округ', 2017, 2845, NULL, false, 29, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'приволжский федеральный округ', 2017, 18531, NULL, false, 63, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'уральский федеральный округ', 2017, 8312, NULL, false, 67, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'сибирский федеральный округ', 2017, 15248, NULL, false, 79, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'дальневосточный федеральный округ', 2017, 4957, NULL, false, 80, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'центральный федеральный округ', 2013, 15466, 40, false, 190, 3);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'центральный федеральный округ', 2014, 17222, 44, false, 190, 3);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'северо-западный федеральный округ', 2013, 7021, 51, false, 74, 3);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'северо-западный федеральный округ', 2014, 7168, 52, false, 94, 4);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'южный федеральный округ', 2013, 3706, 27, false, 42, 2);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'южный федеральный округ', 2014, 4312, 31, false, 42, 2);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'северо-кавказский федеральный округ', 2013, 940, 10, false, 15, 1);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'северо-кавказский федеральный округ', 2014, 1148, 12, false, 22, 1);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'приволжский федеральный округ', 2013, 16917, 57, false, 267, 5);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'приволжский федеральный округ', 2014, 18889, 64, false, 286, 5);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'уральский федеральный округ', 2013, 13417, 110, false, 148, 6);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'уральский федеральный округ', 2014, 15598, 127, false, 213, 8);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'сибирский федеральный округ', 2013, 22633, 117, false, 278, 7);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'сибирский федеральный округ', 2014, 24745, 128, false, 398, 10);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'дальневосточный федеральный округ', 2013, 1598, 26, false, 13, 1);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'дальневосточный федеральный округ', 2014, 1841, 30, false, 12, 1);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'центральный федеральный округ', 2013, 194417, NULL, false, 502, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'центральный федеральный округ', 2014, 184015, NULL, false, 472, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'северо-западный федеральный округ', 2013, 70567, NULL, false, 513, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'северо-западный федеральный округ', 2014, 71034, NULL, false, 513, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'южный федеральный округ', 2013, 57433, NULL, false, 412, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'южный федеральный округ', 2014, 56777, NULL, false, 405, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'северо-кавказский федеральный округ', 2013, 26897, NULL, false, 281, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'северо-кавказский федеральный округ', 2014, 25676, NULL, false, 266, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'приволжский федеральный округ', 2013, 167894, NULL, false, 564, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'приволжский федеральный округ', 2014, 160779, NULL, false, 541, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'уральский федеральный округ', 2013, 73469, NULL, false, 601, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'уральский федеральный округ', 2014, 71752, NULL, false, 585, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'сибирский федеральный округ', 2013, 120312, NULL, false, 624, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'сибирский федеральный округ', 2014, 118464, NULL, false, 613, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'дальневосточный федеральный округ', 2013, 33920, NULL, false, 544, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'дальневосточный федеральный округ', 2014, 33791, NULL, false, 544, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'центральный федеральный округ', 2015, 174398, NULL, false, 447, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'центральный федеральный округ', 2016, 157269, NULL, false, 402, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'южный федеральный округ', 2015, 55293, NULL, false, 394, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'южный федеральный округ', 2016, 52425, NULL, false, 320, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'северо-кавказский федеральный округ', 2015, 25508, NULL, false, 263, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'северо-кавказский федеральный округ', 2016, 22991, NULL, false, 237, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'приволжский федеральный округ', 2015, 150858, NULL, false, 508, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'приволжский федеральный округ', 2016, 141301, NULL, false, 476, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'уральский федеральный округ', 2015, 70803, NULL, false, 576, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'уральский федеральный округ', 2016, 64717, NULL, false, 526, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'сибирский федеральный округ', 2015, 121833, NULL, false, 631, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'сибирский федеральный округ', 2016, 110368, NULL, false, 571, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'дальневосточный федеральный округ', 2015, 33560, NULL, false, 541, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'дальневосточный федеральный округ', 2016, 32278, NULL, false, 521, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'центральный федеральный округ', 2017, 148209, NULL, false, 378, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'северо-западный федеральный округ', 2017, 65597, NULL, false, 472, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'южный федеральный округ', 2017, 53720, NULL, false, 327, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'северо-кавказский федеральный округ', 2017, 21952, NULL, false, 225, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'приволжский федеральный округ', 2017, 125020, NULL, false, 422, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'уральский федеральный округ', 2017, 58669, NULL, false, 475, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'сибирский федеральный округ', 2017, 106604, NULL, false, 552, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'дальневосточный федеральный округ', 2017, 29798, NULL, false, 482, NULL);


--
-- Data for Name: federal_districts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.federal_districts (district) VALUES ('центральный федеральный округ');
INSERT INTO public.federal_districts (district) VALUES ('северо-западный федеральный округ');
INSERT INTO public.federal_districts (district) VALUES ('южный федеральный округ');
INSERT INTO public.federal_districts (district) VALUES ('северо-кавказский федеральный округ');
INSERT INTO public.federal_districts (district) VALUES ('приволжский федеральный округ');
INSERT INTO public.federal_districts (district) VALUES ('уральский федеральный округ');
INSERT INTO public.federal_districts (district) VALUES ('сибирский федеральный округ');
INSERT INTO public.federal_districts (district) VALUES ('дальневосточный федеральный округ');


--
-- Name: diseases diseases_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.diseases
    ADD CONSTRAINT diseases_pkey PRIMARY KEY (disease, district, year);


--
-- Name: federal_districts federal_districts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.federal_districts
    ADD CONSTRAINT federal_districts_pkey PRIMARY KEY (district);


--
-- Name: diseases diseases_district_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.diseases
    ADD CONSTRAINT diseases_district_fkey FOREIGN KEY (district) REFERENCES public.federal_districts(district) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

