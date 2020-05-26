CREATE DATABASE umg4;
Use umg4;
CREATE TABLE alumnos
(
carnet_Alumno varchar(15) PRIMARY KEY,
nombre_Alumno Varchar (45) ,
direccion_Alumno  VARCHAR (45) ,
telefono_Alumno Varchar (45),
email_Alumno varchar (20),
Estatus_Alumno varchar (1)
)Engine = InnoDB ;
CREATE TABLE maestros
(
codigo_maestros varchar(5) PRIMARY KEY,
nombre_maestros Varchar(45) ,
direccion_maestros  VARCHAR(45) ,
telefono_maestros Varchar(45),
email_maestros varchar(20),
estatus_maestros varchar(1)
)Engine = InnoDB ;

CREATE TABLE facultades
(
codigo_Facultad varchar(5) PRIMARY KEY,
nombre_Facultad Varchar (45) ,
Estado_Facultad varchar (1),
foreign key (codigo_Facultad) references alumnos (carnet_Alumno)

)Engine = InnoDB ;

CREATE TABLE cursos
(
id int (20) auto_increment  primary key,
codigo_cursos varchar(10) ,
nombre_cursos Varchar (45) ,
estatus_cursos varchar (20)
)Engine = InnoDB ;

CREATE TABLE transaccional
(
 cuenta int (10) auto_increment ,
nombre varchar(10) ,
carnet varchar(10) ,
cararrea varchar(10) ,
clase1  varchar(10) ,
clase2  varchar(10) ,
clase3  varchar(10) ,
clase4  varchar(10) ,
clase5  varchar(10) ,
clase6  varchar(10) ,
catedratico_1 varchar(10) ,
catedratico_2 varchar(10) ,
catedratico_3 varchar(10) ,
catedratico_4 varchar(10) ,
catedratico_5 varchar(10) ,
catedratico_6 varchar(10) ,
nota_1 varchar(10) ,
nota_2 varchar(10) ,
nota_3 varchar(10) ,
nota_4 varchar(10) ,
nota_5 varchar(10) ,
nota_6 varchar(10) 
)Engine = InnoDB ;
CREATE TABLE Carreras
(
codigo_Carreras varchar(5) PRIMARY KEY,
nombre_Carreras Varchar (45) ,
Estatus_Carreras varchar (1),
foreign key (codigo_Carreras) references alumnos (carnet_Alumno)

)Engine = InnoDB ;
CREATE TABLE secciones
(
id int (20) auto_increment  primary key,
codigo_secciones varchar(10) ,
nombre_secciones Varchar (45) ,
estatus_secciones varchar (20)
)Engine = InnoDB ;



CREATE TABLE sedes
(
codigo_Sedes varchar(5) PRIMARY KEY,
nombre_Sedes Varchar (45) ,
Estatus_Sedes varchar (1),
foreign key (codigo_Sedes) references alumnos (carnet_Alumno)

)Engine = InnoDB ;
CREATE TABLE jornada
(
id int (20) auto_increment  primary key,
codigo_jornada varchar(10) ,
nombre_jornada Varchar (45) ,
estatus_jornada varchar (20)
)Engine = InnoDB ;

CREATE TABLE aulas
(
id int (20) auto_increment  primary key,
codigo_aulas varchar(10) ,
nombre_aulas Varchar (45) ,
estatus_aulas varchar (20)
)Engine = InnoDB ;

CREATE TABLE asignacionalumnos
(
codigo_carrera varchar(15) PRIMARY KEY,
codigo_sede Varchar (45) ,
codigo_jornada  VARCHAR (45) ,
codigo_seccion Varchar (45),
codigo_aula varchar (20),
codigo_curso varchar (19),
carnet_alumno varchar (19),
nota_asignacionalumon float (10,2)
)Engine = InnoDB ;

ALTER TABLE asignacionalumnos
ADD CONSTRAINT codigo_carrera
FOREIGN KEY (codigo_carrera) REFERENCES Carreras(codigo_Carreras);

ALTER TABLE asignacionalumnos
ADD CONSTRAINT codigo_sede
FOREIGN KEY (codigo_sede) REFERENCES sedes(codigo_Sedes);

ALTER TABLE asignacionalumnos
ADD CONSTRAINT codigo_jornada
FOREIGN KEY (codigo_jornada) REFERENCES Jornada(codigo_jornada);

ALTER TABLE asignacionalumnos
ADD CONSTRAINT codigo_seccion
FOREIGN KEY (codigo_seccion) REFERENCES secciones(codigo_secciones);

ALTER TABLE asignacionalumnos
ADD CONSTRAINT codigo_aula
FOREIGN KEY (codigo_aula) REFERENCES aulas(codigo_aulas);

ALTER TABLE asignacionalumnos
ADD CONSTRAINT codigo_curso
FOREIGN KEY (codigo_curso) REFERENCES Cursos(codido_Cursos);

ALTER TABLE asignacionalumnos
ADD CONSTRAINT carnet_alumno
FOREIGN KEY (carnet_alumno) REFERENCES alumnos(carnet_Alumnos);

CREATE TABLE asignacionamaestros
(
codigo_carrera varchar(5),
codigo_sede varchar(5) ,
codigo_jornada  VARCHAR(5),
codigo_seccion Varchar(5),
codigo_aula varchar(5),
codigo_curso varchar(5),
codigo_maestrolumno varchar(5)
)Engine = InnoDB ;

ALTER TABLE asignacionamaestros
ADD CONSTRAINT codigo_carrera
foreign key (codigo_carrera) references Carreras(codigo_Carreras);




