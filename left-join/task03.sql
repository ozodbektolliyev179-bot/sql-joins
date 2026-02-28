SELECT
    u.id AS user_id,
    u.email,
    p.full_name
FROM users u
LEFT JOIN profiles p ON u.id = p.user_id
WHERE p.user_id IS NULL
ORDER BY u.id;