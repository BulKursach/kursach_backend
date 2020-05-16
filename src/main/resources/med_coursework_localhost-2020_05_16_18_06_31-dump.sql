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

--
-- Data for Name: federal_districts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.federal_districts (district) VALUES ('российская федерация');
INSERT INTO public.federal_districts (district) VALUES ('центральный федеральный округ');
INSERT INTO public.federal_districts (district) VALUES ('северо-западный федеральный округ');
INSERT INTO public.federal_districts (district) VALUES ('южный федеральный округ');
INSERT INTO public.federal_districts (district) VALUES ('северо-кавказский федеральный округ');
INSERT INTO public.federal_districts (district) VALUES ('приволжский федеральный округ');
INSERT INTO public.federal_districts (district) VALUES ('уральский федеральный округ');
INSERT INTO public.federal_districts (district) VALUES ('сибирский федеральный округ');
INSERT INTO public.federal_districts (district) VALUES ('дальневосточный федеральный округ');
INSERT INTO public.federal_districts (district) VALUES ('гл. мед. упр. управления делами президента рф');


--
-- Data for Name: diseases; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'российская федерация', 2013, 90427, NULL, false, 63, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'российская федерация', 2014, 86953, NULL, false, 59, NULL);
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
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'российская федерация', 2015, 84515, NULL, false, 58, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'российская федерация', 2016, 78121, NULL, false, 53, NULL);
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
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'российская федерация', 2017, 70861, NULL, false, 48, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Туберкулез', 'российская федерация', 2018, 65234, NULL, false, 44, NULL);
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
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'российская федерация', 2013, 568387, NULL, false, 396, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'российская федерация', 2014, 675416, NULL, false, 462, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'северо-кавказский федеральный округ', 2013, 47817, NULL, false, 500, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'северо-кавказский федеральный округ', 2014, 41171, NULL, false, 426, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'приволжский федеральный округ', 2013, 124110, NULL, false, 417, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'приволжский федеральный округ', 2014, 176364, NULL, false, 594, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'сибирский федеральный округ', 2013, 119103, NULL, false, 618, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'сибирский федеральный округ', 2016, 23192, 402, false, 120, 10);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'сибирский федеральный округ', 2014, 133882, NULL, false, 693, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'российская федерация', 2015, 926568, NULL, false, 633, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'российская федерация', 2016, 988959, NULL, false, 675, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'северо-кавказский федеральный округ', 2015, 46478, NULL, false, 480, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'северо-кавказский федеральный округ', 2016, 45546, NULL, false, 469, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'приволжский федеральный округ', 2015, 255993, NULL, false, 862, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'приволжский федеральный округ', 2016, 269615, NULL, false, 909, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'сибирский федеральный округ', 2015, 145601, NULL, false, 754, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'сибирский федеральный округ', 2016, 154145, NULL, false, 798, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'российская федерация', 2017, 1028997, NULL, false, 701, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'северо-кавказский федеральный округ', 2017, 34835, NULL, false, 356, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'приволжский федеральный округ', 2017, 280041, NULL, false, 945, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'сибирский федеральный округ', 2017, 150780, NULL, false, 780, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Артериальная Гипертензия', 'дальневосточный федеральный округ', 2017, 21386, NULL, false, 346, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'российская федерация', 2013, 1628870, NULL, false, 1135, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'российская федерация', 2014, 1693096, NULL, false, 1158, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'северо-кавказский федеральный округ', 2013, 56440, NULL, false, 590, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'северо-кавказский федеральный округ', 2014, 55043, NULL, false, 570, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'приволжский федеральный округ', 2013, 370637, NULL, false, 1246, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'приволжский федеральный округ', 2014, 388208, NULL, false, 1306, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'сибирский федеральный округ', 2013, 260946, NULL, false, 1353, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'сибирский федеральный округ', 2014, 267552, NULL, false, 1385, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'российская федерация', 2015, 1671596, NULL, false, 1142, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'российская федерация', 2016, 1668133, NULL, false, 1138, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'северо-кавказский федеральный округ', 2015, 57774, NULL, false, 596, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'северо-кавказский федеральный округ', 2016, 59638, NULL, false, 614, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'приволжский федеральный округ', 2015, 387912, NULL, false, 1306, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'приволжский федеральный округ', 2016, 352757, NULL, false, 1189, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'сибирский федеральный округ', 2015, 263614, NULL, false, 1365, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'сибирский федеральный округ', 2016, 259579, NULL, false, 1343, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'российская федерация', 2017, 1674088, NULL, false, 1140, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'северо-кавказский федеральный округ', 2017, 57357, NULL, false, 587, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'приволжский федеральный округ', 2017, 354141, NULL, false, 1195, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'сибирский федеральный округ', 2017, 263100, NULL, false, 1361, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Новообразования', 'дальневосточный федеральный округ', 2017, 68557, NULL, false, 1109, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'российская федерация', 2013, 339450, NULL, false, 237, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'российская федерация', 2014, 343138, NULL, false, 235, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'северо-кавказский федеральный округ', 2013, 14928, NULL, false, 156, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'северо-кавказский федеральный округ', 2014, 13880, NULL, false, 144, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'приволжский федеральный округ', 2013, 75306, NULL, false, 253, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'приволжский федеральный округ', 2014, 75403, NULL, false, 254, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'сибирский федеральный округ', 2013, 43266, NULL, false, 224, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'сибирский федеральный округ', 2014, 44110, NULL, false, 228, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'российская федерация', 2015, 352221, NULL, false, 241, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'российская федерация', 2016, 339362, NULL, false, 232, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'северо-кавказский федеральный округ', 2015, 14488, NULL, false, 150, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'северо-кавказский федеральный округ', 2016, 14719, NULL, false, 152, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'приволжский федеральный округ', 2015, 76310, NULL, false, 257, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'приволжский федеральный округ', 2016, 74679, NULL, false, 252, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'сибирский федеральный округ', 2015, 44501, NULL, false, 230, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'сибирский федеральный округ', 2016, 42521, NULL, false, 220, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'российская федерация', 2017, 363533, NULL, false, 248, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'северо-кавказский федеральный округ', 2017, 14059, NULL, false, 144, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'приволжский федеральный округ', 2017, 79327, NULL, false, 268, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'сибирский федеральный округ', 2017, 44880, NULL, false, 232, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Сахарный диабет', 'дальневосточный федеральный округ', 2017, 10884, NULL, false, 176, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'российская федерация', 2013, 95280, NULL, false, 66, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'российская федерация', 2014, 98980, NULL, false, 68, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'северо-кавказский федеральный округ', 2013, 4881, NULL, false, 51, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'северо-кавказский федеральный округ', 2014, 4356, NULL, false, 45, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'приволжский федеральный округ', 2013, 18549, NULL, false, 62, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'приволжский федеральный округ', 2014, 20173, NULL, false, 68, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'сибирский федеральный округ', 2013, 18008, NULL, false, 93, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'сибирский федеральный округ', 2014, 18834, NULL, false, 98, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'российская федерация', 2015, 95763, NULL, false, 65, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'российская федерация', 2016, 94109, NULL, false, 64, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'северо-кавказский федеральный округ', 2015, 3528, NULL, false, 36, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'северо-кавказский федеральный округ', 2016, 3590, NULL, false, 37, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'приволжский федеральный округ', 2015, 18947, NULL, false, 64, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'приволжский федеральный округ', 2016, 20192, NULL, false, 68, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'сибирский федеральный округ', 2015, 16454, NULL, false, 85, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'сибирский федеральный округ', 2016, 17414, NULL, false, 90, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'российская федерация', 2017, 86987, NULL, false, 59, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'северо-кавказский федеральный округ', 2017, 2845, NULL, false, 29, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'приволжский федеральный округ', 2017, 18531, NULL, false, 63, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'сибирский федеральный округ', 2017, 15248, NULL, false, 79, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Гепатит', 'дальневосточный федеральный округ', 2017, 4957, NULL, false, 80, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'российская федерация', 2015, 100220, 1322, false, 69, 5);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'российская федерация', 2016, 86855, 1281, false, 59, 4);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'центральный федеральный округ', 2015, 19445, 171, false, 50, 3);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'центральный федеральный округ', 2016, 11949, 172, false, 31, 3);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'северо-западный федеральный округ', 2015, 7268, 69, false, 53, 3);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'северо-западный федеральный округ', 2016, 5847, 66, false, 42, 3);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'южный федеральный округ', 2015, 5322, 55, false, 38, 2);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'южный федеральный округ', 2016, 6850, 79, false, 42, 3);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'северо-кавказский федеральный округ', 2015, 1521, 45, false, 16, 2);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'северо-кавказский федеральный округ', 2016, 1716, 31, false, 18, 1);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'приволжский федеральный округ', 2015, 21289, 321, false, 72, 6);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'приволжский федеральный округ', 2016, 20665, 284, false, 70, 5);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'уральский федеральный округ', 2015, 16633, 195, false, 135, 7);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'уральский федеральный округ', 2016, 14367, 219, false, 117, 8);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'сибирский федеральный округ', 2015, 25396, 415, false, 132, 10);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'дальневосточный федеральный округ', 2015, 2291, 23, false, 37, 2);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'дальневосточный федеральный округ', 2016, 2269, 28, false, 37, 2);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'российская федерация', 2017, 85802, 1073, false, 58, 4);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'российская федерация', 2018, 85995, 977, false, 59, 3);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'центральный федеральный округ', 2017, 12938, 137, false, 33, 2);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'центральный федеральный округ', 2018, 12405, 110, false, 32, 2);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'северо-западный федеральный округ', 2017, 5616, 70, false, 40, 3);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'северо-западный федеральный округ', 2018, 6535, 60, false, 47, 2);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'южный федеральный округ', 2017, 6768, 89, false, 41, 3);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'южный федеральный округ', 2018, 6866, 65, false, 42, 2);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'северо-кавказский федеральный округ', 2017, 1566, 31, false, 16, 1);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'северо-кавказский федеральный округ', 2018, 1754, 32, false, 18, 1);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'приволжский федеральный округ', 2017, 20120, 222, false, 68, 4);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'приволжский федеральный округ', 2018, 20102, 221, false, 68, 4);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'уральский федеральный округ', 2017, 14504, 180, false, 117, 7);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'уральский федеральный округ', 2018, 13367, 168, false, 108, 6);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'сибирский федеральный округ', 2017, 22249, 324, false, 115, 8);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'сибирский федеральный округ', 2018, 21489, 288, false, 125, 8);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'дальневосточный федеральный округ', 2017, 2041, 20, false, 33, 2);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'дальневосточный федеральный округ', 2018, 3477, 33, false, 42, 2);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'российская федерация', 2013, 747126, NULL, false, 521, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'российская федерация', 2014, 733873, NULL, false, 502, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'северо-кавказский федеральный округ', 2013, 26897, NULL, false, 281, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'северо-кавказский федеральный округ', 2014, 25676, NULL, false, 266, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'приволжский федеральный округ', 2013, 167894, NULL, false, 564, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'приволжский федеральный округ', 2014, 160779, NULL, false, 541, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'сибирский федеральный округ', 2013, 120312, NULL, false, 624, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'сибирский федеральный округ', 2014, 118464, NULL, false, 613, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'российская федерация', 2015, 709995, NULL, false, 485, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'российская федерация', 2016, 649035, NULL, false, 443, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'северо-кавказский федеральный округ', 2015, 25508, NULL, false, 263, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'северо-кавказский федеральный округ', 2016, 22991, NULL, false, 237, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'приволжский федеральный округ', 2015, 150858, NULL, false, 508, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'приволжский федеральный округ', 2016, 141301, NULL, false, 476, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'сибирский федеральный округ', 2015, 121833, NULL, false, 631, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'сибирский федеральный округ', 2016, 110368, NULL, false, 571, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'российская федерация', 2017, 612045, NULL, false, 417, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'северо-кавказский федеральный округ', 2017, 21952, NULL, false, 225, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'приволжский федеральный округ', 2017, 125020, NULL, false, 422, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'сибирский федеральный округ', 2017, 106604, NULL, false, 552, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('Психиатрия', 'дальневосточный федеральный округ', 2017, 29798, NULL, false, 482, NULL);
INSERT INTO public.diseases (disease, district, year, abs, abs_child, predicted, rel, rel_child) VALUES ('ВИЧ', 'российская федерация', 2019, 20413, 456, true, 67, 0);


--
-- PostgreSQL database dump complete
--

