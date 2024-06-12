INSERT INTO medicamentos(codigo,nombre,precio,stock) VALUES('M1','Isoflurano 200g','2.50','14')
INSERT INTO medicamentos(codigo,nombre,precio,stock) VALUES('M2','Desecante Gel 10g','15.00','30')
INSERT INTO medicamentos(codigo,nombre,precio,stock) VALUES('M3','Adarfac 50g','12.50','30')
INSERT INTO medicamentos(codigo,nombre,precio,stock) VALUES('M4','Ruinald Omega 60g','32.50','10')
INSERT INTO medicamentos(codigo,nombre,precio,stock) VALUES('M5','Gotas 150g','14.00','50')

INSERT INTO medicamentos(codigo,nombre,precio,stock) VALUES('M3','Adarfac 50g','12.50','30')

CREATE TABLE tipo
(
Id VARCHAR(5) NOT NULL PRIMARY KEY, 
nombre VARCHAR(50) NOT NULL,
precio VARCHAR(7) NOT NULL,
beneficio VARCHAR(50) NOT NULL,
duracion VARCHAR(50)
)
INSERT INTO tipo (Id,nombre,precio,beneficio,duracion) VALUES('T1', 'Platino', '200.00', 'Baño gratis a la semana','2 meses')
INSERT INTO tipo (Id,nombre,precio,beneficio,duracion) VALUES('T2', 'Diamante', '400.00', 'Platino + entrega a domicilio','3 meses')

CREATE TABLE membresia
(
id_mem VARCHAR(5) NOT NULL PRIMARY KEY,
nombre VARCHAR(20) NOT NULL,
dueño VARCHAR(50)
)
INSERT INTO membresia (id_mem,nombre,dueño) VALUES ('0001','Platino','Tatiana Estrada')
SELECT * FROM membresia