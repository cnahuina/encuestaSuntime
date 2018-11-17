create database db_test;
use db_test;

create table tb_city(
idCity int auto_increment not null primary key,
city varchar(255)
);

create table tb_shop(
idShop int auto_increment not null primary key,
shop varchar(255),
idCity int
);

create table tb_type_user(
idTypeUser int auto_increment not null primary key,
typeUser varchar(255)
);

create table tb_user(
idUser int auto_increment not null primary key,
name varchar(255),
surname varchar(255),
idTypeUser int
);


create table tb_test(
idTest int auto_increment not null primary key,
descTest varchar(250),
state int,
idUser int,
idShop int
);

create table tb_question_types(
idQuestionType int auto_increment primary key,
questionType varchar(255)
);

create table tb_question(
idQuestion int auto_increment not null primary key,
descQuestion varchar(255),
points decimal,
state  int,
idQuestionType int,
idTest int
);

create table tb_sub_question(
idSubQuestion int auto_increment not null primary key,
desSubQuestion varchar(255),
idQuestion int
);

create table tb_sub_answer(
idSubAnswer int auto_increment not null primary key,
correctAnswer varchar(255),
state int,
idAnswer int
);


create table tb_answer(
idAnswer int auto_increment not null primary key,
descAnswer varchar(255),
priority int,
correctAnswer int,
correctAnswerTeXT varchar(800),
state int,
idQuestion int
);


INSERT INTO tb_type_user VALUES (null,'cliente');
INSERT INTO tb_type_user VALUES (null,'trabajador');

INSERT INTO tb_user VALUES (null,'Harold','Ñahuiña',2);
INSERT INTO tb_user VALUES (null,'Sherlyne','Herrera',1);

INSERT INTO tb_city VALUES (null, 'Lima');
INSERT INTO tb_city VALUES (null, 'Chiclayo');
INSERT INTO tb_city VALUES (null, 'Ica');
INSERT INTO tb_city VALUES (null, 'Tumbes');

INSERT INTO tb_shop VALUES (null, 'Mall del Sur',1);
INSERT INTO tb_shop VALUES (null, 'Plaza Norte',1);
INSERT INTO tb_shop VALUES (null, 'Quinde Shopping',3);
INSERT INTO tb_shop VALUES (null, 'Mall Chiclayo',2);
INSERT INTO tb_shop VALUES (null, 'CC. Costa mar',4);

INSERT INTO tb_question_types VALUES (null, 'FullText');
INSERT INTO tb_question_types VALUES (null, 'FullText 2 Respuestas');
INSERT INTO tb_question_types VALUES (null, 'Una sola Alternativa');
INSERT INTO tb_question_types VALUES (null, 'Varias Alternativas');


INSERT INTO tb_test VALUES (null,'TEST Noviembre',1,null,null);
INSERT INTO tb_test VALUES (null,'TEST Diciembre',1,null,null);
INSERT INTO tb_test VALUES (null,'TEST Enero',1,null,null);

SELECT * FROM TB_QUESTION_TYPES;
SELECT * FROM TB_TEST;
SELECT * FROM tb_question;
SELECT * FROM tb_sub_question;


INSERT INTO tb_question VALUES (NULL,'En los relojes de metal dama, ¿Cuál color consideras que se vende más?',10,1,2,1);
INSERT INTO tb_question VALUES (NULL,'En los relojes de goma dama, ¿Cuál color de pulsera consideras que se vende más?',10,1,2,1);
INSERT INTO tb_question VALUES (NULL,'En los relojes de cuero dama, ¿Cuál color de pulsera consideras que se vende más?',10,1,2,1);
INSERT INTO tb_question VALUES (NULL,'En los relojes de cuero y goma dama, ¿Cuál color de caja consideras que se vende más?',10,1,2,1);
INSERT INTO tb_question VALUES (NULL,'En los relojes de metal caballero, ¿Cuál color consideras que se vende más?',10,1,2,1);
INSERT INTO tb_question VALUES (NULL,'En los relojes de goma caballero, ¿Cuál color de pulsera consideras que se vende más?',10,1,2,1);
INSERT INTO tb_question VALUES (NULL,'En los relojes de cuero caballero, ¿Cuál color de pulsera consideras  que se vende más?',10,1,2,1);
INSERT INTO tb_question VALUES (NULL,'En los relojes de cuero y goma caballero, ¿Cuál color de caja (el cuerpo del reloj) consideras que se vende más?',10,1,2,1);
INSERT INTO tb_question VALUES (NULL,'En cuanto a los relojes que poseen hora digital, ¿Cuál color de digital consideras que se vende más?',10,1,2,1);
INSERT INTO tb_question VALUES (NULL,'Que modelos o tipos de relojes que tenemos o hemos tenido anteriormente consideras que:',10,1,4,1);
INSERT INTO tb_question VALUES (NULL,'¿Qué estilos de gafas consideras que se venden más?',10,1,2,1);
INSERT INTO tb_question VALUES (NULL,'¿De qué material consideras que se venden más?',10,1,2,1);
INSERT INTO tb_question VALUES (NULL,'Hablando de las lunas de las gafas, ¿Qué tipos de colores consideras que se venden más?',10,1,2,1);
INSERT INTO tb_question VALUES (NULL,'En cuanto a las lunas de colores clásicos, ¿Qué colores consideras que se venden más?',10,1,2,1);
INSERT INTO tb_question VALUES (NULL,'En cuanto a las lunas de colores vivos, ¿Qué colores consideras que se venden más?',10,1,2,1);
INSERT INTO tb_question VALUES (NULL,'En cuanto a las lunas tornasoladas, ¿Qué colores consideras que se venden más?',10,1,2,1);
INSERT INTO tb_question VALUES (NULL,'Que modelos o tipos de gafas que tenemos o hemos tenido anteriormente consideras que:',10,1,4,1);

-- ==================== -

INSERT INTO tb_question VALUES (NULL,'¿Por qué consideras que nuestros clientes compran nuestro producto?',10,1,2,1);
INSERT INTO tb_question VALUES (NULL,'¿Por qué consideras que algunas personas no compran nuestros productos?',10,1,2,1);
INSERT INTO tb_question VALUES (NULL,'¿Qué otros productos asociados a nuestro rubro consideras que deberíamos implementar en nuestro mix comercial?',10,1,1,1);

 -- ==================== -- 
 
 INSERT INTO tb_sub_question VALUES (NULL,'No deberiamos tener más',10);
 INSERT INTO tb_sub_question VALUES (NULL,'Si deberiamos tener más',10);
 INSERT INTO tb_sub_question VALUES (NULL,'No deberiamos tener más',17);
 INSERT INTO tb_sub_question VALUES (NULL,'Si deberiamos tener más',17);
 
 -- ==================== --
 
 INSERT INTO tb_answer VALUES (NULL,'DORADO',NULL,NULL,NULL,1,1 );
  INSERT INTO tb_answer VALUES (NULL,'PLATEADO',NULL,NULL,NULL,1,1 );
   INSERT INTO tb_answer VALUES (NULL,'ORO ROSA',NULL,NULL,NULL,1,1 );
    INSERT INTO tb_answer VALUES (NULL,'COMBINADO',NULL,NULL,NULL,1,1 );
 INSERT INTO tb_answer VALUES (NULL,'BLANCO',NULL,NULL,NULL,1,2 );
  INSERT INTO tb_answer VALUES (NULL,'NEGRO',NULL,NULL,NULL,1,2 );
   INSERT INTO tb_answer VALUES (NULL,'MARRÓN',NULL,NULL,NULL,1,2 );
    INSERT INTO tb_answer VALUES (NULL,'ROJO',NULL,NULL,NULL,1,2 );
	 INSERT INTO tb_answer VALUES (NULL,'TURQUESA',NULL,NULL,NULL,1,2 );
      INSERT INTO tb_answer VALUES (NULL,'FUCSIA',NULL,NULL,NULL,1,2 );
       INSERT INTO tb_answer VALUES (NULL,'ROSADO',NULL,NULL,NULL,1,2 );
        INSERT INTO tb_answer VALUES (NULL,'MORADO',NULL,NULL,NULL,1,2 );
         INSERT INTO tb_answer VALUES (NULL,'LILA',NULL,NULL,NULL,1,2 );
          INSERT INTO tb_answer VALUES (NULL,'OTROS',NULL,NULL,NULL,1,2 );
          
          
          
     
     
    

