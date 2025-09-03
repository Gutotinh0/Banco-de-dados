-- database: ./db.sqlite
CREATE TABLE cursos (id, nome, aulas);


DROP TABLE cursos;


CREATE TABLE cursos (
    id INTEGER NOT NULL,
    nome TEXT NOT NULL,
    aulas INTEGER
);

PRAGMA TABLE_INFO("cursos");

SELECT * FROM cursos;

INSERT INTO cursos (id, nome, aulas) VALUES (1, "HTML", 10);

DELETE FROM "cursos";

DELETE FROM "cursos" WHERE "id" = 1;

SELECT * FROM "cursos" Limit 2;

UPDATE "cursos" SET "nome" = 'html e CSS', "aulas" = 20 "id" = 1;   


CREATE TABLE 


DROP TABLE clientes


