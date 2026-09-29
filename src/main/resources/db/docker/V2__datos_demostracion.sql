-- Datos iniciales para el entorno Docker de la práctica GET.
insert into categorias (nombre, descripcion, estado, fecha_creacion)
values ('Medicamentos', 'Productos de ejemplo para PharmaMobil', true, systimestamp);

insert into productos (nombre, precio, stock, estado, categoria_id, fecha_creacion)
select 'Paracetamol', 15.50, 100, true, id, systimestamp
from categorias where nombre = 'Medicamentos';

insert into productos (nombre, precio, stock, estado, categoria_id, fecha_creacion)
select 'Amoxicilina', 25.00, 5, true, id, systimestamp
from categorias where nombre = 'Medicamentos';

insert into productos (nombre, precio, stock, estado, categoria_id, fecha_creacion)
select 'Loratadina', 12.50, 0, false, id, systimestamp
from categorias where nombre = 'Medicamentos';
