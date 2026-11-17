-- Antes da carga: validar os relacionamentos
-- Não recomendo inserir diretamente na fato sem verificar se todas as chaves serão encontradas.
-- Execute estas consultas primeiro.
-- Se alguma consulta retornar registros, precisamos corrigir a dimensão ou os dados de origem antes da carga.

-- 2.1. Funcionários sem correspondência
SELECT p.COD_MATRICULA, p.NOME_FUNCIONARIO
FROM mmd_staging.participacaocurso_limpo p
LEFT JOIN mmd_datawarehouse.dim_funcionario f
    ON f.cod_matricula = p.COD_MATRICULA
WHERE f.id_funcionario IS NULL;

-- 2.2. Cursos sem correspondência: Considerando provisoriamente que COD_PROCESSO = COD_CURSO:
SELECT p.COD_PROCESSO, p.DESCRICAO_CURSO
FROM mmd_staging.participacaocurso_limpo p
LEFT JOIN mmd_datawarehouse.dim_curso c
    ON c.cod_curso = TRIM(p.COD_PROCESSO)
WHERE c.id_curso IS NULL;

-- 2.3. Departamentos sem correspondência
SELECT DISTINCT p.DEPARTAMENTO
FROM mmd_staging.participacaocurso_limpo p
LEFT JOIN mmd_datawarehouse.dim_departamento d
    ON d.descricao_departamento = TRIM(p.DEPARTAMENTO)
WHERE d.id_departamento IS NULL;

-- 2.4. Datas sem correspondência
SELECT DISTINCT p.DATA_INICIO
FROM mmd_staging.participacaocurso_limpo p
LEFT JOIN mmd_datawarehouse.dim_tempo t
    ON t.data = STR_TO_DATE(p.DATA_INICIO, '%Y-%m-%d')
WHERE t.id_tempo IS NULL;

SELECT DISTINCT p.DATA_CONCLUSAO
FROM mmd_staging.participacaocurso_limpo p
LEFT JOIN mmd_datawarehouse.dim_tempo t
    ON t.data = STR_TO_DATE(p.DATA_CONCLUSAO, '%Y-%m-%d')
WHERE t.id_tempo IS NULL;