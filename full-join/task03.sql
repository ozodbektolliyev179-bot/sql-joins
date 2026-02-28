SELECT
    u.id AS user_id,
    u.email,
    c.id AS comment_id
FROM users u
FULL OUTER JOIN comments c ON u.id = c.user_id
ORDER BY user_id ASC;