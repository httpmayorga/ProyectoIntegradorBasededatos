SELECT
    sucursal_id,
    SUM(cantidad) AS cantidad_total
FROM Stocks
GROUP BY sucursal_id;