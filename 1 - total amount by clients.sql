SELECT 
    client.name AS client_name,
    SUM(oi.quantity * order_item.price) AS total_amount
FROM client
JOIN `order` ON client.id = `order`.client_id
JOIN order_item ON `order`.id = order_item.order_id
GROUP BY client.id, client.name;
