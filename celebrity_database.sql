/*This code creates 3 tables and joins them showing who is married to who and what occupation they are in*/

/* PERSONS TABLE*/
CREATE TABLE persons (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    name TEXT, 
    age INTEGER,
    married_id TEXT);

INSERT INTO persons (name, age, married_id) VALUES ("Zendaya", 28, 2);
INSERT INTO persons (name, age, married_id) VALUES ("Tom Holland", 28, 1);
INSERT INTO persons (name, age) VALUES ("Sydney Sweeney", 27);
INSERT INTO persons (name, age, married_id) VALUES ("Ana Huang", 26, NULL);
INSERT INTO persons (name, age, married_id) VALUES ("Rihanna", 37, NULL );
INSERT INTO persons (name, age, married_id) VALUES ("Beyonce", 43, 7);
INSERT INTO persons (name, age, married_id) VALUES ("Jay-Z", 55, 6);
INSERT INTO persons (name, age, married_id) VALUES ("Freida McFadden", 34, NULL);
INSERT INTO persons (name, age, married_id) VALUES ("Cardi B", 32, 10);
INSERT INTO persons (name, age, married_id) VALUES ("Offset", 33, 9);
INSERT INTO persons (name, age, married_id) VALUES ("Aaron Pierre", 30, NULL);

INSERT INTO persons (name, age, married_id) VALUES ("Michael B Jordan", 38, NULL);
INSERT INTO persons (name, age, married_id) VALUES ("Sabrina Carpenter", 25, NULL);
INSERT INTO persons (name, age, married_id) VALUES ("Will Smith", 56, 15);
INSERT INTO persons (name, age, married_id) VALUES ("Jada Pinkett", 53, 14);

/* OCCUPATIONS TABLE*/
CREATE TABLE occupations (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    occupation TEXT);

INSERT INTO occupations (occupation) VALUES ("Actor");
INSERT INTO occupations (occupation) VALUES ("Singer");
INSERT INTO occupations (occupation) VALUES ("Author");



/* PERSONS OCCUPATIONS TABLE*/
CREATE TABLE persons_occ (
    persons_id INTEGER,
    occupation_id INTEGER);

INSERT INTO persons_occ (persons_id, occupation_id) VALUES (1,1);
INSERT INTO persons_occ (persons_id, occupation_id) VALUES (1,2);
INSERT INTO persons_occ (persons_id, occupation_id) VALUES (2,1);
INSERT INTO persons_occ (persons_id, occupation_id) VALUES (2,3);
INSERT INTO persons_occ (persons_id, occupation_id) VALUES (3,1);
INSERT INTO persons_occ (persons_id, occupation_id) VALUES (4,3);
INSERT INTO persons_occ (persons_id, occupation_id) VALUES (5,1);
INSERT INTO persons_occ (persons_id, occupation_id) VALUES (5,2);
INSERT INTO persons_occ (persons_id, occupation_id) VALUES (6,2);
INSERT INTO persons_occ (persons_id, occupation_id) VALUES (7,2);
INSERT INTO persons_occ (persons_id, occupation_id) VALUES (8,3);
INSERT INTO persons_occ (persons_id, occupation_id) VALUES (9,2);
INSERT INTO persons_occ (persons_id, occupation_id) VALUES (10,2);
INSERT INTO persons_occ (persons_id, occupation_id) VALUES (11,1);
INSERT INTO persons_occ (persons_id, occupation_id) VALUES (13,1);
INSERT INTO persons_occ (persons_id, occupation_id) VALUES (13,2);
INSERT INTO persons_occ (persons_id, occupation_id) VALUES (14,1);
INSERT INTO persons_occ (persons_id, occupation_id) VALUES (14,2);
INSERT INTO persons_occ (persons_id, occupation_id) VALUES (15,1);
INSERT INTO persons_occ (persons_id, occupation_id) VALUES (15,2);



/* Select all from PERSONS table*/
SELECT * FROM persons;


/* Join all 3 tables to select persons name and occupation */
SELECT name, occupation
FROM persons
JOIN occupations
ON occupations.id = persons_occ.occupation_id
JOIN persons_occ
ON persons.id = persons_occ.persons_id
ORDER BY occupation;

/*Self join to show persons name and their partners name */
SELECT persons.name, partner.name AS partner
FROM persons 
JOIN persons partner
ON persons.married_id = partner.id;

