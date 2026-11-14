-- Quantidade de participações
SELECT COUNT(*) AS total_participacoes
FROM mmd_datawarehouse.fato_participacao;

-- Visualizar as participações com descrições
SELECT
    f.id_participacao,
    fun.nome_funcionario,
    car.descricao_cargo,
    cur.descricao_curso,
    cat.descricao_categoria,
    dep.descricao_departamento,
    pro.descricao_programa,
    modl.descricao_modalidade,
    forr.descricao_formato,
    ti.data AS data_inicio,
    tc.data AS data_conclusao

FROM mmd_datawarehouse.fato_participacao f

INNER JOIN mmd_datawarehouse.dim_funcionario fun
    ON fun.id_funcionario = f.id_funcionario

INNER JOIN mmd_datawarehouse.dim_cargo car
    ON car.id_cargo = f.id_cargo

INNER JOIN mmd_datawarehouse.dim_curso cur
    ON cur.id_curso = f.id_curso

INNER JOIN mmd_datawarehouse.dim_categoria cat
    ON cat.id_categoria = f.id_categoria

INNER JOIN mmd_datawarehouse.dim_departamento dep
    ON dep.id_departamento = f.id_departamento

INNER JOIN mmd_datawarehouse.dim_programa pro
    ON pro.id_programa = f.id_programa

INNER JOIN mmd_datawarehouse.dim_modalidade modl
    ON modl.id_modalidade = f.id_modalidade

INNER JOIN mmd_datawarehouse.dim_formato forr
    ON forr.id_formato = f.id_formato

INNER JOIN mmd_datawarehouse.dim_tempo ti
    ON ti.id_tempo = f.id_tempo_inicio

LEFT JOIN mmd_datawarehouse.dim_tempo tc
    ON tc.id_tempo = f.id_tempo_conclusao;

-- Total de participações por departamento
SELECT
    d.descricao_departamento,
    COUNT(*) AS total_participacoes

FROM mmd_datawarehouse.fato_participacao f

INNER JOIN mmd_datawarehouse.dim_departamento d
    ON d.id_departamento = f.id_departamento

GROUP BY d.descricao_departamento
ORDER BY total_participacoes DESC;

-- Total de participações por curso
SELECT
    c.descricao_curso,
    COUNT(*) AS total_participacoes

FROM mmd_datawarehouse.fato_participacao f

INNER JOIN mmd_datawarehouse.dim_curso c
    ON c.id_curso = f.id_curso

GROUP BY c.descricao_curso
ORDER BY total_participacoes DESC;