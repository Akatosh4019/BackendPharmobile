-- Entidades base adicionales para pruebas locales. Flyway ejecuta V3 una sola vez.
-- Las ventas y sus detalles se generan mediante la API; no se precargan.
insert into categorias (nombre, descripcion, estado, fecha_creacion)
values ('Cuidado personal', 'Articulos de ejemplo para pruebas locales', true, systimestamp);

insert into productos (nombre, precio, stock, estado, categoria_id, fecha_creacion)
select 'Alcohol medicinal', 8.50, 40, true, id, systimestamp
from categorias where nombre = 'Cuidado personal';

insert into clientes (dni, nombres, apellidos, email, telefono, direccion, estado, fecha_creacion)
values ('00000001', 'Ana', 'Perez Demo', 'ana.perez@example.com', '900000001', 'Direccion de prueba 1', true, systimestamp);

insert into clientes (dni, nombres, apellidos, email, telefono, direccion, estado, fecha_creacion)
values ('00000002', 'Luis', 'Garcia Demo', 'luis.garcia@example.com', '900000002', 'Direccion de prueba 2', true, systimestamp);
