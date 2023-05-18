//select
//consulta sencilla: nombre, primer apellido y fecha de nacimiento de los pacientes

SELECT nombre, apellido1, fechanacimiento
FROM edgpaciente;

//consulta con una expresión: nombre, primer apellido y fecha de nacimiento e los pacientes cuya localidad es Arahal. el lower se pone por si no se sabe si está en mayúscula o minúscula.


SELECT nombre, apellido1, fechanacimiento
FROM edgpaciente
WHERE LOWER (localidad) like 'arahal';

//Consulta con una función: sacar el total de medicamentos en stock.

SELECT SUM (Stock) AS "Total medicamentos en almacén"
FROM edgmedicamento;

//Consulta comparando una cadena o fecha: saca el nº de la Seguridad Social de los pacientes atendidos en enero, ordenados por la id del empleado que los atendió.

 SELECT SeguridadSocial
 FROM edgatencionpaciente
 WHERE ((fechacita)>='01/01/2023' AND (fechacita)<='31/01/2023')
 ORDER BY idempleado;

 //consulta para comprobar si un dato existe: sacamos el cif del laboratorio y el nombre de los medicamentos que no tienen fecha de caducidad y la cantidad en stock.

SELECT CifLaboratorio, nombre, Stock
FROM edgmedicamento
WHERE Caducidad IS NULL;

//comprobamos si el empleado con DNI 11111111A existe.

SELECT nombre, apellido1,DNI
FROM edgEmpleado
WHERE DNI = '11111111A';

//Consulta uniendo 2 tablas:
//sacamos el nombre y primer apellido de la tabla paciente y el código postal de la tabla localidadpaciente:

SELECT p.nombre,p.apellido1,l.CP
FROM edgpaciente p
JOIN edglocalidadpaciente l ON p.SeguridadSocial=l.SeguridadSocial;

//Consulta uniendo 3 tablas: Nombre y primer apellido de la tabla paciente, CP de localidadpaciente y fecha cita de atencionpaciente.

SELECT p.nombre,p.apellido1,l.CP,a.fechacita
FROM edgpaciente p
JOIN edglocalidadpaciente l ON p.SeguridadSocial=l.SeguridadSocial
JOIN edgatencionpaciente a ON p.SeguridadSocial=a.SeguridadSocial;

//Campo calculado con consulta simple: Crea el campo pedidos enero 

SELECT SUM (Cantidad) AS "pedidos enero"
FROM edgpedidomedicamento
WHERE ((fechapedido)>='01/01/2023' AND (fechapedido)<='31/01/2023');
 
//Campo calculado con consulta múltiple: Crea el campo coste total, multiplicando la cantidad del pedido de medicamentos por el precio de la tabla medicamento. 

SELECT p.Cantidad*m.precio AS "Coste total"
FROM edgpedidomedicamento p
JOIN edgmedicamento m ON p.idmedicamento=m.idmedicamento;

//campo calculado con GROUP BY: crea el campo total agrupado por nombre de medicamento.

SELECT COUNT (p.Cantidad) AS "total",m.Nombre
FROM edgpedidomedicamento p,edgmedicamento m
WHERE p.idmedicamento=m.idmedicamento
GROUP BY m.nombre;


