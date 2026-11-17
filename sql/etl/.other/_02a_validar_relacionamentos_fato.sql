-- Se o resultado estiver correto, você terá todas as chaves substitutas necessárias para montar a fato.
-- Atenção: esse relacionamento pressupõe que os códigos sejam equivalentes e que os dados cadastrais atuais do funcionário sejam os que você deseja associar à participação.
-- Além disso, a consulta pressupõe uma única linha cadastral por matrícula e um único cadastro por código de curso. Se houver duplicidades, elas podem multiplicar os registros.

-- =====================================================
-- CONFERÊNCIA DO RELACIONAMENTO DA FATO
-- =====================================================

SELECT
    p.COD_PROCESSO,

    f.id_funcionario,
    cg.id_cargo,
    cat.id_categoria,
    c.id_curso,
    fo.id_formato,
    d.id_departamento,
    m.id_modalidade,
    pr.id_programa,
    sx.id_sexo,

    ti.id_tempo AS id_tempo_inicio,
    tc.id_tempo AS id_tempo_conclusao

FROM mmd_staging.participacaocurso_limpo p

-- FUNCIONÁRIO
INNER JOIN mmd_datawarehouse.dim_funcionario f
    ON f.cod_matricula = p.COD_MATRICULA

-- CADASTRO DO FUNCIONÁRIO NA STAGING
INNER JOIN mmd_staging.funcionario_limpo fs
    ON fs.COD_MATRICULA = p.COD_MATRICULA

-- CARGO
INNER JOIN mmd_datawarehouse.dim_cargo cg
    ON cg.descricao_cargo = TRIM(fs.CARGO)

-- SEXO
INNER JOIN mmd_datawarehouse.dim_sexo sx
    ON sx.descricao_sexo = UPPER(TRIM(fs.SEXO))

-- CURSO
INNER JOIN mmd_datawarehouse.dim_curso c
    ON c.cod_curso = TRIM(p.COD_PROCESSO)

-- CATEGORIA
INNER JOIN mmd_staging.curso_limpo cs
    ON TRIM(cs.COD_CURSO) = c.cod_curso

INNER JOIN mmd_datawarehouse.dim_categoria cat
    ON cat.descricao_categoria = TRIM(cs.CATEGORIA)

-- FORMATO
INNER JOIN mmd_datawarehouse.dim_formato fo
    ON fo.descricao_formato = TRIM(p.FORMATO)

-- DEPARTAMENTO
INNER JOIN mmd_datawarehouse.dim_departamento d
    ON d.descricao_departamento = TRIM(p.DEPARTAMENTO)

-- MODALIDADE
INNER JOIN mmd_datawarehouse.dim_modalidade m
    ON m.descricao_modalidade = TRIM(p.MODALIDADE)

-- PROGRAMA
INNER JOIN mmd_datawarehouse.dim_programa pr
    ON pr.descricao_programa = TRIM(p.PROGRAMA)

-- DATA DE INÍCIO
INNER JOIN mmd_datawarehouse.dim_tempo ti
    ON ti.data = STR_TO_DATE(p.DATA_INICIO, '%Y-%m-%d')

-- DATA DE CONCLUSÃO
LEFT JOIN mmd_datawarehouse.dim_tempo tc
    ON tc.data = STR_TO_DATE(
        NULLIF(TRIM(p.DATA_CONCLUSAO), ''),
        '%Y-%m-%d'
    );