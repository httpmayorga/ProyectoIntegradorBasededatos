ALTER TABLE Productos

ADD CONSTRAINT fk_categoria
FOREIGN KEY (categoria_id) REFERENCES Categorias(id);

ALTER TABLE Stocks

ADD CONSTRAINT fk_sucursal
FOREIGN KEY (sucursal_id) REFERENCES Sucursales(id),
ADD CONSTRAINT fk_producto
FOREIGN KEY (producto_id) REFERENCES Productos(id);

ALTER TABLE Ordenes

ADD CONSTRAINT fk_cliente
FOREIGN KEY (cliente_id) REFERENCES Clientes(id),
ADD CONSTRAINT fk_sucursal
FOREIGN KEY (sucursal_id) REFERENCES Sucursales(id);

ALTER TABLE Items

ADD CONSTRAINT fk_orden
FOREIGN KEY (orden_id) REFERENCES Ordenes(id),
ADD CONSTRAINT fk_producto
FOREIGN KEY (producto_id) REFERENCES Productos(id);
