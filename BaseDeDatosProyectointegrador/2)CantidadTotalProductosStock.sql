SELECT
    Categorias.nombre AS categoria,
    SUM(Stocks.cantidad) AS cantidad_total
FROM Categorias
LEFT JOIN Productos ON Categorias.id = Productos.categoria_id
LEFT JOIN Stocks ON Productos.id = Stocks.producto_id
GROUP BY Categorias.nombre;