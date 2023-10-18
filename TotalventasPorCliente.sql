SELECT
    Clientes.id AS cliente_id,
    Clientes.nombre AS nombre_cliente,
    SUM(Items.monto_venta) AS total_ventas
FROM Clientes
JOIN Ordenes ON Clientes.id = Ordenes.cliente_id
JOIN Items ON Ordenes.id = Items.orden_id
GROUP BY Clientes.id, Clientes.nombre;
