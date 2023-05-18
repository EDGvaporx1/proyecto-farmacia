//creación de las tablas pasadas a tercera forma normal, de forma que no haya ningún atributo multivaluado, que los atributos que no forman parte de la clave primaria, dependen de la clave primaria y por último que los atribtos que no formen parte de la clave primaria y sean independientes entre sí
//Sihubiera atributosque dependan de la clave primaria y de otro atributo, se hace otra tabla.
//He añadido la tabla localidad del paciente para contar con 8 tablas.
//En las creaciones de tabla están indicadas las claves primarias y claves foráneas en las que haya.

CREATE TABLE edglaboratorio
(
  CifLaboratorio    NUMBER(10),
  Nombre VARCHAR2(30),
  Telefono  NUMBER(9),
  Localidad  VARCHAR2(35),
  Calle  VARCHAR2(20),
  PRIMARY KEY (CifLaboratorio)
  
) ;


INSERT INTO edgLaboratorio VALUES ('1','CapsuLab','951111111','Sevilla','Pino');
INSERT INTO edgLaboratorio VALUES ('2','SaluLab','952222222','Carmona','Acebuche');
INSERT INTO edgLaboratorio VALUES ('3','EsferLab','953333333','Ecija','Almedro');
INSERT INTO edgLaboratorio VALUES ('4','EstenLab','954444444','Arahal','Cerezo');
INSERT INTO edgLaboratorio VALUES ('5','JarabLab','955555555','Carmona','Peral');
INSERT INTO edgLaboratorio VALUES ('6','GripLab','956666666','Ecija','Eucalipto');
INSERT INTO edgLaboratorio VALUES ('7','ParaLab','957777777','Alanis','Alcornoque');
INSERT INTO edgLaboratorio VALUES ('8','VendaLab','958888888','Ecija','Naranjo');


CREATE TABLE edgpaciente
(
  SeguridadSocial    NUMBER(10),
  Nombre VARCHAR2(30),
  Apellido1 VARCHAR2(19),
  Apellido2 VARCHAR2(19),
  FechaNacimiento DATE,
  Localidad VARCHAR2(35),
  Calle  VARCHAR2(20),
  PRIMARY KEY (SeguridadSocial)
  
) ;

INSERT INTO edgpaciente VALUES ('111111111','Enrique','Puente','Prado','28/02/1947','Arahal','Marmota');
INSERT INTO edgpaciente VALUES ('121212121','Martina','Iglesias','Cordero','10/11/1962','Sevilla','Ardilla');
INSERT INTO edgpaciente VALUES ('131313131','Alejandro','Toledo','Pinto','08/09/1958','Carmona','Oruga');
INSERT INTO edgpaciente VALUES ('141414141','Rosa','Murillo','Romero','16/02/1958','Carmona','Alvatros');
INSERT INTO edgpaciente VALUES ('151515151','Alejandro','Ramirez','Romero','13/03/1963','Carmona','Macagua');
INSERT INTO edgpaciente VALUES ('222222222','Anaisis','Gala','Blanco','10/12/1950','Ecija','Araña');
INSERT INTO edgpaciente VALUES ('333333333','Jose','Ramirez','Maeztu','15/09/1951','Carmona','Jirafa');
INSERT INTO edgpaciente VALUES ('444444444','Andrea','Benitez','Izquierdo','05/04/1948','Alanis','Erizo');
INSERT INTO edgpaciente VALUES ('555555555','Juan','Andrade','Gutierrez','18/07/1957','Sevilla','Rioja');
INSERT INTO edgpaciente VALUES ('666666666','Beatriz','Galdos','Siena','14/06/1960','Aracena','Ballena');
INSERT INTO edgpaciente VALUES ('777777777','Roberto','Antunez','Serrano','07/08/1962','Arahal','Perdiz');
INSERT INTO edgpaciente VALUES ('888888888','Rocio','Valverde','Romero','24/05/1964','Tocina','Canario');
INSERT INTO edgpaciente VALUES ('999999999','Esteban','Perez','Jaen','20/08/1961','Constantina','Dromedario');


CREATE TABLE edgmedicamento
(
  IdMedicamento NUMBER(10),
  CifLaboratorio NUMBER(10),
  Nombre VARCHAR2(19),
  Stock NUMBER(19),
  Caducidad DATE,
  Precio Number(6),
  PRIMARY KEY (IdMedicamento),
  CONSTRAINT CifLab1 FOREIGN KEY(CifLaboratorio) REFERENCES edglaboratorio (CifLaboratorio)
  
) ;


INSERT INTO edgmedicamento VALUES ('1','2','Salutol','24','24/05/2024','10');
INSERT INTO edgmedicamento VALUES ('2','8','Vendiloc','12','11/9/2023','10');
INSERT INTO edgmedicamento VALUES ('3','1','Capsutil','8','05/02/2025','10');
INSERT INTO edgmedicamento VALUES ('4','3','Tosemil','35','30/01/2024','10');
INSERT INTO edgmedicamento VALUES ('5','4','Mucosil','17','27/03/2024','10');
INSERT INTO edgmedicamento VALUES ('6','7','Laxitol','0',NULL,'10');
INSERT INTO edgmedicamento VALUES ('7','5','Asetol','0',NULL,'10');
INSERT INTO edgmedicamento VALUES ('8','6','Rinolab','3','06/07/2023','10');
INSERT INTO edgmedicamento VALUES ('9','1','Frindetol','3','10/11/2024','10');
INSERT INTO edgmedicamento VALUES ('10','3','Tramacil','9','27/10/2023','10');
INSERT INTO edgmedicamento VALUES ('11','1','diacetina','4','15/10/2024','10');
INSERT INTO edgmedicamento VALUES ('12','5','Flumilasa','0',NULL,'10');
INSERT INTO edgmedicamento VALUES ('13','7','Mastidol','12','19/09/2023','10');

CREATE TABLE edgEmpleado
(
IdEmpleado NUMBER(4) NOT NULL,
DNI VARCHAR2(9),
Nombre VARCHAR2 (15),
Apellido1 VARCHAR2 (15),
Apellido2 VARCHAR2 (15),
HorarioSemana1 NUMBER (15),
HorarioSemana2 NUMBER (15),
HorarioSemana3 NUMBER (15),
HorarioSemana4 NUMBER (15),
Localidad VARCHAR2 (30),
Calle VARCHAR (20),
 PRIMARY KEY (IdEmpleado)
);



INSERT INTO edgEmpleado VALUES (1,'11111111A','Juana','Argüez','Sanchez',20,15,18,22,'Brenes','Gorrión');
INSERT INTO edgEmpleado VALUES (2,'22222222A','Andrés','Ramos','Jurado',28,25,30,28,'Arahal','Jacinto');
INSERT INTO edgEmpleado VALUES (3,'33333333A','Rocio','Brito','Suarez',32,30,28,35,'Arahal','clavel');
INSERT INTO edgEmpleado VALUES (4,'44444444A','Ruben','Dario','Campos',40,35,35,38,'Burguillos','Margarita');
INSERT INTO edgEmpleado VALUES (5,'55555555A','Maria','Gonzalez','Brul',35,34,30,28,'Alanis','Geranio');
INSERT INTO edgEmpleado VALUES (6,'66666666A','Eusebio','Palma','Requena',30,32,35,30,'Carmona','Tulipan');
INSERT INTO edgEmpleado VALUES (7,'77777777B','Magadalena','Perez','Jimenez',20,15,20,18,'Mairena del Alcor','Cerro');
INSERT INTO edgEmpleado VALUES (8,'88888888B','Fernando','Perez','Ruiz',28,25,26,25,'Brenes','Nardo');


CREATE TABLE edgcompra
(
  IdMedicamento NUMBER(10),
  SeguridadSocial NUMBER(10),
  FechaCompra DATE,
  HoraCompra VARCHAR(15),
  PRIMARY KEY (IdMedicamento,SeguridadSocial,FechaCompra,HoraCompra),
  CONSTRAINT IdMedica1 FOREIGN KEY(IdMedicamento) REFERENCES edgmedicamento (IdMedicamento),
  CONSTRAINT SeguridadSocial1 FOREIGN KEY(SeguridadSocial) REFERENCES edgpaciente (SeguridadSocial)
  
) ;

INSERT INTO edgcompra VALUES ('10','141414141','21/02/2023','20:00:00');
INSERT INTO edgcompra VALUES ('6','555555555','09/01/2023','10:30:00');
INSERT INTO edgcompra VALUES ('2','555555555','09/01/2023','20:00:00');
INSERT INTO edgcompra VALUES ('4','111111111','10/01/2023','17:43:00');
INSERT INTO edgcompra VALUES ('8','111111111','10/01/2023','17:43:00');
INSERT INTO edgcompra VALUES ('1','222222222','12/01/2023','19:00:00');
INSERT INTO edgcompra VALUES ('9','555555555','15/01/2023','11:00:00');
INSERT INTO edgcompra VALUES ('5','444444444','18/01/2023','11:00:00');
INSERT INTO edgcompra VALUES ('9','151515151','20/01/2023','10:00:00');
INSERT INTO edgcompra VALUES ('7','111111111','21/01/2023','16:00:00');
INSERT INTO edgcompra VALUES ('12','777777777','28/01/2023','11:00:00');
INSERT INTO edgcompra VALUES ('10','333333333','07/02/2023','10:00:00');
INSERT INTO edgcompra VALUES ('1','888888888','07/02/2023','10:00:00');
INSERT INTO edgcompra VALUES ('3','999999999','09/02/2023','19:00:00');
INSERT INTO edgcompra VALUES ('2','555555555','09/02/2023','12:00:00');
INSERT INTO edgcompra VALUES ('6','555555555','09/02/2023','12:00:00');
INSERT INTO edgcompra VALUES ('11','666666666','10/02/2023','13:30:00');
INSERT INTO edgcompra VALUES ('8','111111111','10/02/2023','18:00:00');
INSERT INTO edgcompra VALUES ('4','111111111','10/02/2023','18:00:00');
INSERT INTO edgcompra VALUES ('6','131313131','11/02/2023','19:00:00');
INSERT INTO edgcompra VALUES ('4','121212121','13/02/2023','17:00:00');
INSERT INTO edgcompra VALUES ('3','222222222','15/02/2023','18:55:00');
INSERT INTO edgcompra VALUES ('5','444444444','18/02/2023','12:00:00');
INSERT INTO edgcompra VALUES ('9','151515151','20/02/2023','10:15:00');


CREATE TABLE edgatencionpaciente
(
  IdEmpleado NUMBER(10),
  SeguridadSocial NUMBER(10),
  FechaCita DATE,
  HoraCita VARCHAR(15),
  Peso NUMBER (6),
  Azúcar Number (5),
  Tension VARCHAR2 (8),
  PRIMARY KEY (IdEmpleado,SeguridadSocial,FechaCita,HoraCita),
  CONSTRAINT IdEmpleado11 FOREIGN KEY(IdEmpleado) REFERENCES edgEmpleado (IdEmpleado),
  CONSTRAINT SeguridadSocial2 FOREIGN KEY(SeguridadSocial) REFERENCES edgpaciente (SeguridadSocial)

) ;


INSERT INTO edgatencionpaciente VALUES ('1','444444444','15/01/2023','11:30:00','58','130','110/75');			
INSERT INTO edgatencionpaciente VALUES ('1','222222222','15/01/2023','10:30:00','75','128','130/85');
INSERT INTO edgatencionpaciente VALUES ('2','666666666','18/01/2023','17:30:00','62','110','135/85');			
INSERT INTO edgatencionpaciente VALUES ('2','777777777','18/01/2023','18:30:00','92','135','110/70');
INSERT INTO edgatencionpaciente VALUES ('3','999999999','20/01/2023','11:00:00','60','110','90/60');			
INSERT INTO edgatencionpaciente VALUES ('3','121212121','20/01/2023','12:00:00','87','125','120/80');
INSERT INTO edgatencionpaciente VALUES ('4','151515151','23/01/2023','18:00:00','71','125','125/85');			
INSERT INTO edgatencionpaciente VALUES ('5','444444444','30/01/2023','20:00:00','58','129','110/75');
INSERT INTO edgatencionpaciente VALUES ('4','222222222','30/01/2023','19:00:00','74','126','125/85');			
INSERT INTO edgatencionpaciente VALUES ('6','777777777','02/02/2023','12:00:00','90','130','110/80');
INSERT INTO edgatencionpaciente VALUES ('6','666666666','02/02/2023','11:00:00','61','109','135/85');			
INSERT INTO edgatencionpaciente VALUES ('7','131313131','04/02/2023','17:30:00','48','108','110/75');
INSERT INTO edgatencionpaciente VALUES ('8','999999999','05/02/2023','17:00:00','60','112','95/60');			
INSERT INTO edgatencionpaciente VALUES ('8','121212121','05/02/2023','18:00:00','86','120','120/80');
INSERT INTO edgatencionpaciente VALUES ('1','151515151','09/02/2023','10:00:00','70','128','115/80');			
INSERT INTO edgatencionpaciente VALUES ('2','222222222','20/02/2023','10:30:00','73','125','125/85');
INSERT INTO edgatencionpaciente VALUES ('2','444444444','20/02/2023','11:30:00','59','125','115/80');			
INSERT INTO edgatencionpaciente VALUES ('3','666666666','24/02/2023','18:00:00','60','110','130/85');

CREATE TABLE edglocalidadpaciente
(
  SeguridadSocial NUMBER(10),
  Localidad VARCHAR(40),
  CP NUMBER(6),
  PRIMARY KEY (SeguridadSocial),
  CONSTRAINT SeguridadSocial3 FOREIGN KEY(SeguridadSocial) REFERENCES edgpaciente (SeguridadSocial)
  
) ;

INSERT INTO edglocalidadpaciente VALUES ('111111111','Arahal','41710');
INSERT INTO edglocalidadpaciente VALUES ('121212121','Sevilla','41007');
INSERT INTO edglocalidadpaciente VALUES ('131313131','Carmona','41010');
INSERT INTO edglocalidadpaciente VALUES ('141414141','Carmona','41010');
INSERT INTO edglocalidadpaciente VALUES ('151515151','Carmona','41010');
INSERT INTO edglocalidadpaciente VALUES ('222222222','Ecija','41020');
INSERT INTO edglocalidadpaciente VALUES ('333333333','Carmona','41010');
INSERT INTO edglocalidadpaciente VALUES ('444444444','Alanis','41910');
INSERT INTO edglocalidadpaciente VALUES ('555555555','Sevilla','41007');
INSERT INTO edglocalidadpaciente VALUES ('666666666','Aracena','41900');
INSERT INTO edglocalidadpaciente VALUES ('777777777','Arahal','41710');
INSERT INTO edglocalidadpaciente VALUES ('888888888','Tocina','41120');
INSERT INTO edglocalidadpaciente VALUES ('999999999','Constantina','41111');

CREATE TABLE edgpedidomedicamento
(
  IdEmpleado NUMBER(10),
  CifLaboratorio NUMBER(10),
  IdMedicamento NUMBER(10),
  FechaPedido DATE,
  LlegadaPedido DATE,
  Cantidad NUMBER(38)default 0,
  PRIMARY KEY (IdEmpleado,CifLaboratorio,IdMedicamento,FechaPedido),
   CONSTRAINT IdMedic222 FOREIGN KEY(IdMedicamento) REFERENCES edgmedicamento (IdMedicamento),
  CONSTRAINT IdEmple38 FOREIGN KEY(IdEmpleado) REFERENCES edgEmpleado (IdEmpleado),
  CONSTRAINT CifLabor24 FOREIGN KEY(CifLaboratorio) REFERENCES edglaboratorio (CifLaboratorio)
  
) ;

INSERT INTO edgpedidomedicamento VALUES ('2','3','4','20/01/2023','21/01/2023','5');
INSERT INTO edgpedidomedicamento VALUES ('4','1','3','24/01/2023','26/01/2023','7');
INSERT INTO edgpedidomedicamento VALUES ('5','2','8','25/01/2023','26/01/2023','7');
INSERT INTO edgpedidomedicamento VALUES ('3','3','4','27/01/2023','28/01/2023','2');
INSERT INTO edgpedidomedicamento VALUES ('2','6','8','30/01/2023','01/02/2023','5');
INSERT INTO edgpedidomedicamento VALUES ('2','7','13','04/02/2023','05/02/2023','9');
INSERT INTO edgpedidomedicamento VALUES ('1','8','2','04/02/2023','05/02/2023','4');
INSERT INTO edgpedidomedicamento VALUES ('6','4','5','07/02/2023','09/02/2023','1');
INSERT INTO edgpedidomedicamento VALUES ('3','5','12','08/02/2023','08/02/2023','3');
INSERT INTO edgpedidomedicamento VALUES ('7','3','10','09/02/2023','10/02/2023','4');
INSERT INTO edgpedidomedicamento VALUES ('2','1','11','14/02/2023','15/02/2023','2');
INSERT INTO edgpedidomedicamento VALUES ('5','5','7','25/02/2023','27/02/2023','3');

//añadí a la tabla empleado la constricción Unique para el dni, que no es clave primaria, pero es único y no puede estar repetido.
alter table edgEmpleado
 add constraint dni23 unique (dni);

//borré y volví a añadir la constricción de la clave foránea para mostrar cómo se haría una vez creada la tabla.
 alter table edgcompra
  drop constraint SeguridadSocial1;

  alter table edgcompra
add constraint SeguridadSocial1 FOREIGN KEY (SeguridadSocial) REFERENCES edgpaciente (SeguridadSocial);

//añadí la constricción para comprobar que el campo de la cantidad no puede ser nulo en el pedido.
 alter table edgpedidomedicamento
 add constraint cantidad27
 check (Cantidad is not null);
 
 //Valores por defecto: se indican con DEFAULT, aquí adjunto un ejemplo de la tabla pedido de medicamento donde indico que la cantidad por defecto sea 0.
 //lo hago ahí como ejemplo por que no me interesa que tenga una cantidad por defecto en realidad.
CREATE TABLE edgpedidomedicamento4
(
  IdEmpleado NUMBER(10),
  CifLaboratorio NUMBER(10),
  IdMedicamento NUMBER(10),
  FechaPedido DATE,
  LlegadaPedido DATE,
  Cantidad NUMBER(38)default 0,
  PRIMARY KEY (IdEmpleado,CifLaboratorio)
);

