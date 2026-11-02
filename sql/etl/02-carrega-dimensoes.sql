-- ----------------------------
-- Dimensão Sexo
-- ----------------------------

use mmd_datawarehouse;
-- delete from DimSexo;

insert into dim_sexo (
  id_sexo,
  descricao_sexo)
values
(1, "F"),
(2, "M");

select * from mmd_datawarehouse.dim_sexo;


-- ----------------------------
-- Dimensão Departamento
-- ----------------------------

use mmd_datawarehouse;
-- delete from DimSexo;

insert into dim_departamento (
  id_departamento,
  descricao_departamento)
values
(1, "Coordenação de ADS"),
(2, "Coordenação de Banco de Dados"),
(3, "Depto de Recursos Humanos"),
(4, "Depto Tecnológico"),
(5, "SAA - Secretaria Acadêmica");

select * from mmd_datawarehouse.dim_departamento;


-- ----------------------------
-- Dimensão Grau de Instrução
-- ----------------------------

use mmd_datawarehouse;
-- delete from DimSexo;

insert into dim_departamento (
  id_departamento,
  descricao_departamento)
values
(1, "Coordenação de ADS"),
(2, "Coordenação de Banco de Dados"),
(3, "Depto de Recursos Humanos"),
(4, "Depto Tecnológico"),
(5, "SAA - Secretaria Acadêmica");

select * from mmd_datawarehouse.dim_departamento;


-- ----------------------------
-- Dimensão Curso
-- ----------------------------

use mmd_datawarehouse;
-- delete from DimCurso;

insert into mmd_datawarehouse.dim_curso (descricao_curso) 
select distinct nome_curso 
from mmd_staging.dataset_participacaocurso_limpo;

SELECT * FROM  mmd_datawarehouse.dim_curso;






