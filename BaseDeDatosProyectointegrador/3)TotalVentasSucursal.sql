SELECT Sucursales.nombre AS Nombre_Sucursal, SUM(Items.monto_venta) AS total_ventas
FROM Sucursales
LEFT JOIN Ordenes ON Sucursales.id = Ordenes.sucursal_id
LEFT JOIN Items ON Ordenes.id = Items.orden_id
GROUP BY Sucursales.nombre
ORDER BY Nombre_Sucursal;
