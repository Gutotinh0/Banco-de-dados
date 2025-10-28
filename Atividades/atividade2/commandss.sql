-- database: ./db.sqlite

SELECT * FROM "lessons" where "course_id" = 1 ORDER BY "lesson_order" ASC;

SELECT "css-animacoes", SUM ("seconds") AS "total_seconds" FROM "lessons" WHERE "course_id" = 2;

SELECT course_id, COUNT(*) AS total_aulas FROM lessons GROUP BY course_id;

SELECT course_id, SUM(seconds) AS total_segundos FROM lessons GROUP BY course_id ORDER BY total_segundos DESC;

SELECT course_id, SUM(seconds) AS total_segundos FROM lessons GROUP BY course_id HAVING total_segundos > 2300 ORDER BY total_segundos DESC;

SELECT c.title AS curso, SUM(l.seconds) AS total_segundos FROM lessons l JOIN courses c ON c.id = l.course_id GROUP BY c.title ORDER BY total_segundos DESC;

SELECT cert.id FROM certificates AS cert JOIN users AS u ON u.id = cert.user_id WHERE u.email = 'mariana@email.com';

SELECT l.title, CASE WHEN lc.lesson_id IS NOT NULL THEN 'Completa' ELSE 'Não completa' END AS status FROM lessons l CROSS JOIN users u LEFT JOIN lessons_completed lc  ON lc.lesson_id = l.id AND lc.user_id = u.id WHERE u.email = 'lucas@email.com';

SELECT * FROM lessons WHERE course_id = (SELECT course_id FROM lessons WHERE slug = 'funcoes-e-escopo') AND lesson_order BETWEEN (SELECT lesson_order FROM lessons WHERE slug = 'funcoes-e-escopo') - 1 AND (SELECT lesson_order FROM lessons WHERE slug = 'funcoes-e-escopo') + 1 ORDER BY lesson_order;