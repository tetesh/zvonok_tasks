SELECT text AS "Cтатьи без комментариев"
FROM article WHERE id NOT IN (SELECT article_id FROM comment);