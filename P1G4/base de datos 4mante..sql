CREATE DATABASE umg4;
Use umg4;
CREATE TABLE aulas
(
id int (20) auto_increment  primary key,
codigo_aulas varchar(10) ,
nombre_aulas Varchar (45) ,
estatus_aulas varchar (20)
)Engine = InnoDB ;

CREATE TABLE secciones
(
id int (20) auto_increment  primary key,
codigo_secciones varchar(10) ,
nombre_secciones Varchar (45) ,
estatus_secciones varchar (20)
)Engine = InnoDB ;

CREATE TABLE jornada
(
id int (20) auto_increment  primary key,
codigo_jornada varchar(10) ,
nombre_jornada Varchar (45) ,
estatus_jornada varchar (20)
)Engine = InnoDB ;
CREATE TABLE cursos
(
id int (20) auto_increment  primary key,
codigo_cursos varchar(10) ,
nombre_cursos Varchar (45) ,
estatus_cursos varchar (20)
)Engine = InnoDB ;
