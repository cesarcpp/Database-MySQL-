create database ActionFitness_Project;
use ActionFitness_Project;

create table clientes(
Nome varchar(50) NOT NULL,
Email varchar(50) NOT NULL,
Cpf int(12) NOT NULL,
Nascimento date NOT NULL,
Sexo varchar(10) NOT NULL,
Telefone int(11) NOT NULL,
CEP int(8) NOT NULL,
Endereco varchar(150) NOT NULL,
Numero int(5) NOT NULL,
Bairro varchar(150) NOT NULL,
PRIMARY KEY (Nome)
);

create table funcionario(
Nome_Funcionario varchar(50) NOT NULL,
Nickname varchar(10) NOT NULL,
Senha int(8) NOT NULL,
PRIMARY KEY(Nickname)
);

create table planos(
Nome_Plano varchar(50) NOT NULL,
Valor decimal(10,2) NOT NULL,
PRIMARY KEY(Nome_Plano)
);

create table matricula(
Nome varchar(50),
Nome_Plano varchar(50),
Data_Matricula datetime not null,
constraint fk_matricula_clientes foreign key (Nome) references clientes (Nome),
constraint fk_matricula_planos1 foreign key (Nome_Plano) references planos (Nome_Plano),
primary key (Data_Matricula)
);