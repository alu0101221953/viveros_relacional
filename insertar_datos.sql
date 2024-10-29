-- 1. Inserciones en la tabla Vivero
INSERT INTO Vivero (nombre, latitud, longitud) VALUES 
('Vivero Central', 28.45678, -16.28347),
('Vivero Norte', 28.48756, -16.27834),
('Vivero Sur', 28.12345, -16.23456),
('Vivero Este', 28.56789, -16.56789),
('Vivero Oeste', 28.67890, -16.67890);

-- 2. Inserciones en la tabla Zona
INSERT INTO Zona (latitud, longitud, tipo, id_vivero) VALUES 
(28.45678, -16.28347, 'Exterior', 1),
(28.48756, -16.27834, 'Almacen', 1),
(28.12345, -16.23456, 'Interior', 2),
(28.56789, -16.56789, 'Invernadero', 3),
(28.67890, -16.67890, 'Exterior', 4);

-- 3. Inserciones en la tabla Producto
INSERT INTO Producto (nombre, precio, cantidad) VALUES 
('Rosa', 5.50, 100),
('Orquidea', 10.00, 50),
('Cactus', 7.75, 200),
('Bonsai', 15.25, 30),
('Lavanda', 3.00, 150);

-- 4. Inserciones en la tabla Producto_Zona (asignación de productos a zonas)
INSERT INTO Producto_Zona (id_producto, id_zona, cantidad) VALUES 
(1, 1, 30),
(2, 2, 20),
(3, 3, 40),
(4, 4, 10),
(5, 5, 50);

-- 5. Inserciones en la tabla Cliente
INSERT INTO Cliente (nombre, apellidos, correo, bonificacion, tajinaste_plus, volumen_compras) VALUES 
('Juan', 'Garcia', 'juan@example.com', 10.00, TRUE, 200.00),
('Ana', 'Perez', 'ana@example.com', 5.00, FALSE, 50.00),
('Luis', 'Martin', 'luis@example.com', 20.00, TRUE, 500.00),
('Marta', 'Sanchez', 'marta@example.com', 0.00, FALSE, 30.00),
('Sara', 'Lopez', 'sara@example.com', 15.00, TRUE, 300.00);

-- 6. Inserciones en la tabla Empleado
INSERT INTO Empleado (dni, nombre, apellidos, productividad) VALUES 
('12345678A', 'Carlos', 'Hernandez', 90.00),
('23456789B', 'Beatriz', 'Ramirez', 80.00),
('34567890C', 'Pedro', 'Gonzalez', 75.00),
('45678901D', 'Laura', 'Torres', 85.00),
('56789012E', 'Raul', 'Moreno', 60.00);

-- 7. Inserciones en la tabla Pedido
INSERT INTO Pedido (fecha, importe, id_cliente, dni_responsable) VALUES 
('2024-10-01', 100.00, 1, '12345678A'),
('2024-10-05', 50.00, 2, '23456789B'),
('2024-10-10', 150.00, 3, '34567890C'),
('2024-10-15', 200.00, 4, '45678901D'),
('2024-10-20', 75.00, 5, '56789012E');

-- 8. Inserciones en la tabla Historico_Trabajo
INSERT INTO Historico_Trabajo (dni_empleado, id_vivero, id_zona, periodo, fecha_inicio, fecha_fin) VALUES 
('12345678A', 1, 1, '2024Q1', '2024-01-01', '2024-03-31'),
('23456789B', 1, 2, '2024Q2', '2024-04-01', '2024-06-30'),
('34567890C', 2, 3, '2024Q3', '2024-07-01', '2024-09-30'),
('45678901D', 3, 4, '2024Q4', '2024-10-01', '2024-12-31'),
('56789012E', 4, 5, '2024Q1', '2024-01-01', '2024-03-31');