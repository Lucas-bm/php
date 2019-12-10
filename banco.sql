-- entrar no mysql 

mysql -u root

-- visualizar os bancos que existem 

show databases;

-- criar banco de dados
create database usuario;

-- conectar um banco
use usuario;

-- criar uma tabela em um banco de dados
create table usuario(
    idusuario int primary key auto_increment,
    nome varchar(40),
    email varchar(50),
    senha varchar(40)
);

-- visualizar os campos da tabela criado
desc usuario;

Query Ok, 0 rows affected (0.35 sec)

MariaDB [usuario]> desc usuario;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| idusuario | int(11)     | NO   | PRI | NULL    | auto_increment |
| nome      | varchar(40) | YES  |     | NULL    |                |
| email     | varchar(50) | YES  |     | NULL    |                |
| senha     | varchar(40) | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
4 rows in set (0.00 sec) 




--- visualizar as tabelas existentes
show tables;


MariaDB [usuario]> show tables;
+-------------------+
| Tables_in_usuario |
+-------------------+
| usuario           |
+-------------------+
1 row in set (0.00 sec) 



-- inserir dados em uma tabela no banco

insert into usuario values
(null,'danielle','@yahoo.com.br','12345');

-- visualizar dados na tabela
 select * from usuario;


insert into usuario values
(null,'lucas barros','lucas@hotmail.com'
,md5('12345'));


-- md5 algoritmo de criptografia
-- programa de criptografia