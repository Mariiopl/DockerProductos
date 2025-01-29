-- Crear tabla producto
CREATE TABLE IF NOT EXISTS producto (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DOUBLE NOT NULL,
    cantidad INT NOT NULL
);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Camiseta Básica', 10.99, 50);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Pantalón Vaquero', 25.50, 30);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Zapatillas Deportivas', 45.00, 20);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Sudadera con Capucha', 35.99, 40);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Chaqueta de Invierno', 75.99, 15);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Gorra Deportiva', 12.99, 60);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Reloj Digital', 50.00, 25);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Bolso de Cuero', 80.00, 10);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Cinturón de Piel', 20.99, 35);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Camisa Formal', 22.50, 45);

INSERT INTO producto (nombre, precio, cantidad) VALUES ('Sandalias de Verano', 18.99, 40);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Mochila Escolar', 30.50, 25);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Gafas de Sol', 15.99, 50);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Botas de Montaña', 95.99, 12);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Pijama de Algodón', 28.99, 30);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Bufanda de Lana', 14.50, 55);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Guantes Térmicos', 12.99, 60);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Vestido de Fiesta', 60.00, 10);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Zapatos de Cuero', 65.50, 20);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Sombrero de Paja', 15.00, 50);

INSERT INTO producto (nombre, precio, cantidad) VALUES ('Pantalón Deportivo', 22.00, 35);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Camiseta Estampada', 12.99, 70);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Bañador de Hombre', 19.99, 25);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Bañador de Mujer', 22.99, 20);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Toalla de Playa', 17.50, 30);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Zapatos de Fiesta', 70.00, 15);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Camiseta sin Mangas', 9.99, 55);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Falda de Algodón', 24.99, 20);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Chaleco Acolchado', 45.00, 10);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Chándal Completo', 60.99, 18);

INSERT INTO producto (nombre, precio, cantidad) VALUES ('Zapatillas Casual', 38.00, 25);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Abrigo Largo', 120.00, 8);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Jersey de Lana', 40.00, 22);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Polo Deportivo', 20.99, 30);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Chal de Seda', 55.00, 12);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Mochila de Viaje', 65.00, 14);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Zapatos de Seguridad', 80.00, 10);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Cartera de Cuero', 30.00, 40);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Maleta con Ruedas', 95.99, 5);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Mono de Trabajo', 45.50, 20);

INSERT INTO producto (nombre, precio, cantidad) VALUES ('Ropa Interior Térmica', 20.00, 25);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Corbata de Seda', 15.99, 40);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Pañuelo de Bolsillo', 9.50, 35);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Camisa de Lino', 30.99, 18);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Shorts de Verano', 14.50, 30);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Zapatos Planos', 25.99, 25);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Bata de Baño', 50.00, 12);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Camiseta Polo', 18.99, 50);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Zapatos Oxford', 75.00, 8);
INSERT INTO producto (nombre, precio, cantidad) VALUES ('Pantalón Chino', 35.50, 15);


COMMIT;
