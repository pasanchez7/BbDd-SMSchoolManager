-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.73-community-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema sm_school_manager
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ sm_school_manager;
USE sm_school_manager;

--
-- Table structure for table `sm_school_manager`.`alumno`
--

DROP TABLE IF EXISTS `alumno`;
CREATE TABLE `alumno` (
  `idAlumno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `DNI` varchar(10) NOT NULL,
  `Sexo` varchar(15) NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Localidad` varchar(30) NOT NULL,
  `Telefono` varchar(60) NOT NULL DEFAULT '',
  `Telefono_Movil` varchar(60) NOT NULL DEFAULT '',
  `idestado_alumno` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idAlumno`),
  KEY `FK_alumno_1` (`idestado_alumno`),
  CONSTRAINT `FK_alumno_1` FOREIGN KEY (`idestado_alumno`) REFERENCES `estado_alumno` (`idestado_alumno`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`alumno`
--

/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` (`idAlumno`,`Nombre`,`Apellido`,`DNI`,`Sexo`,`Fecha_Nacimiento`,`Direccion`,`Localidad`,`Telefono`,`Telefono_Movil`,`idestado_alumno`) VALUES 
 (1,'Pablo Alejandro','Sanchez','121212','Masculino','1991-10-12','garay 1691','mina clavero','00','354416615017',1),
 (2,'ezequiel','moyano','12345','Masculino','2018-06-14','sadsa','sadsad','23213','213213',1),
 (3,'candela','ramirez','123123','Femenino','2018-06-14','qweqwe','qweqwe','131123','123213213',1),
 (4,'lorena','gomez','321','Femenino','2018-06-18','sadsad','sadasd','23123','213123213',1),
 (5,'fabricio','moyano','1212','Masculino','2018-06-19','garay','cordoba','12','1212',1),
 (6,'carlos','dangelo','87654','Masculino','2005-07-14','garay 1816','cordoba','65432','654321',1),
 (7,'Fabricio','Moyano','1816','Masculino','2018-11-06','garay 1816','cba','7543','75432',1),
 (8,'Gabriel','Caseres','1691','Masculino','2005-11-25','Garay 65432','Cordoba','765432','564321',1),
 (9,'Fernanda','Lopez','1913','Femenino','2005-11-21','dfsdfsdf','fsdsdfsd','435345','345345345435',1),
 (10,'jessica','guzman','666','Femenino','2005-01-07','dfsdfsdfsdf','sdsdfsdf','435345345','34534555345345',1);
INSERT INTO `alumno` (`idAlumno`,`Nombre`,`Apellido`,`DNI`,`Sexo`,`Fecha_Nacimiento`,`Direccion`,`Localidad`,`Telefono`,`Telefono_Movil`,`idestado_alumno`) VALUES 
 (11,'Nicolas','Fernandez','1904','Masculino','1995-04-22','arco de cba','cordoba','12433243234','23423432234',2),
 (12,'Lucia','Perez','44320930','Femenino','2005-05-05','Buenos Aires 322','Cordoba','4513211','1543254',1),
 (13,'aaaaa','vbbbbbb','123456','Masculino','2020-10-21','dsfsdfsdf','dsfsdfsdf','5443543','34543',1),
 (14,'pablo','sdsdsdf','3213123123','Masculino','2020-10-28','234234','sdfsdf','23423','324234',1);
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`asig_docente`
--

DROP TABLE IF EXISTS `asig_docente`;
CREATE TABLE `asig_docente` (
  `idasig_docente` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcurso_division` int(10) unsigned NOT NULL,
  `idasignatura` int(10) unsigned NOT NULL,
  `idusuarios` int(10) unsigned NOT NULL,
  `idciclolectivo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idasig_docente`),
  KEY `FK_asig_docente_2` (`idasignatura`),
  KEY `FK_asig_docente_4` (`idciclolectivo`),
  KEY `FK_asig_docente_1` (`idcurso_division`),
  KEY `FK_asig_docente_3` (`idusuarios`),
  CONSTRAINT `FK_asig_docente_1` FOREIGN KEY (`idcurso_division`) REFERENCES `curso_division` (`idcurso_division`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_asig_docente_2` FOREIGN KEY (`idasignatura`) REFERENCES `asignatura` (`idasignatura`),
  CONSTRAINT `FK_asig_docente_3` FOREIGN KEY (`idusuarios`) REFERENCES `usuarios` (`idusuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_asig_docente_4` FOREIGN KEY (`idciclolectivo`) REFERENCES `ciclolectivo` (`idciclolectivo`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`asig_docente`
--

/*!40000 ALTER TABLE `asig_docente` DISABLE KEYS */;
INSERT INTO `asig_docente` (`idasig_docente`,`idcurso_division`,`idasignatura`,`idusuarios`,`idciclolectivo`) VALUES 
 (9,1,2,9,2),
 (10,1,4,9,2),
 (11,1,5,9,2),
 (12,1,6,9,2),
 (13,1,7,9,2),
 (14,1,8,9,2),
 (15,1,9,9,2),
 (16,1,10,9,2),
 (17,1,11,9,2),
 (18,1,12,9,2),
 (23,4,17,9,2),
 (24,4,18,9,2),
 (27,1,1,9,2),
 (28,1,3,9,2),
 (41,1,2,16,3),
 (42,1,12,16,3),
 (43,2,13,16,3),
 (44,3,2,16,3),
 (45,1,1,16,3),
 (46,1,3,16,3),
 (47,1,4,16,3),
 (48,1,5,16,3),
 (49,1,6,16,3),
 (50,1,7,16,3),
 (51,1,8,16,3),
 (52,1,9,16,3),
 (53,1,10,16,3),
 (54,1,11,16,3),
 (55,2,1,20,3),
 (56,5,17,16,3),
 (57,5,30,16,3),
 (58,5,18,16,3);
/*!40000 ALTER TABLE `asig_docente` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`asignacion_materias`
--

DROP TABLE IF EXISTS `asignacion_materias`;
CREATE TABLE `asignacion_materias` (
  `idasignacion_materias` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcurso` int(10) unsigned NOT NULL,
  `idasignatura` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idasignacion_materias`),
  KEY `FK_asignacion_materias_1` (`idcurso`),
  KEY `FK_asignacion_materias_2` (`idasignatura`),
  CONSTRAINT `FK_asignacion_materias_1` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`) ON UPDATE CASCADE,
  CONSTRAINT `FK_asignacion_materias_2` FOREIGN KEY (`idasignatura`) REFERENCES `asignatura` (`idasignatura`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`asignacion_materias`
--

/*!40000 ALTER TABLE `asignacion_materias` DISABLE KEYS */;
INSERT INTO `asignacion_materias` (`idasignacion_materias`,`idcurso`,`idasignatura`) VALUES 
 (1,1,1),
 (2,1,2),
 (3,1,3),
 (4,1,4),
 (5,1,5),
 (6,1,6),
 (7,1,7),
 (8,1,8),
 (9,1,9),
 (10,1,10),
 (11,1,11),
 (12,1,12),
 (13,2,1),
 (14,2,2),
 (15,2,13),
 (16,2,3),
 (17,2,14),
 (18,2,6),
 (19,2,7),
 (20,2,12),
 (21,2,8),
 (22,2,9),
 (23,2,10),
 (24,2,11),
 (25,3,1),
 (26,3,2),
 (27,3,4),
 (28,3,13),
 (29,3,5),
 (30,3,14),
 (31,3,6),
 (32,3,7),
 (33,3,12),
 (34,3,15),
 (35,3,9),
 (36,3,10),
 (37,3,11),
 (38,4,17),
 (39,4,18),
 (40,4,19),
 (41,4,20),
 (42,4,21),
 (43,4,22),
 (44,4,23),
 (45,4,24),
 (46,4,25),
 (47,4,26),
 (48,4,27),
 (49,4,28),
 (50,4,29),
 (51,5,17),
 (52,5,30),
 (53,5,18),
 (54,5,19),
 (55,5,20),
 (56,5,21),
 (57,5,22),
 (58,5,23),
 (59,5,25),
 (60,5,31),
 (61,5,33),
 (62,5,34),
 (63,5,32),
 (64,6,17),
 (65,6,35),
 (66,6,36),
 (67,6,20),
 (68,6,21),
 (69,6,22),
 (70,6,37),
 (71,6,38),
 (72,6,39),
 (73,6,40),
 (74,6,41),
 (75,6,42),
 (76,6,43),
 (77,7,44),
 (78,7,45),
 (79,7,46),
 (80,7,47);
INSERT INTO `asignacion_materias` (`idasignacion_materias`,`idcurso`,`idasignatura`) VALUES 
 (81,7,48),
 (82,7,49),
 (83,7,50),
 (84,7,51);
/*!40000 ALTER TABLE `asignacion_materias` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`asignatura`
--

DROP TABLE IF EXISTS `asignatura`;
CREATE TABLE `asignatura` (
  `idasignatura` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `idplanestudio` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idasignatura`),
  KEY `FK_asignatura_1` (`idplanestudio`),
  CONSTRAINT `FK_asignatura_1` FOREIGN KEY (`idplanestudio`) REFERENCES `planestudio` (`idplanestudio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`asignatura`
--

/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
INSERT INTO `asignatura` (`idasignatura`,`nombre`,`idplanestudio`) VALUES 
 (1,'Lengua y Literatura',1),
 (2,'Matemática',1),
 (3,'Biología',1),
 (4,'Física',1),
 (5,'Geografía',1),
 (6,'Inglés',1),
 (7,'Educación Artística',1),
 (8,'Ciudadanía y Participación',1),
 (9,'Educación Física',1),
 (10,'Dibujo Técnico',1),
 (11,'Taller-Laboratorio',1),
 (12,'Educación Tecnológica',1),
 (13,'Química',1),
 (14,'Historia',1),
 (15,'Formación para la Vida y el Trabajo',1),
 (17,'Lengua y Literatura',2),
 (18,'Geografía',2),
 (19,'Historia',2),
 (20,'Inglés',2),
 (21,'Educación Artística',2),
 (22,'Educación Física',2),
 (23,'Matemática',2),
 (24,'Biología',2),
 (25,'Física',2),
 (26,'Tecnología de los Materiales',2),
 (27,'Representación Gráfica e Interpretación de Planos',2),
 (28,'Química General e Inorgánica',2),
 (29,'Electrotecnia y Electrónica Industrial',2),
 (30,'Psicología',2),
 (31,'Energías Renovables y Ambiente',2),
 (32,'Química  Analitica General e Instrumental',2),
 (33,'Operación y Control de Procesos I',2);
INSERT INTO `asignatura` (`idasignatura`,`nombre`,`idplanestudio`) VALUES 
 (34,'Química Orgánica',2),
 (35,'Folosofía',2),
 (36,'Ciudadania y Política',2),
 (37,'Análisis Matemático',2),
 (38,'Economía y gestión de la Producción Industrial',2),
 (39,'Informática Aplicada a Procesos',2),
 (40,'Procesos Microbiológicos',2),
 (41,'Operación y Control de Procesos II',2),
 (42,'Proceso Productivo I',2),
 (43,'Automatización y Control de Procesos Industriales',2),
 (44,'Inglés Técnico',2),
 (45,'Marco Jurídico de las Actividades Industriales',2),
 (46,'Higiene y Seguridad Laboral',2),
 (47,'Emprendimiento Productivo',2),
 (48,'Control Estadístico de la Producción',2),
 (49,'Proceso Productivo II',2),
 (50,'Tratamiento de Emisiones',2),
 (51,'Formación en Ambiente de Trabajo',2);
/*!40000 ALTER TABLE `asignatura` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`ciclolectivo`
--

DROP TABLE IF EXISTS `ciclolectivo`;
CREATE TABLE `ciclolectivo` (
  `idciclolectivo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `año` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idciclolectivo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`ciclolectivo`
--

/*!40000 ALTER TABLE `ciclolectivo` DISABLE KEYS */;
INSERT INTO `ciclolectivo` (`idciclolectivo`,`año`) VALUES 
 (1,2017),
 (2,2018),
 (3,2020),
 (4,2021);
/*!40000 ALTER TABLE `ciclolectivo` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`curso`
--

DROP TABLE IF EXISTS `curso`;
CREATE TABLE `curso` (
  `idcurso` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(10) NOT NULL,
  `idnivel` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idcurso`),
  KEY `FK_curso_1` (`idnivel`),
  CONSTRAINT `FK_curso_1` FOREIGN KEY (`idnivel`) REFERENCES `nivel` (`idnivel`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`curso`
--

/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` (`idcurso`,`Descripcion`,`idnivel`) VALUES 
 (1,'1° Año',1),
 (2,'2° Año',1),
 (3,'3° Año',1),
 (4,'4° Año',2),
 (5,'5° Año',2),
 (6,'6° Año',2),
 (7,'7° Año',2);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`curso_division`
--

DROP TABLE IF EXISTS `curso_division`;
CREATE TABLE `curso_division` (
  `idcurso_division` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcurso` int(10) unsigned NOT NULL,
  `division` varchar(5) NOT NULL,
  `idturno` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idcurso_division`) USING BTREE,
  KEY `FK_curso_division_1` (`idcurso`),
  KEY `FK_curso_division_2` (`idturno`),
  CONSTRAINT `FK_curso_division_1` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`),
  CONSTRAINT `FK_curso_division_2` FOREIGN KEY (`idturno`) REFERENCES `turno` (`idturno`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`curso_division`
--

/*!40000 ALTER TABLE `curso_division` DISABLE KEYS */;
INSERT INTO `curso_division` (`idcurso_division`,`idcurso`,`division`,`idturno`) VALUES 
 (1,1,'A',1),
 (2,2,'A',1),
 (3,3,'A',1),
 (4,4,'A',2),
 (5,5,'A',2),
 (8,6,'A',2),
 (9,7,'A',2),
 (10,1,'B',1),
 (12,6,'B',2),
 (13,3,'B',1),
 (14,2,'B',1),
 (15,4,'B',2),
 (16,5,'B',2),
 (17,1,'C',1);
/*!40000 ALTER TABLE `curso_division` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`detalle_matricula`
--

DROP TABLE IF EXISTS `detalle_matricula`;
CREATE TABLE `detalle_matricula` (
  `iddetalle_matricula` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmontomatricula` int(10) unsigned DEFAULT NULL,
  `idAlumno` int(10) unsigned DEFAULT NULL,
  `repite` varchar(5) DEFAULT NULL,
  `idciclolectivo` int(10) unsigned DEFAULT NULL,
  `idcurso_division` int(10) unsigned DEFAULT NULL,
  `idestado_matricula` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`iddetalle_matricula`),
  KEY `FK_detalle_matricula_1` (`idmontomatricula`),
  KEY `FK_detalle_matricula_4` (`idAlumno`),
  KEY `FK_detalle_matricula_3` (`idciclolectivo`),
  KEY `FK_detalle_matricula_5` (`idcurso_division`),
  KEY `FK_detalle_matricula_2` (`idestado_matricula`),
  CONSTRAINT `FK_detalle_matricula_1` FOREIGN KEY (`idmontomatricula`) REFERENCES `montomatricula` (`idmontomatricula`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_detalle_matricula_2` FOREIGN KEY (`idestado_matricula`) REFERENCES `estado_matricula` (`idestado_matricula`) ON UPDATE CASCADE,
  CONSTRAINT `FK_detalle_matricula_3` FOREIGN KEY (`idciclolectivo`) REFERENCES `ciclolectivo` (`idciclolectivo`),
  CONSTRAINT `FK_detalle_matricula_4` FOREIGN KEY (`idAlumno`) REFERENCES `alumno` (`idAlumno`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_detalle_matricula_5` FOREIGN KEY (`idcurso_division`) REFERENCES `curso_division` (`idcurso_division`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`detalle_matricula`
--

/*!40000 ALTER TABLE `detalle_matricula` DISABLE KEYS */;
INSERT INTO `detalle_matricula` (`iddetalle_matricula`,`idmontomatricula`,`idAlumno`,`repite`,`idciclolectivo`,`idcurso_division`,`idestado_matricula`) VALUES 
 (4,1,2,'No',2,1,1),
 (5,1,3,'Si',2,1,1),
 (6,1,4,'Si',2,1,1),
 (7,1,5,'No',2,1,1),
 (8,1,6,'No',2,1,1),
 (9,1,7,'No',2,1,1),
 (30,1,8,'No',2,2,1),
 (31,1,9,'No',3,2,1),
 (32,1,2,'No',3,2,1),
 (33,1,3,'Si',3,1,1),
 (34,1,4,'Si',3,1,1),
 (35,1,5,'No',3,2,1),
 (36,1,6,'No',3,2,1),
 (37,1,7,'No',3,2,1),
 (38,1,10,'No',3,1,1),
 (39,1,11,'No',3,10,3),
 (40,1,12,'No',3,2,1),
 (41,1,13,'No',3,5,1),
 (42,1,14,'No',4,17,1),
 (43,NULL,3,NULL,4,2,2),
 (44,NULL,4,NULL,4,2,2),
 (45,NULL,10,NULL,4,2,2),
 (46,NULL,3,NULL,4,2,2),
 (47,NULL,4,NULL,4,2,2),
 (48,NULL,10,NULL,4,2,2);
/*!40000 ALTER TABLE `detalle_matricula` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`dpase`
--

DROP TABLE IF EXISTS `dpase`;
CREATE TABLE `dpase` (
  `iddpase` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idAlumno` int(10) unsigned NOT NULL,
  `motivo` varchar(25) NOT NULL,
  `destino` varchar(45) NOT NULL,
  `f_egreso` date NOT NULL,
  `idcurso_division` int(10) unsigned NOT NULL,
  `idciclolectivo` int(10) unsigned NOT NULL,
  `idcurso` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddpase`),
  KEY `FK_dpase_1` (`idAlumno`),
  KEY `FK_dpase_2` (`idcurso_division`) USING BTREE,
  KEY `FK_dpase_3` (`idciclolectivo`),
  KEY `FK_dpase_4` (`idcurso`),
  CONSTRAINT `FK_dpase_1` FOREIGN KEY (`idAlumno`) REFERENCES `alumno` (`idAlumno`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_dpase_2` FOREIGN KEY (`idcurso_division`) REFERENCES `curso_division` (`idcurso_division`),
  CONSTRAINT `FK_dpase_3` FOREIGN KEY (`idciclolectivo`) REFERENCES `ciclolectivo` (`idciclolectivo`),
  CONSTRAINT `FK_dpase_4` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`dpase`
--

/*!40000 ALTER TABLE `dpase` DISABLE KEYS */;
INSERT INTO `dpase` (`iddpase`,`idAlumno`,`motivo`,`destino`,`f_egreso`,`idcurso_division`,`idciclolectivo`,`idcurso`) VALUES 
 (1,11,'CAMBIO DE DOMICILIO','sagrada familia','2020-10-28',10,3,1);
/*!40000 ALTER TABLE `dpase` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`estado_alumno`
--

DROP TABLE IF EXISTS `estado_alumno`;
CREATE TABLE `estado_alumno` (
  `idestado_alumno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `estado` varchar(25) NOT NULL,
  PRIMARY KEY (`idestado_alumno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`estado_alumno`
--

/*!40000 ALTER TABLE `estado_alumno` DISABLE KEYS */;
INSERT INTO `estado_alumno` (`idestado_alumno`,`estado`) VALUES 
 (1,'Activo'),
 (2,'Pase'),
 (3,'Egresado');
/*!40000 ALTER TABLE `estado_alumno` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`estado_materia`
--

DROP TABLE IF EXISTS `estado_materia`;
CREATE TABLE `estado_materia` (
  `idestado_materia` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(15) NOT NULL,
  PRIMARY KEY (`idestado_materia`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`estado_materia`
--

/*!40000 ALTER TABLE `estado_materia` DISABLE KEYS */;
INSERT INTO `estado_materia` (`idestado_materia`,`Descripcion`) VALUES 
 (1,'Aprobado'),
 (2,'Desaprobado');
/*!40000 ALTER TABLE `estado_materia` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`estado_matricula`
--

DROP TABLE IF EXISTS `estado_matricula`;
CREATE TABLE `estado_matricula` (
  `idestado_matricula` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `estado` varchar(25) NOT NULL,
  PRIMARY KEY (`idestado_matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`estado_matricula`
--

/*!40000 ALTER TABLE `estado_matricula` DISABLE KEYS */;
INSERT INTO `estado_matricula` (`idestado_matricula`,`estado`) VALUES 
 (1,'Inscripto'),
 (2,'Pre-Inscripto'),
 (3,'Pase');
/*!40000 ALTER TABLE `estado_matricula` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`estado_usuarios`
--

DROP TABLE IF EXISTS `estado_usuarios`;
CREATE TABLE `estado_usuarios` (
  `idestado_usuarios` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `estado` varchar(45) NOT NULL,
  PRIMARY KEY (`idestado_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`estado_usuarios`
--

/*!40000 ALTER TABLE `estado_usuarios` DISABLE KEYS */;
INSERT INTO `estado_usuarios` (`idestado_usuarios`,`estado`) VALUES 
 (1,'Activo'),
 (2,'Inactivo'),
 (3,'Licencia');
/*!40000 ALTER TABLE `estado_usuarios` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`familiar`
--

DROP TABLE IF EXISTS `familiar`;
CREATE TABLE `familiar` (
  `idfamiliar` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `DNI` varchar(10) NOT NULL,
  `Sexo` varchar(15) NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Estado_Civil` varchar(15) NOT NULL,
  `Ocupacion` varchar(20) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Telefono` varchar(50) NOT NULL,
  `Telefono_Movil` varchar(50) NOT NULL,
  `Parentesco` varchar(10) NOT NULL,
  PRIMARY KEY (`idfamiliar`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`familiar`
--

/*!40000 ALTER TABLE `familiar` DISABLE KEYS */;
INSERT INTO `familiar` (`idfamiliar`,`Nombre`,`Apellido`,`DNI`,`Sexo`,`Fecha_Nacimiento`,`Estado_Civil`,`Ocupacion`,`Direccion`,`Telefono`,`Telefono_Movil`,`Parentesco`) VALUES 
 (1,'José','sanchez','16502080','Masculino','1963-09-19','casado','empleado','garay 1691','123123213123','65546345235234','Padre'),
 (2,'marina','lorenzola','4321','Femenino','2018-06-14','asdasd','asdsa','sadsad','32423','234234','Madre'),
 (3,'susana','sanchez','2134','Femenino','2018-06-20','casada','empleda','sadasd','34234','324234','Madre'),
 (4,'gloria','mendez','12345678','Femenino','1963-10-11','casada','empleada','garay 1816','8764','75432','Madre'),
 (5,'ariel','moyano','18161816','Masculino','1966-11-18','casado','empleado','garay','234234','234324234','Padre'),
 (6,'Teresa','Mendez','16911691','Femenino','1970-07-15','Casada','Empleada','garay','876554','5345345','Madre'),
 (7,'Nicolas','Guzman','134','Masculino','1970-04-14','casado','empleado','sdfsdfsd','234234','234234234234','Padre'),
 (8,'Margarita','stolvize','19041904','Femenino','1970-07-16','casada','empleada','arco de cba','234234234','234234234234','Madre'),
 (9,'Marina','Gonzales','16433180','Femenino','1963-06-14','Casada','Empleada','Buenos Aires322','4513211','155142258','Madre');
/*!40000 ALTER TABLE `familiar` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`familiar_alumno`
--

DROP TABLE IF EXISTS `familiar_alumno`;
CREATE TABLE `familiar_alumno` (
  `idfamiliar_alumno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idAlumno` int(10) unsigned NOT NULL,
  `idfamiliar` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idfamiliar_alumno`),
  KEY `alumno_idAlumno` (`idAlumno`) USING BTREE,
  KEY `familiar_idfamiliar` (`idfamiliar`) USING BTREE,
  CONSTRAINT `alumno_idAlumno` FOREIGN KEY (`idAlumno`) REFERENCES `alumno` (`idAlumno`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `familiar_idfamiliar` FOREIGN KEY (`idfamiliar`) REFERENCES `familiar` (`idfamiliar`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`familiar_alumno`
--

/*!40000 ALTER TABLE `familiar_alumno` DISABLE KEYS */;
INSERT INTO `familiar_alumno` (`idfamiliar_alumno`,`idAlumno`,`idfamiliar`) VALUES 
 (8,2,1),
 (9,3,1),
 (10,4,2),
 (11,5,3),
 (12,6,4),
 (13,7,5),
 (14,7,2),
 (15,4,5),
 (16,8,6),
 (17,9,2),
 (18,10,7),
 (19,11,8),
 (20,12,9),
 (21,13,1),
 (22,14,1);
/*!40000 ALTER TABLE `familiar_alumno` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`montomatricula`
--

DROP TABLE IF EXISTS `montomatricula`;
CREATE TABLE `montomatricula` (
  `idmontomatricula` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(25) NOT NULL,
  `monto` varchar(25) NOT NULL,
  PRIMARY KEY (`idmontomatricula`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`montomatricula`
--

/*!40000 ALTER TABLE `montomatricula` DISABLE KEYS */;
INSERT INTO `montomatricula` (`idmontomatricula`,`descripcion`,`monto`) VALUES 
 (1,'1 Alumno','600');
/*!40000 ALTER TABLE `montomatricula` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`nivel`
--

DROP TABLE IF EXISTS `nivel`;
CREATE TABLE `nivel` (
  `idnivel` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(35) NOT NULL,
  PRIMARY KEY (`idnivel`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`nivel`
--

/*!40000 ALTER TABLE `nivel` DISABLE KEYS */;
INSERT INTO `nivel` (`idnivel`,`Descripcion`) VALUES 
 (1,'PRIMER CICLO - Ciclo Basico'),
 (2,'SEGUNDO CICLO - Ciclo Especializado');
/*!40000 ALTER TABLE `nivel` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`notas`
--

DROP TABLE IF EXISTS `notas`;
CREATE TABLE `notas` (
  `idnotas` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idAlumno` int(10) unsigned NOT NULL,
  `Nota1` double DEFAULT NULL,
  `Nota2` double DEFAULT NULL,
  `Nota3` double DEFAULT NULL,
  `idasignatura` int(10) unsigned NOT NULL,
  `idcurso_division` int(10) unsigned NOT NULL,
  `idtrimestre` int(10) unsigned NOT NULL,
  `idciclolectivo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idnotas`),
  KEY `FK_notas_1` (`idAlumno`),
  KEY `FK_notas_2` (`idasignatura`),
  KEY `FK_notas_3` (`idcurso_division`),
  KEY `FK_notas_4` (`idtrimestre`),
  KEY `FK_notas_5` (`idciclolectivo`),
  CONSTRAINT `FK_notas_1` FOREIGN KEY (`idAlumno`) REFERENCES `alumno` (`idAlumno`),
  CONSTRAINT `FK_notas_2` FOREIGN KEY (`idasignatura`) REFERENCES `asignatura` (`idasignatura`),
  CONSTRAINT `FK_notas_3` FOREIGN KEY (`idcurso_division`) REFERENCES `curso_division` (`idcurso_division`),
  CONSTRAINT `FK_notas_4` FOREIGN KEY (`idtrimestre`) REFERENCES `trimestre` (`idtrimestre`),
  CONSTRAINT `FK_notas_5` FOREIGN KEY (`idciclolectivo`) REFERENCES `ciclolectivo` (`idciclolectivo`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`notas`
--

/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` (`idnotas`,`idAlumno`,`Nota1`,`Nota2`,`Nota3`,`idasignatura`,`idcurso_division`,`idtrimestre`,`idciclolectivo`) VALUES 
 (1,11,10,10,10,2,1,7,3),
 (2,4,7,8,7,2,1,7,3),
 (3,10,7,9,3,2,1,7,3),
 (4,3,10,6,6,2,1,7,3),
 (5,11,6,6,7,2,1,8,3),
 (6,4,4,8,7,2,1,8,3),
 (7,10,6,7,6,2,1,8,3),
 (8,3,4,8,7,2,1,8,3),
 (9,11,1,1,1,12,1,7,3),
 (10,4,8,6,8,12,1,7,3),
 (11,10,6,7,8,12,1,7,3),
 (12,3,6,7,9,12,1,7,3),
 (13,3,5,7,6,1,1,7,3),
 (14,4,7,1,10,1,1,7,3),
 (15,10,4,7,7,1,1,7,3),
 (16,11,8,7,8,1,1,7,3),
 (17,11,8,4,10,1,1,8,3),
 (18,4,6,6,6,1,1,8,3),
 (19,10,7,6,9,1,1,8,3),
 (20,3,3,7,7,1,1,8,3),
 (25,10,9,8,9,1,1,9,3),
 (26,3,7,7,7,1,1,9,3),
 (29,10,7,7,8,2,1,9,3),
 (30,3,6,7,6,2,1,9,3),
 (31,11,6,7,8,3,1,7,3),
 (32,4,6,6,8,3,1,7,3),
 (33,10,7,8,7,3,1,7,3),
 (34,3,6,6,6,3,1,7,3),
 (35,11,7,8,8,3,1,8,3),
 (36,4,8,8,6,3,1,8,3),
 (37,10,7,7,7,3,1,8,3),
 (38,3,6,6,6,3,1,8,3),
 (41,10,6,6,6,3,1,9,3),
 (42,3,6,5,4,3,1,9,3),
 (43,11,6,6,6,4,1,7,3),
 (44,4,5,4,9,4,1,7,3),
 (45,10,5,9,10,4,1,7,3),
 (46,3,9,6,6,4,1,7,3);
INSERT INTO `notas` (`idnotas`,`idAlumno`,`Nota1`,`Nota2`,`Nota3`,`idasignatura`,`idcurso_division`,`idtrimestre`,`idciclolectivo`) VALUES 
 (47,11,7,7,6,4,1,8,3),
 (48,4,6,7,7,4,1,8,3),
 (49,10,6,6,6,4,1,8,3),
 (50,3,5,5,5,4,1,8,3),
 (53,10,5,4,9,4,1,9,3),
 (54,3,7,9,6,4,1,9,3),
 (55,11,6,9,4,5,1,7,3),
 (56,4,7,9,6,5,1,7,3),
 (57,10,7,10,5,5,1,7,3),
 (58,3,4,5,6,5,1,7,3),
 (59,11,5,4,7,5,1,8,3),
 (60,4,6,5,4,5,1,8,3),
 (61,10,4,6,5,5,1,8,3),
 (62,3,7,9,4,5,1,8,3),
 (65,10,7,7,5,5,1,9,3),
 (66,3,5,7,8,5,1,9,3),
 (67,11,7,6,5,6,1,7,3),
 (68,4,6,5,8,6,1,7,3),
 (69,10,6,7,6,6,1,7,3),
 (70,3,6,8,7,6,1,7,3),
 (71,11,4,8,5,6,1,8,3),
 (72,4,5,6,5,6,1,8,3),
 (73,10,6,6,9,6,1,8,3),
 (74,3,5,6,5,6,1,8,3),
 (77,10,7,4,8,6,1,9,3),
 (78,3,5,7,7,6,1,9,3),
 (79,11,7,8,6,7,1,7,3),
 (80,4,6,6,5,7,1,7,3),
 (81,10,5,7,8,7,1,7,3),
 (82,3,6,7,5,7,1,7,3),
 (83,11,6,7,8,7,1,8,3),
 (84,4,4,8,3,7,1,8,3),
 (85,10,7,8,4,7,1,8,3),
 (86,3,3,6,2,7,1,8,3),
 (89,10,8,6,8,7,1,9,3),
 (90,3,9,8,6,7,1,9,3),
 (91,11,7,7,5,8,1,7,3),
 (92,4,8,3,8,8,1,7,3);
INSERT INTO `notas` (`idnotas`,`idAlumno`,`Nota1`,`Nota2`,`Nota3`,`idasignatura`,`idcurso_division`,`idtrimestre`,`idciclolectivo`) VALUES 
 (93,10,6,6,5,8,1,7,3),
 (94,3,4,8,5,8,1,7,3),
 (95,11,10,7,4,8,1,8,3),
 (96,4,7,5,7,8,1,8,3),
 (97,10,6,6,8,8,1,8,3),
 (98,3,6,7,6,8,1,8,3),
 (101,10,5,7,6,8,1,9,3),
 (102,3,3,3,8,8,1,9,3),
 (103,11,8,4,4,9,1,7,3),
 (104,4,2,7,5,9,1,7,3),
 (105,10,2,4,4,9,1,7,3),
 (106,3,6,6,9,9,1,7,3),
 (107,11,9,10,6,9,1,8,3),
 (108,4,6,2,5,9,1,8,3),
 (109,10,4,4,2,9,1,8,3),
 (110,3,8,4,7,9,1,8,3),
 (113,10,5,5,10,9,1,9,3),
 (114,3,3,9,6,9,1,9,3),
 (115,11,5,5,5,10,1,7,3),
 (116,4,6,7,4,10,1,7,3),
 (117,10,6,8,6,10,1,7,3),
 (118,3,4,7,5,10,1,7,3),
 (119,11,6,6,6,10,1,8,3),
 (120,4,5,8,5,10,1,8,3),
 (121,10,6,7,4,10,1,8,3),
 (122,3,5,5,4,10,1,8,3),
 (125,10,6,9,6,10,1,9,3),
 (126,3,6,8,3,10,1,9,3),
 (127,11,7,7,4,11,1,7,3),
 (128,4,6,8,8,11,1,7,3),
 (129,10,5,5,5,11,1,7,3),
 (130,3,5,8,5,11,1,7,3),
 (131,11,6,8,6,11,1,8,3),
 (132,4,7,6,5,11,1,8,3),
 (133,10,8,9,7,11,1,8,3),
 (134,3,6,9,6,11,1,8,3);
INSERT INTO `notas` (`idnotas`,`idAlumno`,`Nota1`,`Nota2`,`Nota3`,`idasignatura`,`idcurso_division`,`idtrimestre`,`idciclolectivo`) VALUES 
 (137,10,5,8,6,11,1,9,3),
 (138,3,5,8,6,11,1,9,3),
 (139,11,6,10,10,12,1,8,3),
 (140,4,7,6,6,12,1,8,3),
 (141,10,8,5,6,12,1,8,3),
 (142,3,5,10,3,12,1,8,3),
 (145,10,6,8,7,12,1,9,3),
 (146,3,4,7,5,12,1,9,3),
 (147,11,9,6,4,1,1,9,3),
 (148,4,9,9,10,1,1,9,3),
 (149,11,9,7,7,2,1,9,3),
 (150,4,6,8,5,2,1,9,3),
 (151,11,7,8,6,3,1,9,3),
 (152,4,5,8,6,3,1,9,3),
 (153,11,8,9,8,4,1,9,3),
 (154,4,6,9,7,4,1,9,3),
 (155,11,6,5,7,5,1,9,3),
 (156,4,5,8,5,5,1,9,3),
 (157,11,7,9,6,6,1,9,3),
 (158,4,7,8,5,6,1,9,3),
 (159,11,6,8,5,7,1,9,3),
 (160,4,6,9,3,7,1,9,3),
 (161,11,6,8,7,8,1,9,3),
 (162,4,7,8,4,8,1,9,3),
 (163,11,8,6,7,9,1,9,3),
 (164,4,6,8,4,9,1,9,3),
 (165,11,4,7,4,10,1,9,3),
 (166,4,5,9,6,10,1,9,3),
 (167,11,5,9,5,11,1,9,3),
 (168,4,7,10,6,11,1,9,3),
 (169,11,10,6,6,12,1,9,3),
 (170,4,8,5,6,12,1,9,3),
 (171,13,7,3,8,17,5,7,3),
 (172,13,5,8,4,17,5,8,3),
 (173,13,8,8,6,17,5,9,3),
 (174,13,8,5,6,18,5,7,3);
INSERT INTO `notas` (`idnotas`,`idAlumno`,`Nota1`,`Nota2`,`Nota3`,`idasignatura`,`idcurso_division`,`idtrimestre`,`idciclolectivo`) VALUES 
 (176,13,5,6,4,18,5,8,3),
 (177,13,8,4,7,18,5,9,3),
 (178,13,8,6,6,30,5,7,3),
 (179,13,7,5,8,30,5,8,3),
 (181,13,7,4,9,30,5,9,3);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`paseingreso`
--

DROP TABLE IF EXISTS `paseingreso`;
CREATE TABLE `paseingreso` (
  `idpaseingreso` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `apellido` varchar(40) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `dni` varchar(10) NOT NULL,
  `escuelaprocedente` varchar(60) NOT NULL,
  `motivo` varchar(40) NOT NULL,
  `idcurso` int(10) unsigned NOT NULL,
  `idciclolectivo` int(10) unsigned NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`idpaseingreso`),
  KEY `FK_paseingreso_1` (`idcurso`),
  KEY `FK_paseingreso_2` (`idciclolectivo`),
  CONSTRAINT `FK_paseingreso_1` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`),
  CONSTRAINT `FK_paseingreso_2` FOREIGN KEY (`idciclolectivo`) REFERENCES `ciclolectivo` (`idciclolectivo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`paseingreso`
--

/*!40000 ALTER TABLE `paseingreso` DISABLE KEYS */;
INSERT INTO `paseingreso` (`idpaseingreso`,`apellido`,`nombre`,`dni`,`escuelaprocedente`,`motivo`,`idcurso`,`idciclolectivo`,`fecha`) VALUES 
 (1,'Caseres','Gabriel','1691','Sagrada Familia','CAMBIO DE DOMICILIO',2,2,'2018-11-19');
/*!40000 ALTER TABLE `paseingreso` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`planestudio`
--

DROP TABLE IF EXISTS `planestudio`;
CREATE TABLE `planestudio` (
  `idplanestudio` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `numero` int(10) unsigned NOT NULL,
  `titulo` varchar(60) NOT NULL,
  PRIMARY KEY (`idplanestudio`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`planestudio`
--

/*!40000 ALTER TABLE `planestudio` DISABLE KEYS */;
INSERT INTO `planestudio` (`idplanestudio`,`numero`,`titulo`) VALUES 
 (1,12345,'PRIMER CICLO DE LA MODALIDAD TÉCNICO PROFESIONAL '),
 (2,687198110,'SEGUNDO CICLO-TÉCNICO EN INDUSTRIAS DE PROCESOS ');
/*!40000 ALTER TABLE `planestudio` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`prueba`
--

DROP TABLE IF EXISTS `prueba`;
CREATE TABLE `prueba` (
  `idprueba` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idAlumno` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idprueba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`prueba`
--

/*!40000 ALTER TABLE `prueba` DISABLE KEYS */;
/*!40000 ALTER TABLE `prueba` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`registrotema`
--

DROP TABLE IF EXISTS `registrotema`;
CREATE TABLE `registrotema` (
  `idregistrotema` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `clasen` int(10) unsigned NOT NULL,
  `caracterdclase` varchar(100) NOT NULL,
  `temadeldia` varchar(150) NOT NULL,
  `actividadadesarrollar` varchar(500) NOT NULL,
  `observacion` varchar(100) DEFAULT NULL,
  `idciclolectivo` int(10) unsigned NOT NULL,
  `idcurso_division` int(10) unsigned NOT NULL,
  `idasignatura` int(10) unsigned NOT NULL,
  `hora` varchar(25) NOT NULL,
  PRIMARY KEY (`idregistrotema`),
  KEY `FK_registrotema_1` (`idciclolectivo`),
  KEY `FK_registrotema_2` (`idcurso_division`),
  KEY `FK_registrotema_3` (`idasignatura`),
  CONSTRAINT `FK_registrotema_1` FOREIGN KEY (`idciclolectivo`) REFERENCES `ciclolectivo` (`idciclolectivo`),
  CONSTRAINT `FK_registrotema_2` FOREIGN KEY (`idcurso_division`) REFERENCES `curso_division` (`idcurso_division`),
  CONSTRAINT `FK_registrotema_3` FOREIGN KEY (`idasignatura`) REFERENCES `asignatura` (`idasignatura`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`registrotema`
--

/*!40000 ALTER TABLE `registrotema` DISABLE KEYS */;
INSERT INTO `registrotema` (`idregistrotema`,`fecha`,`clasen`,`caracterdclase`,`temadeldia`,`actividadadesarrollar`,`observacion`,`idciclolectivo`,`idcurso_division`,`idasignatura`,`hora`) VALUES 
 (1,'2020-08-22',1,'Evaluación','suma','ejercicios',NULL,3,1,2,'Primera Hora'),
 (2,'2020-08-22',1,'Práctico','resta','ejercicios',NULL,3,1,2,'Segunda Hora'),
 (3,'2020-08-23',2,'Evaluación','multiplos','ejercicios',NULL,3,1,2,'Primera Hora'),
 (4,'2020-08-23',2,'Teórico','fracciones','ejercicios',NULL,3,1,2,'Segunda Hora'),
 (5,'2020-10-21',3,'Práctico','afddff','sdfsdfsdfsdf',NULL,3,1,2,'Primera Hora'),
 (6,'2020-10-28',4,'Evaluación','aaa','fasdasfasf','visto',3,1,2,'Primera Hora');
/*!40000 ALTER TABLE `registrotema` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`tipousuario`
--

DROP TABLE IF EXISTS `tipousuario`;
CREATE TABLE `tipousuario` (
  `idtipousuario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(25) NOT NULL,
  PRIMARY KEY (`idtipousuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`tipousuario`
--

/*!40000 ALTER TABLE `tipousuario` DISABLE KEYS */;
INSERT INTO `tipousuario` (`idtipousuario`,`descripcion`) VALUES 
 (1,'Administrador'),
 (2,'Director'),
 (3,'Secretario'),
 (4,'Preceptor'),
 (5,'Docente');
/*!40000 ALTER TABLE `tipousuario` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`trimestre`
--

DROP TABLE IF EXISTS `trimestre`;
CREATE TABLE `trimestre` (
  `idtrimestre` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(20) NOT NULL,
  `idciclolectivo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idtrimestre`),
  KEY `FK_trimestre_1` (`idciclolectivo`),
  CONSTRAINT `FK_trimestre_1` FOREIGN KEY (`idciclolectivo`) REFERENCES `ciclolectivo` (`idciclolectivo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`trimestre`
--

/*!40000 ALTER TABLE `trimestre` DISABLE KEYS */;
INSERT INTO `trimestre` (`idtrimestre`,`descripcion`,`idciclolectivo`) VALUES 
 (1,'Primer Trimestre',1),
 (2,'Segundo Trimestre',1),
 (3,'Tercer Trimestre',1),
 (4,'Primer Trimestre',2),
 (5,'Segundo Trimestre',2),
 (6,'Tercer Trimestre',2),
 (7,'Primer Trimestre',3),
 (8,'Segundo Trimestre',3),
 (9,'Tercer Trimestre',3),
 (10,'Primer Trimestre',4),
 (11,'Segundo Trimestre',4),
 (12,'Tercer Trimestre',4);
/*!40000 ALTER TABLE `trimestre` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`turno`
--

DROP TABLE IF EXISTS `turno`;
CREATE TABLE `turno` (
  `idturno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `turno` varchar(20) NOT NULL,
  PRIMARY KEY (`idturno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`turno`
--

/*!40000 ALTER TABLE `turno` DISABLE KEYS */;
INSERT INTO `turno` (`idturno`,`turno`) VALUES 
 (1,'Mañana'),
 (2,'Tarde');
/*!40000 ALTER TABLE `turno` ENABLE KEYS */;


--
-- Table structure for table `sm_school_manager`.`usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `idusuarios` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `contrasena` varchar(100) NOT NULL DEFAULT '',
  `idtipousuario` int(10) unsigned NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `idestado_usuarios` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idusuarios`),
  KEY `FK_usuarios_1` (`idtipousuario`),
  KEY `FK_usuarios_2` (`idestado_usuarios`),
  CONSTRAINT `FK_usuarios_1` FOREIGN KEY (`idtipousuario`) REFERENCES `tipousuario` (`idtipousuario`),
  CONSTRAINT `FK_usuarios_2` FOREIGN KEY (`idestado_usuarios`) REFERENCES `estado_usuarios` (`idestado_usuarios`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sm_school_manager`.`usuarios`
--

/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`idusuarios`,`usuario`,`contrasena`,`idtipousuario`,`nombre`,`apellido`,`dni`,`tel`,`sexo`,`idestado_usuarios`) VALUES 
 (1,'PSanchez037','57e44975b02af7c4b62caade8a39baef',2,'Pablo','Sanchez','36140037','12345','Masculino',1),
 (9,'psanchez234','202cb962ac59075b964b07152d234b70',5,'pablo','sanchez','1234','65432','Masculino',1),
 (15,'TNegro050','b8cfec1421dabf998356265d0a1473c2',3,'Teresa','Negro','20399050','471643','Femenino',1),
 (16,'LSanchez232','770ea11bfb4ea031a4e25c6003b9dcac',5,'Lorena','Sanchez','34145232','471643','Femenino',1),
 (17,'ABarrionuevo345','8df7152e505530cbb2b44719977eca14',4,'Alejandro','Barrionuevo','16720345','15598255','Masculino',1),
 (20,'lmendez567','fcea920f7412b5da7be0cf42b8c93759',5,'laura','mendez','1234567','8765432','Femenino',1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
