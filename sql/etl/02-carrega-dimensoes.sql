


-- ----------------------------
-- Dimensão Categoria
-- ----------------------------

use mmd_datawarehouse;
-- delete from dim_categoria;

insert into dim_categoria (
  id_categoria,
  descricao_categoria)
values
("GERENCIAL"),
("PESSOAL"),
("TÉCNICO"),
("TRANSVERSAL");

select * from mmd_datawarehouse.dim_categoria;


-- ----------------------------
-- Dimensão Departamento
-- ----------------------------

use mmd_datawarehouse;
-- delete from dim_departamento;

insert into dim_departamento (
  id_departamento,
  descricao_departamento)
values
("Coordenação de Análise e Desenvolvimento de Sistemas"),
("Coordenação de Banco de Dados"),
("Departamento de Recursos Humanos"),
("Departamento de Tecnologia"),
("Secretaria Acadêmica");

select * from mmd_datawarehouse.dim_departamento;


-- ----------------------------
-- Dimensão Cargo
-- ----------------------------

use mmd_datawarehouse;
-- delete from dim_cargo;

insert into dim_cargo (
  id_cargo,
  descricao_cargo)
values
("Auxiliar Administrativo"),
("Instrutor"),
("Professor"),
("Psicólogo"),
("Secretário");

select * from mmd_datawarehouse.dim_cargo;


-- ----------------------------
-- Dimensão Curso
-- ----------------------------

use mmd_datawarehouse;
-- delete from DimCurso;

insert into mmd_datawarehouse.dim_curso (descricao_curso) 
select distinct descricao_curso 
from mmd_staging.dataset_participacaocurso_limpo;

SELECT * FROM  mmd_datawarehouse.dim_curso;


-- ----------------------------
-- Dimensão Formato
-- ----------------------------

use mmd_datawarehouse;
-- delete from dim_formato;

insert into dim_formato (
  id_formato,
  descricao_formato)
values
("EXTERNO"),
("INTERNO");

select * from mmd_datawarehouse.dim_formato;


-- ----------------------------
-- Dimensão Modalidade
-- ----------------------------

use mmd_datawarehouse;
-- delete from dim_modalidade;

insert into dim_modalidade (
  id_modalidade,
  descricao_modalidade)
values
("PRESENCIAL"),
("EAD");

select * from mmd_datawarehouse.dim_modalidade;


-- ----------------------------
-- Dimensão Programa
-- ----------------------------

use mmd_datawarehouse;
-- delete from dim_programa;

insert into dim_programa (
  id_programa,
  descricao_programa)
values
("Programa de Desenvolvimento de Líderes"),
("Programa de Desenvolvimento de Sucessores");

select * from mmd_datawarehouse.dim_programa;


-- ----------------------------
-- Dimensão Sexo
-- ----------------------------

use mmd_datawarehouse;
-- delete from dim_sexo;

insert into dim_sexo (
  id_sexo,
  descricao_sexo)
values
("F"),
("M");

select * from mmd_datawarehouse.dim_sexo;


/*
-- ----------------------------
-- Dimensão Área
-- ----------------------------

use mmd_datawarehouse;
-- delete from dim_area;

insert into dim_area (
  id_area,
  descricao_area)
values
(1, "Acadêmico"),
(2, "Administração"),
(3, "Recursos Humanos"),
(4, "Tecnologia");

select * from mmd_datawarehouse.dim_area;
*/





















