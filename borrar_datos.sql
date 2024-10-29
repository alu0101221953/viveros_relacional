-- 1. Eliminar pedidos asociados a un cliente
DELETE FROM Pedido WHERE id_cliente = 2;  -- Esto eliminará todos los pedidos del cliente con id 2.

-- 2. Eliminar un cliente
DELETE FROM Cliente WHERE id = 2;  -- Esto eliminará el cliente con id 2 y en cascada los pedidos asociados.

-- 3. Eliminar una zona y sus asociaciones de productos
DELETE FROM Zona WHERE id = 1;  -- Esto eliminará la zona con id 1 y en cascada las entradas de Producto_Zona asociadas.

-- 4. Eliminar un vivero y sus zonas asociadas
DELETE FROM Vivero WHERE id = 3;  -- Esto eliminará el vivero con id 3 y todas las zonas asociadas debido a ON DELETE CASCADE en Zona.

-- 5. Eliminar un producto y su relación con zonas
DELETE FROM Producto WHERE id = 3;  -- Elimina el producto 'Cactus' y cualquier entrada relacionada en Producto_Zona.

-- 6. Eliminar pedidos asociados a un empleado
DELETE FROM Pedido WHERE dni_responsable = '12345678A';  -- Primero elimina los pedidos del empleado.
DELETE FROM Empleado WHERE dni = '12345678A';  -- Ahora puedes eliminar al empleado sin problemas.

-- 7. Eliminar una zona
DELETE FROM Zona WHERE id = 1;  -- Esto eliminará la zona con id 1.
