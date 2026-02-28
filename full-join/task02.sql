SELECT
    p.id AS post_id,
    p.title AS post_title,
    c.id AS user_id,
    c.content AS comment_content
FROM posts p
FULL OUTER JOIN comments c ON p.id = c.post_id;