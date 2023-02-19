-- Database: Bootcamp

-- DROP DATABASE IF EXISTS "Bootcamp";

CREATE DATABASE "Bootcamp"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
	-- creation de table --
	
	CREATE TABLE etudiants (
	
		id_etudiant SERIAL PRIMARY KEY,
		nom VARCHAR(50),
		prenoms VARCHAR(100),
		birth_date DATE
	);
	
	
	INSERT INTO etudiants (nom, prenoms, birth_date)
	VALUES ('Marc', 'Benichou', '02/11/1998'),
		   ('Yahnn', 'Cohen', '03/12/2010'),
		   ('Léa', 'Benichou', '27/12/1987'),
		   ('Marc', 'Benichou', '07/04/1996'),
		   ('David', 'Grez', '14/06/2003'),
		   ('Omer', 'Simpson', '03/10/1980');
	
	-- Requetes --
	
	SELECT * FROM etudiants
	
	SELECT nom, prenoms FROM etudiants
	
	SELECT nom, prenoms FROM etudiants WHERE id_etudiant = 2
	
	SELECT nom, prenoms FROM etudiants WHERE nom ='Marc' AND prenoms ='Benichou'
	
	SELECT nom, prenoms FROM etudiants WHERE nom ='Marc' AND prenoms ='Benichou'
	
	SELECT nom, prenoms FROM etudiants WHERE nom ='Marc' OR prenoms ='Benichou'
	
	SELECT nom, prenoms FROM etudiants WHERE nom LIKE '%a%'
	
	SELECT nom, prenoms FROM etudiants WHERE nom LIKE 'a%'
	
	SELECT nom, prenoms FROM etudiants WHERE nom LIKE '%a'
	
	SELECT nom, prenoms FROM etudiants WHERE nom LIKE '%a_'
	
	SELECT nom, prenoms FROM etudiants WHERE id_etudiant IN (2, 3)
	
	SELECT nom, prenoms FROM etudiants WHERE birth_date >= '01/01/2000'