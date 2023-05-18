//Obtener datos de tablas, para rellenar una tabla diferente: se cre una tabla y se seleccionan los campos que quieres de otras tablas.

CREATE TABLE edgpesocita
(
  paciente VARCHAR(50),
  empleado VARCHAR(40),
  fechacita DATE,
  peso NUMBER (6),
  PRIMARY KEY (paciente,fechacita)
  ) ;

INSERT INTO edgpesocita (paciente,empleado,fechacita,peso)
SELECT p.nombre AS paciente,e.nombre AS empleado,a.fechacita,a.peso
FROM edgpaciente p
JOIN edgatencionpaciente a ON p.SeguridadSocial=a.SeguridadSocial
JOIN edgempleado e ON a.idempleado=e.idempleado;

//Consulta de actualización: Los nombres de los pacientes Alejandro pasan a llamarse Rubén.

UPDATE edgpaciente
SET nombre='Rubén'
WHERE nombre='Alejandro';

//Consultas de eliminación:
//borrar tabla.

Drop table edgpedidomedicamento4;

//eliminar una constricción.

alter table edgcompra
drop constraint SeguridadSocial1;

//eliminar una fila.

DELETE
FROM edglocalidadpaciente
WHERE CP=41710;