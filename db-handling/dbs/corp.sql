--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3
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
-- Name: corp; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA corp;


SET default_with_oids = false;

--
-- Name: dept; Type: TABLE; Schema: corp; Owner: -
--

CREATE TABLE corp.dept (
    deptno numeric(2,0) NOT NULL,
    dname character varying(14) NOT NULL,
    loc character varying(13)
);


--
-- Name: emp; Type: TABLE; Schema: corp; Owner: -
--

CREATE TABLE corp.emp (
    empno integer NOT NULL,
    ename character varying(255) NOT NULL,
    job character varying(255),
    mgr integer,
    hiredate date,
    sal integer NOT NULL,
    comm integer,
    deptno numeric(2,0) NOT NULL
);


--
-- Data for Name: dept; Type: TABLE DATA; Schema: corp; Owner: -
--

INSERT INTO corp.dept VALUES (10, 'ACCOUNTING', 'NEY YORK');
INSERT INTO corp.dept VALUES (20, 'RESEARCH', 'DALLAS');
INSERT INTO corp.dept VALUES (30, 'SALES', 'CHICAGO');
INSERT INTO corp.dept VALUES (40, 'OPERATIONS', 'BOSTON');


--
-- Data for Name: emp; Type: TABLE DATA; Schema: corp; Owner: -
--

INSERT INTO corp.emp VALUES (7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800, NULL, 20);
INSERT INTO corp.emp VALUES (7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600, 300, 30);
INSERT INTO corp.emp VALUES (7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250, 500, 20);
INSERT INTO corp.emp VALUES (7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975, NULL, 20);
INSERT INTO corp.emp VALUES (7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250, 1400, 20);
INSERT INTO corp.emp VALUES (7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850, NULL, 20);
INSERT INTO corp.emp VALUES (7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450, NULL, 20);
INSERT INTO corp.emp VALUES (7788, 'SCOTT', 'ANALYST', 7566, '1982-12-09', 3000, NULL, 20);
INSERT INTO corp.emp VALUES (7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000, NULL, 20);
INSERT INTO corp.emp VALUES (7844, 'TURNER', 'SALESMAN', 7698, '1981-09-09', 1500, 0, 20);
INSERT INTO corp.emp VALUES (7876, 'ADAMS', 'CLERK', 7788, '1983-01-12', 1100, NULL, 20);
INSERT INTO corp.emp VALUES (7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950, NULL, 20);
INSERT INTO corp.emp VALUES (7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000, NULL, 20);
INSERT INTO corp.emp VALUES (7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300, NULL, 20);


--
-- Name: dept dept_pkey; Type: CONSTRAINT; Schema: corp; Owner: -
--

ALTER TABLE ONLY corp.dept
    ADD CONSTRAINT dept_pkey PRIMARY KEY (deptno);


--
-- Name: emp emp_pkey; Type: CONSTRAINT; Schema: corp; Owner: -
--

ALTER TABLE ONLY corp.emp
    ADD CONSTRAINT emp_pkey PRIMARY KEY (empno);


--
-- Name: emp emp_dept_deptno_fk; Type: FK CONSTRAINT; Schema: corp; Owner: -
--

ALTER TABLE ONLY corp.emp
    ADD CONSTRAINT emp_dept_deptno_fk FOREIGN KEY (deptno) REFERENCES corp.dept(deptno);


--
-- PostgreSQL database dump complete
--

