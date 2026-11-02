-- ----------------------------
-- Dimensão Sexo
-- ----------------------------

use mmd_datawarehouse;
-- delete from DimSexo;

INSERT into dim_sexo (
  id_sexo,
  descricao_sexo)
VALUES
(1, "Masculino"),
(2, "Feminino");

Select * from mmd_datawarehouse.dim_sexo;


-- ----------------------------
-- Dimensão Curso
-- ----------------------------

use mmd_datawarehouse;
-- delete from DimCurso;

insert into mmd_datawarehouse.dim_curso (descricao_curso) 
select distinct nome_curso 
from staging_matricula.matriculas;

SELECT * FROM  mmd_facsenac.dimcurso;






