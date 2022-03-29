USE intellinet
GO
CREATE TABLE PERSON(
	ID INT, 
	FileXML xml
)
GO

INSERT INTO PERSON VALUES(
	1,
	'<person>
		<firstName>
			Jon
		</firstName>
		<lastName>
		Johnson
		</lastName>
	</person>'
)
GO
SELECT * FROM PERSON
GO

/*Variables XML*/
DECLARE @fileXML AS XML = 
N'
	?XML VERSION = "1.0" ENCODING= "UTF-8"
	<Book>
		<projects>
			<project name = "Book1" date="2009-01-20">
				<editions>
					<edition languaje = "English">En.Book1.com</edition>
					<edition languaje = "German">Ge.Book1.com</edition>
					<edition languaje = "French">Fr.Book1.com</edition>
					<edition languaje = "Polish">Pl.Book1.com</edition>
				</editions>
			</project>
		</projects>
	</Book>
'
/*SELECT XML */
SELECT * FROM PERSON FOR XML PATH('persona')
GO
SELECT * FROM PERSON FOR XML AUTO
GO
SELECT * FROM PERSON FOR XML RAW, ROOT('PERSON')
GO

/*Nueva tabla*/

CREATE TABLE Arauco ( 
    id INT PRIMARY KEY NOT NULL, 
    NOMBRE VARCHAR( 50 ), 
    APELLIDO_PATERNO VARCHAR( 50 ), 
    COMUNA VARCHAR( 50 ), 
    LOCALIDAD VARCHAR( 50 ), 
    VILLA VARCHAR( 50 ), 
    DIRECCION VARCHAR( 50 ), 
    TIPO_BIEN VARCHAR( 50 ), 
    NORMATIVA VARCHAR( 50 ) 

); 


INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('1','Arauco','Laraquete','El pinar','Pasaje 10','Casa','Rural','Honorina','Muñoz Molina'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('2','Arauco','Laraquete','Gabriela Mistral','Gabriela Mistral','Casa','Rural','Marilyn Marlene','Arratia Rivas'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('3','Arauco','Laraquete','Sector Estación','San Pedro (Manzan f lote 1)','Casa','Rural','Francisco Segundo','Ascencio Vera'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('4','Arauco','Laraquete','Los copihues','Los Copihues','Casa','Rural','Susana Angela','Mora Soutullo'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('5','Arauco','Laraquete','Sector Estación','Sector Estación sitio 7, Mz A','Casa','Rural','Bernarda del Carmen','Fonseca'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('6','Arauco','Laraquete','Alberto Blest Gana','Alberto Blest Gana','Casa','Rural','Segundo Ramón','Paz Zambrano'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('7','Arauco','Laraquete','Población el boldo','Psje. Los Acacios','Casa','Rural','Flor Esilda','Bustos Riffo'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('8','Arauco','Arauco','VILLA Belén','Israel','Casa','Rural','Cecilia ','Gallardo Tapia'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('9','Arauco','Arauco','VILLA Belén','Israel','Casa','Rural','Samuel Segundo','Alarcón Valdebenito'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('10','Arauco','Arauco','VILLA Belén','Psje. Jerusalén','Casa','Rural','Sonia Inés','Leal Leal'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('11','Arauco','Arauco','VILLA Belén','Nazaret','Casa','Rural','Lucila ','Aravena Hernandez'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('12','Arauco','Arauco','VILLA Belén','Psje. Galilea','Casa','Rural','Juan','Carrasco Vega'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('13','Arauco','Arauco','Los Pescadores','O´higgins','Casa','Urbana','Maritza ','Lagos Oliva '); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('14','Arauco','Arauco','Nueva Fresia','Fresia','Casa','Urbana','Irma Eliana','Recabal Silva'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('15','Arauco','Arauco','Nueva Fresia','Chacabuco','Casa','Urbana','José','Medina Cisternas'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('16','Arauco','Arauco','12 de Abril','Psje. Uruguay','Casa','Urbana','Rosa Eulalia','Vera Meli'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('17','Arauco','Laraquete','Sector Cancha','Francisco Coloane','Casa','Rural','Flilomena del Carmen','Loyola Cortéz'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('18','Arauco','Arauco','Los Pescadores','Fresia','Casa','Urbana','Juan','Ramos Peña'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('19','Arauco','Arauco','12 de Abril','California','Casa','Urbana','Edita','Salgado Ortiz'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('20','Arauco','Arauco','Nueva Fresia','Caupolicán','Casa','Urbana','Rosa Elena','Romero benavente'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('21','Arauco','Arauco','Nueva Fresia','Chacabuco','Casa','Urbana','Ema del Carmen','Rocha saez'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('22','Arauco','Arauco','Fernando Santivan','Psje. 8','Casa','Urbana','María Angélica','Martinez Aravena'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('23','Arauco','Arauco','California','california','Casa','Urbana','Heraldo','Cuevas Orellana'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('24','Arauco','Arauco','California','California','Casa','Urbana','Sergio','Ibañez Torres'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('25','Arauco','Arauco','California','California','Casa','Urbana','Moises','Alarcón salazar'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('26','Arauco','Arauco','12 de Abril','California','Casa','Urbana','Graciela','Salazar Hermosilla'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('27','Arauco','Arauco','Pobl. Nueva Esperanza','Arturo Prat','Casa','Urbana','José Maria','fierro Muñoz'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('28','Arauco','Arauco','California','Arturo Prat','Casa','Urbana','Magaly del Pilar','Rivera Retamal'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('29','Arauco','Arauco','12 de Abril','California','Casa','Urbana','Hilda Ester','Contreras Pincheira'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('30','Arauco','Laraquete','Pobl. Pablo Neruda','Pablo Neruda','Casa','Rural','Juan Honorino ','Fredes Carrillo'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('31','Arauco','Laraquete','Arauco','Estación','Casa','Rural','Leonardo Manuel','Carrasco Palma'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('32','Arauco','Arauco','Arauco','Los Duraznos','Casa','Urbana','Marta','Faundez Baeza'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('33','Arauco','Arauco','San Martin','Pasaje Fresia','Casa','Urbana','Alejandra del Carmen','Contreras Rodriguez'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('34','Arauco','Arauco','Arauco','California','Casa','Urbana','Tania Angelica','VILLAr Cariaga'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('35','Arauco','Arauco','Arauco','California','Casa','Urbana','Irene del Carmen','Aguilera Rivera'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('36','Arauco','Arauco','Arauco','Los Acacios','Casa','Urbana','Estela de Las Mercedes','Zapata Arriagada'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('37','Arauco','Arauco','Arauco','Los Sauces Pooniente','Casa','Urbana','Roguers Alberto','Morales Navarrete'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('38','Arauco','Arauco','Los Pescadores','Ohiggins','Casa','Urbana','Maria margarita','Fuentealba vallejos'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('39','Arauco','Arauco','Pobl. Nueva fresia','chacabuco','Casa','Urbana','Julio ','Avila Friz'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('40','Arauco','Arauco','Pobl. Los pinos','Los Sauces poniente','Casa','Urbana','Luis Ricardo','Faundez Retamal'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('41','Arauco','Ramadilla','Arauco','Ignacio Carrera Pinto','Casa','Rural','Juan','Ortiz fuentealba'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('42','Arauco','Ramadilla','Arauco','Arturo Perez Canto','Casa','Rural','Ana Mercedes','Perez Perez'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('43','Arauco','Ramadilla','Arauco','10 de Julio','Casa','Rural','Isolina Sofia','Castillo Molina'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('44','Arauco','Ramadilla','Arauco','Ignacio Carrera Pinto','Casa','Rural','Irma del Carmen','Díaz Ortiz'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('45','Arauco','Ramadilla','Arauco','Ignacio Carrera Pinto','Casa','Rural','Maria del Carmen','Alarcon Pereira'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('46','Arauco','Arauco','10 de Julio','Julio Montt','Casa','Urbana','Santos Alejandro','Altamirano Pinto'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('47','Arauco','Arauco','10 de Julio','Julio Montt','Casa','Urbana','Jose Eduardo','<<<<<<<<<<<<<<<<<<<'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('48','Arauco','Arauco','10 de Julio','Arturo Perez Canto','Casa','Urbana','Maria Ester ','Carrillo carrillo'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('49','Arauco','Arauco','10 de Julio','Arturo Perez Canto','Casa','Urbana','Celia del transito','Santibañez figueroa'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('50','Arauco','Ramadilla','Arauco','Ignacio Carrera Pinto','Casa','Rural','Mercedes del Carmen','Cuevas Manriquez'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('51','Arauco','Arauco','10 de Julio','Julio Montt','Casa','Urbana','Roberto','Rivas Avello'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('52','Arauco','Arauco','Arauco','Cochranne','Casa','Urbana','Maria Ximena','Puga Wilson '); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('53','Arauco','Arauco','Arauco','Cochranne','Casa','Urbana','Patricia Uberlinda','Gutierrez Canales'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('54','Arauco','Arauco','Arauco','Cochranne','Casa','Urbana','Enrique','PampaloniSiley'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('55','Arauco','Arauco','VILLA Esmeralda','Lleu- Lleu','Casa','Urbana','María Isabel','Saez Carrasco'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('56','Arauco','','VILLA Esmeralda','Psje. Bío Bío','Casa','Urbana','Flor Marina','Peña Mendoza'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('57','Arauco','Arauco','VILLA Esmeralda','Psje. Bio Bio','Casa','Urbana','Mónica del Carmen','Martinez Carrera'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('58','Arauco','Arauco','VILLA Esmeralda','Lleu- Lleu','Casa','Urbana','Irma','Maldonado Montalba'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('59','Arauco','Arauco','VILLA Esmeralda','Psje. Nº1','Casa','Urbana','Juan Alberto','Lara Rios'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('60','Arauco','Arauco','VILLA Esmeralda','Psje. Nº1','Casa','Urbana','Fresia del Carmen','Trangulao Astorga'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('61','Arauco','Arauco','Arauco','California','Casa','Urbana','Irma del Carmen','Gallardo Toledo'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('62','Arauco','Arauco','VILLA Esmeralda','Lleu- Lleu','Casa','Urbana','Carlos Alberto','Rivera Retamal'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('63','Arauco','Arauco','VILLA Esmeralda','Psje. Bio Bio','Casa','Urbana','Isabel Zunilda','Encina Bello'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('64','Arauco','Arauco','VILLA Esmeralda','Psje. Nº1','Casa','Urbana','Segundo Ruperto','Marín Rocha'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('65','Arauco','Arauco','VILLA Esmeralda','Psje. Bio Bio','Casa','Urbana','Andrea Araceli','Vilalobos VILLAlobos'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('66','Arauco','Arauco','El pinar','Psje. Nº3','Casa','Rural','Pedro','Gonzalez Sanzana'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('67','Arauco','Laraquete','Arauco','La Cantera','Casa','Rural','Nicolas','Fierro Monsalvez'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('68','Arauco','Laraquete','Manzana n sitio 39','Sector Escuela','Casa','Rural','Maria Irma','Gonzalez contreras'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('69','Arauco','Laraquete','Pobl. El pinar','Psje. 4','Casa','Rural','Uberlinda','Mella Arellano'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('70','Arauco','Laraquete','Arauco','Piedra Cruz','Casa','Rural','Yenny','Pardo Perez'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('71','Arauco','Laraquete','Manzana Ñ 12','Sector Escuela','Casa','Rural','Basilia','Vasquez Rivera'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('72','Arauco','Arauco','Arauco','California','Casa','Urbana','Juan Plinio','Hermosilla Contreras'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('73','Arauco','Arauco','Arauco','California','Casa','Urbana','Julián','Matamala Escobar'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('74','Arauco','Arauco','VILLA Esmeralda','Psje. Nº1','Casa','Urbana','Juan','Lara Rios'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('75','Arauco','Arauco','VILLA Esmeralda','Psje. Bio Bio','Casa','Urbana','Patricia Jeannette','Fernandez Martinez'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('76','Arauco','Arauco','VILLA Esmeralda','Lleu- Lleu','Casa','Urbana','Ana Luisa','Lincura Boguen'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('77','Arauco','Arauco','Nueva Esperanda','Lleu- Lleu','Casa','Urbana','María Isabel','Hernandez López'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('78','Arauco','Arauco','Nueva Esperanda','Lleu- Lleu','Casa','Urbana','Yasna Evelyn','Cuevas Flores'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('79','Arauco','Arauco','VILLA Esmeralda','Lleu- Lleu','Casa','Urbana','Carlos Aladino','Carrasco Carrasco'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('80','Arauco','Arauco','Pobl. Entre Lagos','Calafquen','Casa','Urbana','José Luis','Flores Terán'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('81','Arauco','Arauco','Nueva Esperanda','Lleu- Lleu','Casa','Rural','Juan Bautista','Cuevas Orellana'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('82','Arauco','Arauco','Pobl. 12 de Abril','California','Casa','Urbana','José Aquiles','Aguayo Chávez'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('83','Arauco','Arauco','Arauco','San Martín','Casa','Urbana','Herminio','Ruiz Cuevas'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('84','Arauco','Arauco','Pobl. 12 de Abril','Psje. Bolivia','Casa','Urbana','Edina','Alarcón Salazar'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('85','Arauco','Carampangue','Arauco','Vicente Millan','Casa','Rural','Ramón Segundo','Olivares Jerez'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('86','Arauco','Carampangue','Arauco','Vicente Millan','Casa','Rural','Patricio Segundo','Ancatrio Cruz'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('87','Arauco','Arauco','California','Psje. Bolivia','Casa','Urbana','Nilda','Meza Maldonado'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('88','Arauco','Arauco','Pobl. Rabil','El salvador','Casa','Urbana','María Cristina ','Biava  Gonzalez'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('89','Arauco','Arauco','Arauco','Los acacios Oriente','Casa','Urbana','Rigoberto','Caceres Monsalve'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('90','Arauco','Arauco','Pobl. California','California','Casa','Urbana','Pedro Segundo','Carrillo Claro'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('91','Arauco','Arauco','VILLA ESMERALDA','PASAJE 1 CASA','Casa','Urbana','Segundo  ','Marin Concha'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('92','Arauco','Arauco','Arauco','California','Casa','Urbana','Mario','Escobar Navarro'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('93','Arauco','Arauco','12-abr','Psje. Argentina','Casa','Urbana','Demesio del Tránsito','Gutierrez Navarro'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('94','Arauco','Arauco','Miramar','Fresia','Casa','Urbana','Carlos','Guerrero Miranda'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('95','Arauco','Arauco','Pobl. Los pinos','Los Duraznos','Casa','Urbana','Norma','hermosilla Sanhueza'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('96','Arauco','Arauco','Pobl. Los pinos','Ohiggins','Casa','Urbana','Marcela Elizabeth','Espejo Valenzuela'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('97','Arauco','Arauco','Pobl. Los pinos','Ohiggins','Casa','Urbana','Teresa del Carmen','Guerrero Leal'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('98','Arauco','Arauco','Pobl.California','California','Casa','Urbana','Maria Angelica','Román Ramos'); 

INSERT INTO Arauco(id, COMUNA, LOCALIDAD, VILLA, DIRECCION, TIPO_BIEN, NORMATIVA, NOMBRE, APELLIDO_PATERNO) VALUES('99','Arauco','Arauco','','Serrano','casa','Urbana','René Luis Alberto','Aguirre Vignolo'); 

 /*View data to XML*/
select  * from [dbo].[Arauco] FOR XML PATH('hiltz')   
select  * from [dbo].[Arauco] FOR XML auto 
select  * from [dbo].[Arauco] FOR XML RAW , root('rem') 

/*JSON*/
DECLARE @json NVARCHAR(MAX) = N'{
"Album":"Wish You Were Here",
"Year":1975,
"IsVinyl":true
}';

DECLARE @members NVARCHAR( 500 ) = N'["Gilmour", "Waters", "Wright", "Mason"]';
PRINT JSON_MODIFY(@json, '$.Memmbers', @members);
GO
-----
DECLARE @json NVARCHAR(MAX) = N'{
"Album":"Wish You Were Here",
"Year":1975,
"IsVinyl":true
}';
DECLARE @temp  NVARCHAR(MAX)= '';
SELECT 
	JSON_VALUE(@json, '$.Album') AS ALBUM,
	JSON_VALUE(@json, '$.Year') AS YR,
	JSON_VALUE(@json, '$.IsVinyl') AS isVinyl,
	JSON_VALUE(@json, '$.Members') AS MEMBER;

SELECT REPLACE(@temp, '\"', '"');
SELECT REPLACE(@json, 'Members":"[', 'Members":');
SELECT REPLACE(@json, '"]"}', 'Members""]}');
GO
-----

/*Funciones con valores de retorno*/
SELECT Liverpool.dbo.semana(4, 20)
GO
/*Crear funcion*/
CREATE FUNCTION MITABLA()
	RETURNS TABLE AS RETURN(
		SELECT * FROM intellinet.dbo.Arauco
	);
GO
SELECT id, NOMBRE FROM dbo.MITABLA();
GO