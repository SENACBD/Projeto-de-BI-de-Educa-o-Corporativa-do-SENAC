-- =====================================================
-- CARGA DA FATO PARTICIPAÇÃO
-- =====================================================

INSERT INTO mmd_datawarehouse.fato_participacao
(
    id_cargo,
    id_categoria,
    id_curso,
    id_formato,
    id_departamento,
    id_funcionario,
    id_modalidade,
    id_programa,
    id_sexo,
    id_tempo_inicio,
    id_tempo_conclusao
)

SELECT
    cg.id_cargo,
    cat.id_categoria,
    c.id_curso,
    fo.id_formato,
    d.id_departamento,
    f.id_funcionario,
    m.id_modalidade,
    pr.id_programa,
    sx.id_sexo,
    ti.id_tempo,
    tc.id_tempo

FROM mmd_staging.participacaocurso_limpo p

INNER JOIN mmd_datawarehouse.dim_funcionario f
    ON f.cod_matricula = p.COD_MATRICULA

INNER JOIN mmd_staging.funcionario_limpo fs
    ON fs.COD_MATRICULA = p.COD_MATRICULA

INNER JOIN mmd_datawarehouse.dim_cargo cg
    ON cg.descricao_cargo = TRIM(fs.CARGO)

INNER JOIN mmd_datawarehouse.dim_sexo sx
    ON sx.descricao_sexo = UPPER(TRIM(fs.SEXO))

INNER JOIN mmd_datawarehouse.dim_curso c
    ON c.cod_curso = TRIM(p.COD_PROCESSO)

INNER JOIN mmd_staging.curso_limpo cs
    ON TRIM(cs.COD_CURSO) = c.cod_curso

INNER JOIN mmd_datawarehouse.dim_categoria cat
    ON cat.descricao_categoria = TRIM(cs.CATEGORIA)

INNER JOIN mmd_datawarehouse.dim_formato fo
    ON fo.descricao_formato = TRIM(p.FORMATO)

INNER JOIN mmd_datawarehouse.dim_departamento d
    ON d.descricao_departamento = TRIM(p.DEPARTAMENTO)

INNER JOIN mmd_datawarehouse.dim_modalidade m
    ON m.descricao_modalidade = TRIM(p.MODALIDADE)

INNER JOIN mmd_datawarehouse.dim_programa pr
    ON pr.descricao_programa = TRIM(p.PROGRAMA)

INNER JOIN mmd_datawarehouse.dim_tempo ti
    ON ti.data = STR_TO_DATE(p.DATA_INICIO, '%Y-%m-%d')

LEFT JOIN mmd_datawarehouse.dim_tempo tc
    ON tc.data = STR_TO_DATE(
        NULLIF(TRIM(p.DATA_CONCLUSAO), ''),
        '%Y-%m-%d'
    );

/*
WHERE NOT EXISTS (
    SELECT 1
    FROM mmd_datawarehouse.fato_participacao existente

    INNER JOIN mmd_datawarehouse.dim_curso ce
        ON ce.id_curso = existente.id_curso

    INNER JOIN mmd_datawarehouse.dim_funcionario fe
        ON fe.id_funcionario = existente.id_funcionario

    INNER JOIN mmd_datawarehouse.dim_tempo te
        ON te.id_tempo = existente.id_tempo_inicio

    LEFT JOIN mmd_datawarehouse.dim_tempo tec
        ON tec.id_tempo = existente.id_tempo_conclusao

    WHERE ce.cod_curso = TRIM(p.COD_PROCESSO)
      AND fe.cod_matricula = p.COD_MATRICULA
      AND te.data = STR_TO_DATE(p.DATA_INICIO, '%Y-%m-%d')
      AND tec.data <=> STR_TO_DATE(
          NULLIF(TRIM(p.DATA_CONCLUSAO), ''),
          '%Y-%m-%d'
      )
);
*/