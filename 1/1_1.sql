SELECT article.text AS "Статьи без комментариев"
FROM article
LEFT JOIN comment
ON comment.article_id = article.id
WHERE comment.article_id IS NULL