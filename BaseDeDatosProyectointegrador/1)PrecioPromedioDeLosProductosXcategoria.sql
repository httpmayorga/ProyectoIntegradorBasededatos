SELECT
    Categorias.nombre AS categoria,
    AVG(Productos.precio_unitario) AS precio_promedio
FROM Categorias
LEFT JOIN Productos ON Categorias.id = Productos.categoria_id
GROUP BY Categorias.nombre;
