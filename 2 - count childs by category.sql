SELECT 
    category1.id,
    category1.name AS category_name,
    COUNT(category2.id) AS child_count
FROM category category1
LEFT JOIN category category2 ON category2.parent_id = category1.id
GROUP BY category1.id
ORDER BY category1.id;
