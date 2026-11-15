
-- =====================================================
-- PROJETO EDUCAÇÃO CORPORATIVA - SENAC
-- CRIAÇÃO DA ESTRUTURA DO BANCO DE DADOS DIMENSIONAL
-- MySQL 8.0
-- Geração: MySQL Workbench > Database > Forward Engineer
-- =====================================================

-- CONFIGURAÇÕES INICIAIS

SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS,
    UNIQUE_CHECKS = 0;

SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS,
    FOREIGN_KEY_CHECKS = 0;

SET @OLD_SQL_MODE = @@SQL_MODE,
    SQL_MODE = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


-- =====================================================
-- 0. CRIAÇÃO DO BANCO
-- =====================================================

DROP DATABASE IF EXISTS mmd_datawarehouse;
CREATE DATABASE IF NOT EXISTS mmd_datawarehouse
DEFAULT CHARACTER SET utf8mb4
COLLATE utf8mb4_0900_ai_ci;

USE mmd_datawarehouse;

-- =====================================================
-- 1. DIMENSÃO TEMPO (USAR JUNTO COM PROCEDURE PARA POPULAR)
-- =====================================================

DROP TABLE IF EXISTS dim_tempo;
CREATE TABLE IF NOT EXISTS dim_tempo (
        id_tempo            INTEGER PRIMARY KEY,  -- year*10000+month*100+day
        data                DATE NOT NULL,
        ano                 INTEGER NOT NULL,
        mes                 INTEGER NOT NULL, -- 1 to 12
        dia                 INTEGER NOT NULL, -- 1 to 31
        bimestre            INTEGER NOT NULL, -- 1 to 6
        semestre            INTEGER NOT NULL, -- 1 to 2
        nome_dia            VARCHAR(9) NOT NULL, -- 'Monday', 'Tuesday'...
        nome_mes            VARCHAR(9) NOT NULL, -- 'January', 'February'...
        final_de_semana     CHAR(1) DEFAULT 'F' CHECK (final_de_semana in ('T', 'F'))
) Engine=InnoDB;


-- =====================================================
-- 2. DIMENSÃO DEPARTAMENTO
-- =====================================================

CREATE TABLE dim_departamento (
    id_departamento INT AUTO_INCREMENT,
    descricao_departamento VARCHAR(60) NOT NULL,

    PRIMARY KEY (id_departamento),
    UNIQUE KEY uk_departamento (descricao_departamento)
);


-- =====================================================
-- 3. DIMENSÃO FUNCIONÁRIO
-- =====================================================

CREATE TABLE dim_funcionario (
    id_funcionario INT AUTO_INCREMENT,
    cod_matricula INT NOT NULL,
    nome_funcionario VARCHAR(60) NOT NULL,
    situacao_funcionario VARCHAR(10) NOT NULL,
    area_funcionario VARCHAR(30) NOT NULL,
    chefe_funcionario VARCHAR(3) NOT NULL,
    grau_instrucao_funcionario VARCHAR(15) NOT NULL,
    nascimento_funcionario DATE DEFAULT NULL,

    PRIMARY KEY (id_funcionario),
    UNIQUE KEY uk_funcionario_matricula (cod_matricula)
);


-- =====================================================
-- 4. DIMENSÃO SEXO
-- =====================================================

CREATE TABLE IF NOT EXISTS dim_sexo (
    id_sexo INT NOT NULL AUTO_INCREMENT,
    descricao_sexo VARCHAR(1) NOT NULL,
    
    PRIMARY KEY (id_sexo),
	UNIQUE KEY uk_dim_sexo (descricao_sexo)
) ENGINE = InnoDB;


-- =====================================================
-- 5. DIMENSÃO CURSO (TIRAR DÚVIDAS SOBRE SE REMOVO OU SEPARO AS COLUNAS)
-- =====================================================

CREATE TABLE dim_curso (
    id_curso INT NOT NULL AUTO_INCREMENT,
    cod_curso VARCHAR(30) NOT NULL,
    descricao_curso VARCHAR(60) NOT NULL,
    data_inclusao_curso DATE DEFAULT NULL,
    carga_horaria_curso INT DEFAULT NULL,
    realizado_curso VARCHAR(3) DEFAULT NULL,
    valor_contratado_curso DECIMAL(10,2) DEFAULT NULL,

    PRIMARY KEY (id_curso),
    UNIQUE KEY uk_dim_curso_cod (cod_curso)

) ENGINE = InnoDB;


-- =====================================================
-- 6. DIMENSÃO FORMATO
-- =====================================================

CREATE TABLE dim_formato (
    id_formato INT NOT NULL AUTO_INCREMENT,
    descricao_formato VARCHAR(10) NOT NULL,
    
    PRIMARY KEY (id_formato),
    UNIQUE KEY uk_formato (descricao_formato)
) ENGINE = InnoDB;


-- =====================================================
-- 7. DIMENSÃO CATEGORIA
-- =====================================================

CREATE TABLE dim_categoria (
    id_categoria INT NOT NULL AUTO_INCREMENT,
    descricao_categoria VARCHAR(15) NOT NULL,
    
    PRIMARY KEY (id_categoria),
	UNIQUE KEY uk_categoria (descricao_categoria)
) ENGINE = InnoDB;


-- =====================================================
-- 8. DIMENSÃO MODALIDADE
-- =====================================================

CREATE TABLE dim_modalidade (
    id_modalidade INT NOT NULL AUTO_INCREMENT,
    descricao_modalidade VARCHAR(15) NOT NULL,
    
    PRIMARY KEY (id_modalidade),
    UNIQUE KEY uk_modalidade (descricao_modalidade)
) ENGINE = InnoDB;


-- =====================================================
-- 9. DIMENSÃO PROGRAMA
-- =====================================================

CREATE TABLE dim_programa (
    id_programa INT AUTO_INCREMENT,
    descricao_programa VARCHAR(50) NOT NULL,

    PRIMARY KEY (id_programa),
    UNIQUE KEY uk_programa (descricao_programa)
);


-- =====================================================
-- 10. DIMENSÃO CARGO
-- =====================================================

CREATE TABLE dim_cargo (
    id_cargo INT AUTO_INCREMENT,
    descricao_cargo VARCHAR(45) NOT NULL,

    PRIMARY KEY (id_cargo),
    UNIQUE KEY uk_cargo (descricao_cargo)
);


-- =====================================================
-- 11. TABELA FATO PARTICIPAÇÃO EM CURSOS
-- =====================================================

CREATE TABLE fato_participacao (
    id_participacao INT NOT NULL AUTO_INCREMENT,

    -- CHAVES DIMENSIONAIS
    id_cargo INT NOT NULL,
    id_categoria INT NOT NULL,
    id_curso INT NOT NULL,
    id_formato INT NOT NULL,
    id_departamento INT NOT NULL,
    id_funcionario INT NOT NULL,
    id_modalidade INT NOT NULL,
    id_programa INT NOT NULL,
    id_sexo INT NOT NULL,

    -- DIMENSÃO TEMPO
    id_tempo_inicio INT NOT NULL,
    id_tempo_conclusao INT NULL,

    -- MÉTRICA
    quantidade_participacao INT NOT NULL DEFAULT 1,

    PRIMARY KEY (id_participacao),

    CONSTRAINT chk_quantidade_participacao
        CHECK (quantidade_participacao > 0),

    FOREIGN KEY (id_cargo)
        REFERENCES dim_cargo(id_cargo),

    FOREIGN KEY (id_categoria)
        REFERENCES dim_categoria(id_categoria),

    FOREIGN KEY (id_curso)
        REFERENCES dim_curso(id_curso),

    FOREIGN KEY (id_formato)
        REFERENCES dim_formato(id_formato),

    FOREIGN KEY (id_departamento)
        REFERENCES dim_departamento(id_departamento),

    FOREIGN KEY (id_funcionario)
        REFERENCES dim_funcionario(id_funcionario),

    FOREIGN KEY (id_modalidade)
        REFERENCES dim_modalidade(id_modalidade),

    FOREIGN KEY (id_programa)
        REFERENCES dim_programa(id_programa),

    FOREIGN KEY (id_sexo)
        REFERENCES dim_sexo(id_sexo),

    FOREIGN KEY (id_tempo_inicio)
        REFERENCES dim_tempo(id_tempo),

    FOREIGN KEY (id_tempo_conclusao)
        REFERENCES dim_tempo(id_tempo),

    INDEX idx_fato_cargo (id_cargo),
    INDEX idx_fato_categoria (id_categoria),
    INDEX idx_fato_curso (id_curso),
    INDEX idx_fato_formato (id_formato),
    INDEX idx_fato_departamento (id_departamento),
    INDEX idx_fato_funcionario (id_funcionario),
    INDEX idx_fato_modalidade (id_modalidade),
    INDEX idx_fato_programa (id_programa),
    INDEX idx_fato_sexo (id_sexo),
    INDEX idx_fato_tempo_inicio (id_tempo_inicio),
    INDEX idx_fato_tempo_conclusao (id_tempo_conclusao)

) ENGINE = InnoDB;

-- Considerando que:
-- O mesmo funcionário pode participar várias vezes do mesmo curso.
-- Cada participação será identificada pelo seu período.
-- Participações com datas diferentes serão preservadas.
-- Uma participação em andamento terá DATA_CONCLUSAO nula.

-- Validar a chave de negócio nos dados:
-- SELECT
--     TRIM(COD_PROCESSO) AS COD_PROCESSO,
--     COD_MATRICULA,
--     DATA_INICIO,
--     DATA_CONCLUSAO,
--     COUNT(*) AS quantidade
-- FROM mmd_staging.participacaocurso_limpo
-- GROUP BY
--     TRIM(COD_PROCESSO),
--     COD_MATRICULA,
--     DATA_INICIO,
--     DATA_CONCLUSAO
-- HAVING COUNT(*) > 1;

-- Criar uma proteção contra duplicidades:
ALTER TABLE mmd_datawarehouse.fato_participacao
ADD CONSTRAINT uk_fato_participacao
UNIQUE (
    id_curso,
    id_funcionario,
    id_tempo_inicio,
    id_tempo_conclusao
);



-- =====================================================
-- FINALIZACAO
-- =====================================================

SET SQL_MODE = @OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS;


-- =====================================================
-- FIM DO SCRIPT
-- =====================================================
