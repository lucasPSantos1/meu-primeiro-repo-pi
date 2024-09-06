create database MechSpot;

use MechSpot;

create table oficina (
idOficina int primary key auto_increment,
nomeFantasia varchar(50) not null,
cnpj char(18)not null,
email varchar(50)not null,
cep char(9)not null,
tel char(12)not null,
qtd_boxes int
);

create table boxes (
idBoxes int primary	key auto_increment,
localBoxes int
);

create table sensor (
idSensor int primary key auto_increment,
disponibilidade varchar (15) not null,
constraint chkDisponibilidade check(disponibilidade in('operante','inoperante')),
localSensor int
);

create table usuario (
idUsuario int primary key auto_increment,
nomeFantasia varchar(40) not null,
emailUsuario varchar(50) not null,
senhaUsuario varchar(16) not null
);

create table registro_sensor (
idRegistro int primary key auto_increment,
resultado int,
dtResultado date
); 

select * from sensor;

insert into oficina (idOficina, nomeFantasia, cnpj, email, cep, tel, qtd_boxes) values
(default,'Oficina do João','12.345.678/0001-90','contato@empresaexemplo.com.br','12345-678','11 33224455', 8);

insert into boxes (idBoxes, localBoxes) values
(default, '2');

insert into sensor (idSensor, disponibilidade, localSensor)values
(default, 'operante', 3);

select * from usuario;

insert into usuario (idUsuario, nomeFantasia, emailUsuario, senhaUsuario) values
(default,'Lucas','meu_novo_email@novo.email.com', 'senha123');

select * from registro_sensor;

insert into registro_sensor (idRegistro, resultado, dtResultado) values
(default, 1, '2024-12-02');
