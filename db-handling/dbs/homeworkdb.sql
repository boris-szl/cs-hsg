--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.12
-- Dumped by pg_dump version 10.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: homeworkdb; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA homeworkdb;


SET default_with_oids = false;

--
-- Name: exercises; Type: TABLE; Schema: homeworkdb; Owner: -
--

CREATE TABLE homeworkdb.exercises (
    cat character(1) NOT NULL,
    eno integer NOT NULL,
    topic character varying(25),
    maxpt integer
);


--
-- Name: results; Type: TABLE; Schema: homeworkdb; Owner: -
--

CREATE TABLE homeworkdb.results (
    sid integer NOT NULL,
    cat character(1) NOT NULL,
    eno integer NOT NULL,
    points integer
);


--
-- Name: students; Type: TABLE; Schema: homeworkdb; Owner: -
--

CREATE TABLE homeworkdb.students (
    sid integer NOT NULL,
    first character varying(25) NOT NULL,
    last character varying(25),
    email character varying(25)
);


--
-- Data for Name: exercises; Type: TABLE DATA; Schema: homeworkdb; Owner: -
--

INSERT INTO homeworkdb.exercises VALUES ('H', 1, 'Relational Algebra', 10);
INSERT INTO homeworkdb.exercises VALUES ('H', 2, 'SQL', 10);
INSERT INTO homeworkdb.exercises VALUES ('M', 1, 'SQL', 14);
INSERT INTO homeworkdb.exercises VALUES ('H', 3, 'Tuple Relational Calculus', 20);
INSERT INTO homeworkdb.exercises VALUES ('H', 4, 'Functional Dependencies', 16);
INSERT INTO homeworkdb.exercises VALUES ('H', 5, 'Normal Forms', 14);
INSERT INTO homeworkdb.exercises VALUES ('H', 6, 'SQL - Advanced Concepts', 20);
INSERT INTO homeworkdb.exercises VALUES ('H', 7, 'OLAP', 10);
INSERT INTO homeworkdb.exercises VALUES ('H', 8, 'Exam Preparation', 20);


--
-- Data for Name: results; Type: TABLE DATA; Schema: homeworkdb; Owner: -
--

INSERT INTO homeworkdb.results VALUES (101, 'H', 1, 10);
INSERT INTO homeworkdb.results VALUES (101, 'H', 2, 8);
INSERT INTO homeworkdb.results VALUES (101, 'M', 1, 12);
INSERT INTO homeworkdb.results VALUES (102, 'H', 1, 9);
INSERT INTO homeworkdb.results VALUES (102, 'H', 2, 9);
INSERT INTO homeworkdb.results VALUES (102, 'M', 1, 10);
INSERT INTO homeworkdb.results VALUES (103, 'H', 1, 5);
INSERT INTO homeworkdb.results VALUES (103, 'M', 1, 7);


--
-- Data for Name: students; Type: TABLE DATA; Schema: homeworkdb; Owner: -
--

INSERT INTO homeworkdb.students VALUES (101, 'Ann', 'Smith', '...');
INSERT INTO homeworkdb.students VALUES (103, 'Richard', 'Turner', '...');
INSERT INTO homeworkdb.students VALUES (104, 'Maria', 'Brown', '...');
INSERT INTO homeworkdb.students VALUES (102, 'Michael', 'Jones', NULL);
INSERT INTO homeworkdb.students VALUES (105, 'John', 'Doe', 'john.doe@uni-konstanz.de');


--
-- Name: exercises ExercisesPK; Type: CONSTRAINT; Schema: homeworkdb; Owner: -
--

ALTER TABLE ONLY homeworkdb.exercises
    ADD CONSTRAINT "ExercisesPK" PRIMARY KEY (cat, eno);


--
-- Name: results ResultsPK; Type: CONSTRAINT; Schema: homeworkdb; Owner: -
--

ALTER TABLE ONLY homeworkdb.results
    ADD CONSTRAINT "ResultsPK" PRIMARY KEY (sid, cat, eno);


--
-- Name: students StudentsPK; Type: CONSTRAINT; Schema: homeworkdb; Owner: -
--

ALTER TABLE ONLY homeworkdb.students
    ADD CONSTRAINT "StudentsPK" PRIMARY KEY (sid);


--
-- Name: fki_Results-ExercisesFK; Type: INDEX; Schema: homeworkdb; Owner: -
--

CREATE INDEX "fki_Results-ExercisesFK" ON homeworkdb.results USING btree (cat, eno);


--
-- Name: results Result-Students-FK; Type: FK CONSTRAINT; Schema: homeworkdb; Owner: -
--

ALTER TABLE ONLY homeworkdb.results
    ADD CONSTRAINT "Result-Students-FK" FOREIGN KEY (sid) REFERENCES homeworkdb.students(sid);


--
-- Name: results Results-ExercisesFK; Type: FK CONSTRAINT; Schema: homeworkdb; Owner: -
--

ALTER TABLE ONLY homeworkdb.results
    ADD CONSTRAINT "Results-ExercisesFK" FOREIGN KEY (cat, eno) REFERENCES homeworkdb.exercises(cat, eno);


--
-- PostgreSQL database dump complete
--

