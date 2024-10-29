CREATE DATABASE viveros;

\c viveros;

-- Tabla VIVERO
CREATE TABLE Vivero (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    latitud NUMERIC(10,6) CHECK (latitud >= -90 AND latitud <= 90) NOT NULL,
    longitud NUMERIC(10,6) CHECK (longitud >= -180 AND longitud <= 180) NOT NULL
);

-- Tabla ZONA
CREATE TABLE Zona (
    id SERIAL PRIMARY KEY,
    latitud NUMERIC(10,6) CHECK (latitud >= -90 AND latitud <= 90) NOT NULL,
    longitud NUMERIC(10,6) CHECK (longitud >= -180 AND longitud <= 180) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    id_vivero INT NOT NULL,
    CONSTRAINT fk_vivero FOREIGN KEY (id_vivero) REFERENCES Vivero(id) ON DELETE CASCADE
);

-- Tabla PRODUCTO
CREATE TABLE Producto (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio NUMERIC(10,2) CHECK (precio > 0) NOT NULL,
    cantidad INT CHECK (cantidad >= 0) NOT NULL
);

-- Tabla PRODUCTO_ZONA (tabla intermedia entre Producto y Zona)
CREATE TABLE Producto_Zona (
    id_producto INT NOT NULL,
    id_zona INT NOT NULL,
    cantidad INT CHECK (cantidad >= 0) NOT NULL,
    PRIMARY KEY (id_producto, id_zona),
    CONSTRAINT fk_producto FOREIGN KEY (id_producto) REFERENCES Producto(id) ON DELETE CASCADE,
    CONSTRAINT fk_zona FOREIGN KEY (id_zona) REFERENCES Zona(id) ON DELETE CASCADE
);

-- Tabla CLIENTE
CREATE TABLE Cliente (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    bonificacion NUMERIC(5,2) CHECK (bonificacion >= 0) DEFAULT 0,
    tajinaste_plus BOOLEAN DEFAULT FALSE,
    volumen_compras NUMERIC(10,2) CHECK (volumen_compras >= 0) DEFAULT 0
);

-- Tabla EMPLEADO
CREATE TABLE Empleado (
    dni VARCHAR(9) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    productividad NUMERIC(5,2) CHECK (productividad >= 0) DEFAULT 0
);

-- Tabla Pedido
CREATE TABLE Pedido (
    id SERIAL PRIMARY KEY,
    fecha DATE NOT NULL,
    importe NUMERIC(10,2) CHECK (importe > 0) NOT NULL,
    id_cliente INT NOT NULL,
    dni_responsable VARCHAR(9),
    CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES Cliente(id) ON DELETE CASCADE,
    CONSTRAINT fk_empleado FOREIGN KEY (dni_responsable) REFERENCES Empleado(dni) ON DELETE CASCADE
);


-- Tabla HISTÓRICO_TRABAJO
CREATE TABLE Historico_Trabajo (
    dni_empleado VARCHAR(9) NOT NULL,
    id_vivero INT NOT NULL,
    id_zona INT NOT NULL,
    periodo VARCHAR(10) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE,
    PRIMARY KEY (dni_empleado, id_vivero, periodo),
    CONSTRAINT fk_empleado_hist FOREIGN KEY (dni_empleado) REFERENCES Empleado(dni) ON DELETE CASCADE,
    CONSTRAINT fk_vivero_hist FOREIGN KEY (id_vivero) REFERENCES Vivero(id) ON DELETE CASCADE,
    CONSTRAINT fk_zona_hist FOREIGN KEY (id_zona) REFERENCES Zona(id) ON DELETE CASCADE
);
