
-- =====================================================
-- PROJETO EDUCAÇÃO CORPORATIVA - SENAC
-- CARGA DAS DIMENSÕES DO DATA WAREHOUSE
-- MySQL 8.0
-- =====================================================

USE mmd_datawarehouse;

-- =====================================================
-- 1. DIMENSÃO CARGO
-- Origem: funcionario_limpo
-- =====================================================

INSERT INTO dim_cargo (descricao_cargo)
SELECT DISTINCT TRIM(f.CARGO)
FROM mmd_staging.funcionario_limpo f
WHERE f.CARGO IS NOT NULL
  AND TRIM(f.CARGO) <> ''
  AND NOT EXISTS (
      SELECT 1
      FROM dim_cargo d
      WHERE d.descricao_cargo = TRIM(f.CARGO)
  );


-- =====================================================
-- 2. DIMENSÃO CATEGORIA
-- Origem: curso_limpo
-- =====================================================

INSERT INTO dim_categoria (descricao_categoria)
SELECT DISTINCT TRIM(c.CATEGORIA)
FROM mmd_staging.curso_limpo c
WHERE c.CATEGORIA IS NOT NULL
  AND TRIM(c.CATEGORIA) <> ''
  AND NOT EXISTS (
      SELECT 1
      FROM dim_categoria d
      WHERE d.descricao_categoria = TRIM(c.CATEGORIA)
  );


-- =====================================================
-- 3. DIMENSÃO CURSO
-- Origem: curso_limpo
-- IMPORTANTE: id_curso é automático.
-- cod_curso é a chave natural.
-- =====================================================

INSERT INTO dim_curso (
    cod_curso,
    descricao_curso,
    data_inclusao_curso,
    carga_horaria_curso,
    realizado_curso,
    valor_contratado_curso
)
SELECT
    TRIM(c.COD_CURSO),
    TRIM(c.DESCRICAO_CURSO),

    STR_TO_DATE(
        NULLIF(TRIM(c.DATA_INCLUSAO), ''),
        '%Y-%m-%d'
    ),

    c.CARGA_HORARIA,
    NULLIF(TRIM(c.CURSO_REALIZADO), ''),
    c.VALOR

FROM mmd_staging.curso_limpo c

WHERE c.COD_CURSO IS NOT NULL
  AND TRIM(c.COD_CURSO) <> ''
  AND UPPER(TRIM(c.COD_CURSO)) <> '<NA>'

ON DUPLICATE KEY UPDATE
    descricao_curso = VALUES(descricao_curso),
    data_inclusao_curso = VALUES(data_inclusao_curso),
    carga_horaria_curso = VALUES(carga_horaria_curso),
    realizado_curso = VALUES(realizado_curso),
    valor_contratado_curso = VALUES(valor_contratado_curso);


-- =====================================================
-- 4. DIMENSÃO DEPARTAMENTO
-- Origem: funcionario_limpo e participacaocurso_limpo
-- =====================================================

INSERT INTO dim_departamento (descricao_departamento)
SELECT DISTINCT x.departamento
FROM (
    SELECT TRIM(DEPARTAMENTO) AS departamento
    FROM mmd_staging.funcionario_limpo

    UNION

    SELECT TRIM(DEPARTAMENTO) AS departamento
    FROM mmd_staging.participacaocurso_limpo
) x
WHERE x.departamento IS NOT NULL
  AND x.departamento <> ''
  AND NOT EXISTS (
      SELECT 1
      FROM dim_departamento d
      WHERE d.descricao_departamento = x.departamento
  );


-- =====================================================
-- 5. DIMENSÃO FORMATO
-- Origem: curso_limpo
-- =====================================================

INSERT INTO dim_formato (descricao_formato)
SELECT DISTINCT TRIM(c.FORMATO)
FROM mmd_staging.curso_limpo c
WHERE c.FORMATO IS NOT NULL
  AND TRIM(c.FORMATO) <> ''
  AND NOT EXISTS (
      SELECT 1
      FROM dim_formato d
      WHERE d.descricao_formato = TRIM(c.FORMATO)
  );


-- =====================================================
-- 6. DIMENSÃO MODALIDADE
-- Origem: curso_limpo
-- =====================================================

INSERT INTO dim_modalidade (descricao_modalidade)
SELECT DISTINCT TRIM(c.MODALIDADE)
FROM mmd_staging.curso_limpo c
WHERE c.MODALIDADE IS NOT NULL
  AND TRIM(c.MODALIDADE) <> ''
  AND NOT EXISTS (
      SELECT 1
      FROM dim_modalidade d
      WHERE d.descricao_modalidade = TRIM(c.MODALIDADE)
  );


-- =====================================================
-- 7. DIMENSÃO PROGRAMA
-- Origem: curso_limpo
-- =====================================================

INSERT INTO dim_programa (descricao_programa)
SELECT DISTINCT TRIM(c.PROGRAMA)
FROM mmd_staging.curso_limpo c
WHERE c.PROGRAMA IS NOT NULL
  AND TRIM(c.PROGRAMA) <> ''
  AND NOT EXISTS (
      SELECT 1
      FROM dim_programa d
      WHERE d.descricao_programa = TRIM(c.PROGRAMA)
  );


-- =====================================================
-- 8. DIMENSÃO SEXO
-- Origem: funcionario_limpo
-- =====================================================

INSERT INTO dim_sexo (descricao_sexo)
SELECT DISTINCT UPPER(TRIM(f.SEXO))
FROM mmd_staging.funcionario_limpo f
WHERE f.SEXO IS NOT NULL
  AND TRIM(f.SEXO) <> ''
  AND NOT EXISTS (
      SELECT 1
      FROM dim_sexo d
      WHERE d.descricao_sexo = UPPER(TRIM(f.SEXO))
  );


-- =====================================================
-- 9. DIMENSÃO FUNCIONÁRIO
-- Origem: funcionario_limpo
-- =====================================================

INSERT INTO dim_funcionario (
    cod_matricula,
    nome_funcionario,
    situacao_funcionario,
    area_funcionario,
    chefe_funcionario,
    grau_instrucao_funcionario,
    nascimento_funcionario
)
SELECT
    f.COD_MATRICULA,
    TRIM(f.NOME_FUNCIONARIO),
    TRIM(f.MATRICULA_ATIVA),
    TRIM(f.AREA),
    TRIM(f.CHEFE),
    TRIM(f.GRAU_INSTRUCAO),

    STR_TO_DATE(
        NULLIF(TRIM(f.DATA_NASCIMENTO), ''),
        '%Y-%m-%d'
    )

FROM mmd_staging.funcionario_limpo f

WHERE f.COD_MATRICULA IS NOT NULL
  AND f.NOME_FUNCIONARIO IS NOT NULL
  AND TRIM(f.NOME_FUNCIONARIO) <> ''

ON DUPLICATE KEY UPDATE
    nome_funcionario = VALUES(nome_funcionario),
    situacao_funcionario = VALUES(situacao_funcionario),
    area_funcionario = VALUES(area_funcionario),
    chefe_funcionario = VALUES(chefe_funcionario),
    grau_instrucao_funcionario = VALUES(grau_instrucao_funcionario),
    nascimento_funcionario = VALUES(nascimento_funcionario);
  

-- =====================================================
-- 10. DIMENSÃO TEMPO
-- A carga será realizada por procedure específica.
-- =====================================================

DROP PROCEDURE IF EXISTS carga_dimensao_tempo;
DELIMITER //
CREATE PROCEDURE carga_dimensao_tempo(IN startdate DATE,IN stopdate DATE)
BEGIN
    DECLARE currentdate DATE;
    SET currentdate = startdate;
    WHILE currentdate <= stopdate DO
        INSERT INTO dim_tempo VALUES (
            YEAR(currentdate)*10000+MONTH(currentdate)*100 + DAY(currentdate),
            currentdate,
            YEAR(currentdate),
            MONTH(currentdate),
            DAY(currentdate),
			FLOOR(1 + (month(currentdate) - 1) / 2), #bimestre
            FLOOR(1 + (month(currentdate) - 1) / 6), #semestre
            DATE_FORMAT(currentdate,'%W'),
            DATE_FORMAT(currentdate,'%M'),
            CASE DAYOFWEEK(currentdate) WHEN 1 THEN 'T' WHEN 7 then 'T' ELSE 'F' END
            );
        SET currentdate = ADDDATE(currentdate,INTERVAL 1 DAY);
    END WHILE;
END
//
DELIMITER ;

-- delete from dim_tempo;
CALL carga_dimensao_tempo('2024-01-01','2026-12-31');

-- =====================================================
-- 11. CONFERÊNCIA DAS DIMENSÕES
-- =====================================================

SELECT * FROM dim_cargo;
SELECT * FROM dim_categoria;
SELECT * FROM dim_curso;
SELECT * FROM dim_departamento;
SELECT * FROM dim_formato;
SELECT * FROM dim_modalidade;
SELECT * FROM dim_programa;
SELECT * FROM dim_sexo;
SELECT * FROM dim_funcionario;

-- =====================================================
-- FIM DA CARGA DAS DIMENSÕES
-- =====================================================
