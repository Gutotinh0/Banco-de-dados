CREATE TABLE cursos (id, nome, aulas);
-Cria uma tabela cursos e define as colunas (id,nome,aulas) sempre colocando o ; no final da sql


Drop table
-Remove a tabela cursos
DROP TABLE cursos;

Definir Dados
-Define o tipo de dado da coluna e restrições (contraints)
CREATE TABLE cursos (
    id INTEGER NOT NULL,
    nome TEXT NOT NULL,
    aulas INTEGER
);

Checar Tabela
-Verifica caracteristicas da tabela cursos
PRAGMA TABLE_INFO("cursos");

Insert
-faz parte do create, inserindo informations in tabela

Select
-Seleciona todas as colunas * da tabela cursos
SELECT * FROM cursos;

Insert into
-insere um novo registro na tabela cursos nas colunas (id, nome, aulas) com os valores (1, "HTML", 10)
INSERT INTO cursos (id, nome, aulas) VALUES (1, "HTML", 10);

Constraints
-Erros de inserção devido a restrições (constraints)

Aspas
-aspas simples '' são usadas para strings, aspas duplas "" para identificadores como nomes de colunas ou tabelas. Números são definidos sem aspas.

-demos omitir as aspas duplas para nomes de colunas e tabelas, mas é uma boa prática usa0las para evita conflitos com palavras chaves (Keywords.)

INSERT INTO cursos (id, nome, aulas) VALUES (1, "HTML", 10);

Indentação
A indentação é opcional, mas ajuda na legibilidade.

Multiplos registros
-insere multiplos registros na tabela cursos
INSERT INTOI
  "cursos" ("id", "nome", "aulas")

Values
(2, 'css', 12)
(3, 'JavaScript, 15);



Delete 
-Deleta todas as linhas da tabela cursos
DELETE FROM "cursos";

Where 
-deleta as linhas da tabela cursos onde o id é igual a 1
DELETE FROM "cursos" WHERE "id" = 1;


Select
-Seleciona as colunas "id", "nome" da tabela cursos. o * vai selecionar todas as colunas da tabela.
SELECT "id", "nome" FROM "cursos";

SELECT * FROM "cursos";

Limit
-Limita o numero de linhas retornadas pela consulta.
SELECT * FROM "cursos" Limit 2;

Where 
-filtra as linhas da tabela cursos com base em uma condição
SELECT * FROM "cursos" where "id" = 1;
SELECT * FROM "cursos" where "aulas < -11;

AND E KR
AND todas as condiçoes devem ser verdadeiras. OR pelo menos uma das condiçoes deve ser verdadeura.
SELECT * FROM "cursos" WHERE "id" = 2 AND "aulas" > 10;
SELECT * FROM "cursos" WHERE "id" = 2 OR "aulas" > 10;



UPDATE
-Atualiza as colunas "nome" e "aulas" da tabela cursos onde o id é igual a 1
    UPDATE "cursos" SET "nome" = 'html e CSS', "aulas" = 20 "id" = 1;