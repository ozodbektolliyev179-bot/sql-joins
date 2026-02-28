SELECT
    c.id AS comment_id,
    c.content AS comment_content,
    p.title AS post_title,
    u.email AS commenter_email,
    c.created_at AS created_at
FROM users u
INNER JOIN comments c ON u.id = c.user_id
INNER JOIN posts p ON c.post_id = p.id
ORDER BY c.created_at DESC; 