SELECT
    MIN(precio_unitario) AS precio_minimo,
    MAX(precio_unitario) AS precio_maximo,
    AVG(precio_unitario) AS precio_promedio
FROM Productos;