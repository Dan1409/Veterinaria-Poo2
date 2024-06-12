--------------------/Dueños/----------------
CREATE PROCEDURE USPListarDueño()
	SELECT id_dueño, nombre_dueño, dni, telefono, direccion, correo
	FROM dueño

CREATE PROCEDURE USPInsertarD(IN codigo CHAR(2), IN nombre_dueño VARCHAR(30), IN dni CHAR(8), IN telefono CHAR(9), IN direccion VARCHAR(50), IN correo VARCHAR(50))
	INSERT INTO dueño VALUES(codigo, nombre_dueño, dni, telefono, direccion, correo)
	
CREATE PROCEDURE USPEliminarD(IN codigo CHAR(2))
	DELETE FROM dueño WHERE id_dueño = codigo

CREATE PROCEDURE USPUpdateD(IN codigo CHAR(2), IN Nom VARCHAR(30), IN dn CHAR(8), IN Telef CHAR(9), IN Direcc VARCHAR(50), IN Corr VARCHAR(50))
	UPDATE dueño SET nombre_dueño = Nom, dni = dn, telefono = Telef, direccion = Direcc, correo = Corr WHERE id_dueño = codigo
    
CREATE PROCEDURE USPBuscarD(IN codigo CHAR(2))
	SELECT id_dueño,nombre_dueño,dni,telefono,direccion,correo FROM dueño WHERE id_dueño = codigo 
------------------/Mascota/-----------------

CREATE PROCEDURE USPListarMascota()
	SELECT id_mascota, nombre, raza, edad, peso, tamaño, dueño
	FROM mascota

CREATE PROCEDURE USPListDueño()
	SELECT nombre_dueño
	FROM dueño
	
CALL USPListDueño()

SELECT id_dueño,nombre_dueño FROM dueño

CALL USPListDueño()
CREATE PROCEDURE USPInsertarM(IN codigo CHAR(2), IN nombre VARCHAR(20), IN raza VARCHAR(20), IN edad VARCHAR(20), IN peso VARCHAR(20), IN tamaño VARCHAR(20), IN dueño VARCHAR(50))
	INSERT INTO mascota VALUES(codigo, nombre, raza, edad, peso, tamaño, dueño)

CREATE PROCEDURE USPEliminarM(IN codigo CHAR(2))
	DELETE FROM mascota WHERE id_mascota = codigo

CREATE PROCEDURE USPUpdateM(IN codigo CHAR(2), IN Nom VARCHAR(20), IN raz VARCHAR(20), IN ed VARCHAR(20), IN pes VARCHAR(20), IN tama VARCHAR(20), IN due VARCHAR(50))
	UPDATE mascota SET nombre = Nom, raza = raz, edad= ed, peso=pes, tamaño=tama, due=dueño WHERE id_mascota= codigo
    
CREATE PROCEDURE USPBuscarM(IN codigo CHAR(2))
	SELECT  id_mascota, nombre, raza, edad, peso, tamaño, dueño FROM mascota WHERE id_mascota = codigo 
------------------/Membresia/-----------------------

CREATE PROCEDURE USPListarCod()
	SELECT id_mem FROM membresia
CALL USPListarCod()

CREATE PROCEDURE USPListarNom()
	SELECT nombre FROM tipo
CALL 	USPListarNom()

CREATE PROCEDURE USPListarDuen()
SELECT nombre_dueño FROM dueño
CALL USPListarDuen()

CREATE PROCEDURE USPListarMembresia()
	SELECT id_mem,nombre,dueño
	FROM membresia
CALL USPListarMembresia()

CREATE PROCEDURE USPInsertarMembresia(IN codigo VARCHAR(5), IN nombre VARCHAR(20), IN dueño VARCHAR(50))
	INSERT INTO membresia VALUES(codigo,nombre,dueño)
CALL USPInsertarMembresia()

CREATE PROCEDURE USPEliminarMembresia(IN codigo VARCHAR(5))
DELETE FROM membresia WHERE id_mem = codigo

CREATE PROCEDURE USPUpdateMembresia(IN codigo VARCHAR(5), IN nomb VARCHAR(20), IN du VARCHAR(50))
UPDATE membresia SET nombre = nomb, dueño = du WHERE id_mem = codigo

CREATE PROCEDURE USPBuscarMembresia(IN codigo VARCHAR(5))
SELECT id_mem,nombre,dueño FROM membresia WHERE id_mem = codigo

DROP PROCEDURE IF EXISTS USPListarCodigo()



--------------------/Citas/-------------------

CREATE PROCEDURE USPListMascota()
	SELECT nombre
	FROM mascota
	
CREATE PROCEDURE USPListarVete()
	SELECT nombre_veteri
	FROM veterinario
	
CREATE PROCEDURE USPListarFecha()
	SELECT fecha
	FROM citas
	
CREATE PROCEDURE USPListarHora()
	SELECT hora
	FROM horas

CREATE PROCEDURE USPListarCitas()
	SELECT nombre, veterinario, fecha, hora
	FROM citas
	
CREATE PROCEDURE USPListarCodigo()
	SELECT Id_cita
	FROM cita

CREATE PROCEDURE USPListarCitas()
	SELECT Id_cita,nombre,veterinario,fecha,hora
	FROM citas
	
CREATE PROCEDURE USPInsertarC(IN codigo VARCHAR(5), IN nombre VARCHAR(29), IN veterinario VARCHAR(40), IN fecha DATE, IN hora VARCHAR(20))
	INSERT INTO citas VALUES(codigo, nombre,veterinario,fecha,hora)
	
CREATE PROCEDURE USPEliminarC(IN codigo VARCHAR(5))
	DELETE FROM citas WHERE Id_cita = codigo

CREATE PROCEDURE USPUpdateC(IN codigo VARCHAR(5), IN nom VARCHAR(29), IN vet VARCHAR(40), IN fech DATE, IN hor VARCHAR(20))
	UPDATE citas SET nombre = nom, veterinario = vet, fecha = fech, hora = hor WHERE Id_cita = codigo
    
CREATE PROCEDURE USPBuscarC(IN codigo VARCHAR(5))
	SELECT Id_cita,nombre,veterinario,fecha,hora FROM citas WHERE Id_cita = codigo 
	
CALL USPListarCitas()
----------------/Medicamentos/---------
DROP PROCEDURE IF EXISTS  USPInsertarMedicamento

DELIMITER //
CREATE PROCEDURE USPInsertarMedicamento(
    IN codigo VARCHAR(5),
    IN nombre VARCHAR(50),
    IN precio DECIMAL(10, 2),
    IN stock INT
)
BEGIN
    -- Insertar el medicamento
    INSERT INTO Medicamentos (Codigo, Nombre, Precio, Stock)
    VALUES (codigo, nombre, precio, stock);

    -- Actualizar el stock del medicamento
    UPDATE Medicamentos
    SET Stock = Stock + stock
    WHERE Codigo = codigo;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE USPListarMedicamentos()
BEGIN
    -- Obtener la lista de medicamentos
    SELECT codigo, nombre, precio, stock
    FROM medicamentos;
END //
DELIMITER ;
-----------------/Veterinario/--------
DROP PROCEDURE IF EXISTS  USPBuscarV

CREATE PROCEDURE USPListarVet()
	SELECT Id_veteri, nombre_veteri, especialidad, licencia, celular, correo
	FROM veterinario
	
CALL USPListarVet()

CREATE PROCEDURE USPInsertarV(IN codigo CHAR(2), IN nombre_veteri VARCHAR(40), IN especialidad VARCHAR(40), IN licencia VARCHAR(40), IN celular CHAR(9), IN correo VARCHAR(50))
	INSERT INTO veterinario VALUES(codigo, nombre_veteri, especialidad,  licencia, celular, correo)
	
CREATE PROCEDURE USPEliminarV(IN codigo CHAR(2))
	DELETE FROM veterinario WHERE Id_veteri = codigo

CREATE PROCEDURE USPUpdateV(IN codigo CHAR(2), IN nom VARCHAR(40), IN especi VARCHAR(40), IN licen VARCHAR(40), IN cel CHAR(9), IN corr VARCHAR(50))
	UPDATE veterinario SET nombre_veteri = nom, especialidad = especi, licencia = licen, celular = cel, correo = corr WHERE Id_veteri = codigo
    
CREATE PROCEDURE USPBuscarV(IN codigo CHAR(2))
	SELECT Id_veteri,nombre_veteri,especialidad,licencia,celular,correo FROM veterinario WHERE Id_veteri = codigo 
------------/Medicamentos 2/------------------

CREATE PROCEDURE USPListarMedi()
	SELECT codigo,nombre,precio,stock
	FROM medicamentos
	
DROP PROCEDURE IF EXISTS USPUpdateMed

CREATE PROCEDURE USPInsertarMedi(IN cod CHAR(5), IN nombre VARCHAR(50), IN precio DECIMAL(10,2),IN stock INT)
	INSERT INTO medicamentos VALUES(cod, nombre,precio,stock)
	
CREATE PROCEDURE USPEliminarMedi(IN cod CHAR(5))
	DELETE FROM medicamentos WHERE codigo = cod

CREATE PROCEDURE USPUpdateMed(IN cod CHAR(5), IN nom VARCHAR(50), IN prec DECIMAL(10,2), IN stoc INT)
	UPDATE medicamentos SET nombre = nom, precio = prec, stock = stoc WHERE codigo = cod