SELECT
    Clientes.nombre AS cliente_nombre,
    SUM(Ordenes.total) AS monto_total_compras
FROM Clientes
JOIN Ordenes ON Clientes.id = Ordenes.cliente_id
GROUP BY Clientes.nombre
ORDER BY monto_total_compras DESC
LIMIT 1;
