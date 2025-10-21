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






PRIMARY KEY, FOREIGN KEY:

PK:

CREATE TABLE "cursos" {
  "id" INTEGER PRIMARY KEY,
  "nome" TEXT,
  "preco" INTEGER
} STRICT;

INSERT INTO
"cursos" ("nome", "preco")
VALUES
('HTML", 1000);

(NO PROJETO VAI TER QUE COLOCAR/INDICAR A PRIMARY KEY)

ROWLD

Toda tabela tem uma coluna oculta chamada rowid, que é um identificador único para cada linha.

Se você não definir uma chave primária. o SQLite cria automaticamente uma rowidm

Se você não definir uma coluna como INTEGER PRIMARY KEY. ela se torna um alias para a coluna rowid, isso não acontece caso use INT.

SELECT "rowid", * FROM "cursos";


FOREIGN KEY: CHAVE QUE REPRESENTA UMA COLUNA MAS ELA ESTÁ EM OUTRO LUGAR

Estabelece uma relação entre tabelas, garantindo a integridade referencial.

PRAGMA foreign_keys = ON;
PRAGMA foreign_keys = OFF;
PRAGMA foreign_keys;

CREATE TABLE "cursos" (
  "id" INTEGER PRIMARY KEY,
  "nome" TEXT
) STRICT;

CREATE TABLE "aulas" (
  "id" INTEGER PRIMARY KEY,
  "curso_id" INTEGER,
  "nome" TEXT,
  FOREIGN KEY("curso_id") REFERENCES "cursos" ("id")
) STRICT;

INSERT INTO
 "aulas" ("curso_id, "nome")
 VALUES
 (1, 'Fundamentos do HTML');

 (STRICT: UM TERCO QUE USA PARA VALIDAR DE MANEIRA MAIS RIGOROSA, PARA QUE ESSA TIPAGEM SEJA RESPEITADA,)


 SQLITE              CRUD,SQL,SQLITE
 select
 Operadores:

 >: Maior que
 
 >=: Maior ou igual a 

 SELECT * FROM "produtos" WHERE "preco" < 50000;
 SELECT * FROM "produtos" WHERE "lançamento" != 0;
 SELET * FROM "PRODUTOS" WHERE ("preco" + "taxa_importação) < 40000;
 SELECT * FROM "produtos" WHERE "id" = 3;

 Datas


geralmente cria glosario
 Datas
 O SQLite permite comparar datas diretamente. desde que estejam no formato correto (geralmente YYYY-mm_dd OU YYYY-MM-DD  HH:MM:SS).
 
 SELECT * FROM "produtos" WHERE "criado" > '2049';
 SELECT * FROM "produtos" WHERE "criado" > '2049-08';

 SELECT "nome", "criado" FROM "produtos" WHERE "criado" > 2049-08-03';


 TEXTOS

Em texto a comparação é sensiível a maiúsculas e minúsculas, a menos que seja especificado o contrato com COLLATE NOCASE.

SELECT * FROM "produtos" WHERE "nome" = 'Impressora 3D Mini';
SELECT * FROM "produtos" WHERE "nome" = 'ImpressorA 3D Mini'; não encontra
SELECT * FROM "produtos" WHERE "nome" = 'Impressora 3D Mini' COLATE NOCASE;


IS/IS NOT
O SQLITE usa IS e IS NOT para verificar valores nulos e booleanos

SELECT * FROM "produtos" WHERE "categoria" IS NULL;
SELECT * FROM "produtos" WHERE "categoria" IS NOT NULL;

Tabela

LIKE
 O operador LIKE é usado para comparar padrões em strings. Por padraõ ele não é sensível a maiúsculas e minúsculas.

 SELECT * FROM "produtos" WHERE "nome" LIKE 'impressora 3d mini';

 Wildcard (%)

 %: Representa zero ou mais caracteres.

 --Encontra produtos que começam com "notebook"
SELECT * FROM "produtos" WHERE "nome" LIKE 'notebook%';
--Encontra produtos que terminam com "pro"
SELECT * FROM "produtos" WHERE "nome" LIKE '%pro';
--Encontra produtos que têm "3d" no meio do nome
SELECT * FROM "produtos" WHERE "nome" LIKE '%3d%';

Wildcard(_)

_:Representa exatamente um caractere

--Encontra produtos com 1 caractere antes de "TB" STRING
SELECT * FROM "produtos" WHERE "nome" LIKE '% _TB%';

NOT LIKE.
O operador NOT LIKE é usado para excluir padrões específicos

SELECT * FROM "produtos" WHERE "nome" NOT LIKE '%pro%';

Select
BETWEEN e IN

BETWEEN
O operador BETWEEN é usado para verificar se um valor está dentro de um intervalo específico incluindo os limites.

--Para valores numéricos
SELECT * FROM "produtos" WHERE "preco" BETWEEN 10000 AND 20000;

--Para datas
SELECT * FROM "produtos" WHERE "criado" BETWEEN '2049-06' AND "2049-08';
SELECT * FROM "produtos" WHERE "criado" NOT BETWEEN '2049-06' AND '2049-08';

IN
O operador IN é usado para verificar se um valor está presente em uma lista de valores(array).

SELECT * FROM "produtos" WHERE "categoria" IN ('notebook', 'hardware');
SELECT * FROM "produtos" WHERE "categoria" NOT IN ('notebook', 'hardware');
SELECT * FROM "produtos" WHERE "id" IN (1, 5, 7);
SELECT * FROM "produtos" WHERE "id" NOT IN (1, 5, 7);

Funções (mean, sum, gau, gauseigen)

As Funções matemáticas mais comuns no SQLITE são:

COUNT()
Conta o número de linhas
SUM()
Soma os valores de uma coluna numérica
AVG()
Calcula a média dos valores de uma coluna numérica
MIN()
Retorna o menor valor de uma coluna

As funções de texto mais comuns no SQLITE são:
LENGHT()
UPPER()
LOWER()
SUBSTR
Retorna uma parte de uma string

Data e hora
DATE()
Retorna a data atual ou converte uma string em data.
TIME()
DATETIME()
STRFTIME()
Formata uma data e hora em uma string.

USO DAS FUNÇÕES
as funções podem ser usadas em CREATE, SELECT, WHERE, INSERT e mais.

defalt(ultima auka)

CREATE TABLE "livros" (
  "id" INTEGER PRIMARY KEY,
  "nome" TEXT NOT NULL,
  "criado" TEXT NOT NULL DEFAULT (STRFTIME('%Y-%m-%d', 'now'))
) STRICT;

INSERT INTO
 "livros" ("nome")
 Values
 (TRIM('  Aprendendo SQL  ')),

GROUP E ORDER

ORDER BY

Ordena os resultados de uma consulta
-- ASC (ascendente) é o padrão
SELECT * FROM "produtos" ORDER BY "preco" ASC;
SELECT * FROM "produtos" ORDER BY "preco" DESC;

--primeiro a categoria, depois preço
SELECT * FROM "produtos" ORDER BY "categoria" ASC, "preco" ASC;

--ordena por data
SELECT * FROM "produto" ORDER BY "criado" DESC;

GROUP BY
agrupa os resultados de uma consulta.

SELECT "categoria", COUNT(*) AS "total" FROM "produtos" GROUP BY "categoria";
SELECT "categoria", AVR("preco") AS "preco_medio" FROM "produtos" GROUP BY "categoria";

-- GROUP BY e ORDER BY juntos
SELECT "categoria", COUNT(*) AS "total"
FROM "produtos" GROUP BY "categoria" ORDER BY "total" DESC;

--Data por ANO
SELET STRFTIME('%Y', "criado") AS "ano", COUNT(*) AS "total"
FROM "produtos" GROUP BY "ano";

HAVING
Filtra os resultados de uma consulta após o agrupamnto. O HAVING funciona como WHERE após o GROUP BY.

SELECT "categoria", COUNT(*) AS "total"
FROM "produto" GROUP BY "categoria"
HAVING "total" > 1;

SELECT "categoria", AVG("preco") AS "preco_medio"
FROM "produtos" GROUP BY "categiria"
HAVING "preco_medio" > 70000;

Subquery
Devem ser escritas entre parenteses e o seu resultado serpa usado para compor a query principal

SELECT * FROM "produtos"
WHERE "preço" > (SELECT AVG("preco") FROM "produtos");

Select * FROM "lessons"
WHERE "course_id" = (
  SELECT "id" FROM "courses" WHERE "slug" = 'javascript basico'
);

WITH AS

Cria uma "subquery nomeada" (CTE - Commom Table Expression).
que pode ser referenciada na query principal. É uma tabela temporario.

WITH "preco_medio" AS (
  SELECT AVG("preco") AS "media" FROM "produtos"
)
SELECT * FROM "produtos"
WHERE "preco" > (SELECT "media" FROM "preco_medio")

JOIN
Agrega dados de duas ou mais tabelas com base em uma condiçao. 0 padrão do JOIN é o INNER JOIN, que retorna apenas as linhas que têm corresspondencia em ambas as tabelas, pode usar join inner join ou apenas a virgula 

SELECT * FROM "lessons_completed"
JOIN "users" ON "lessons_completed"."user_id" = "users"."id";

SELECT "users"."name", "lessons_c   