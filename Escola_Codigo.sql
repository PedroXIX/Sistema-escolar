
create database bdescola;
use bdescola;

create table tblpessoa(
   pes_id int not null primary key auto_increment,
   pes_nome varchar(50) not null,
   pes_email varchar(300) not null,
   pes_telefone varchar(15) not null,
   pes_cep varchar(9) not null,
   pes_cpf varchar(15) not null,
   pes_rg varchar(15)not null,
   pes_sexo char(1) not null,
   pes_complemento varchar(50) not null,
   pes_numcasa varchar(3),
   pes_tipo varchar(1)
);


create table tblusuario(
   pes_id int not null primary key,
   usr_nome varchar(10) not null,
   usr_senha varchar(300) not null
); 
 
create table tblturmas(
  tur_id int not null primary key auto_increment,
  tur_nome varchar(100),
  tur_divisao char(1)
);

create table tblcursos(
    cur_id int not null primary key auto_increment,
    cur_nome varchar(50) not null,
    cur_horario varchar(10) not null
);

create table tblturm_curs(
    cur_id int not null,
    tur_id int not null,
    primary key(tur_id, cur_id)
);

create table tbldisciplinas(
  dis_id int not null primary key auto_increment,
  dis_nome varchar(50) not null,
  dis_horario varchar(10) not null
);

create table tblpes_tur(
  pes_id int not null,
  tur_id int not null,
  primary key (pes_id, tur_id)
);

create table tbldis_curs(
   dis_id int not null,
   cur_id int not null,
   primary key(cur_id, dis_id)
);

create table tbldisc_pesprof(
  pes_id int not null,
  dis_id int not null,
  primary key(pes_id, dis_id)
);
