
-- =====================================================
-- PROJETO EDUCAÇÃO CORPORATIVA - SENAC
-- CRIAÇÃO DA ESTRUTURA DO BANCO DE DADOS DIMENSIONAL
-- MySQL 8.0
-- Geração: MySQL Workbench > Database > Forward Engineer
-- =====================================================

-- CONFIGURACOES INICIAIS

SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS,
    UNIQUE_CHECKS = 0;

SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS,
    FOREIGN_KEY_CHECKS = 0;

SET @OLD_SQL_MODE = @@SQL_MODE,
    SQL_MODE = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


-- =====================================================
-- 0. CRIAÇÃO DO BANCO
-- =====================================================

CREATE DATABASE IF NOT EXISTS mmd_datawarehouse
DEFAULT CHARACTER SET utf8mb4
COLLATE utf8mb4_0900_ai_ci;

USE mmd_datawarehouse;


-- =====================================================
-- 1. DIMENSÃO TEMPO (USAR JUNTO COM PROCEDURE)
-- =====================================================

CREATE TABLE IF NOT EXISTS `MMD_facsenac`.`DimTempo` (
        idDimtempo         INTEGER PRIMARY KEY,  -- year*10000+month*100+day
        data                DATE NOT NULL,
        ano                 INTEGER NOT NULL,
        mes                 INTEGER NOT NULL, -- 1 to 12
        dia                 INTEGER NOT NULL, -- 1 to 31
        bimestre            INTEGER NOT NULL, -- 1 to 4
        semestre            INTEGER NOT NULL, -- 1 to 4
        NomeDia             VARCHAR(9) NOT NULL, -- 'Monday', 'Tuesday'...
        NomeMes             VARCHAR(9) NOT NULL, -- 'January', 'February'...
        FinaldeSemana       CHAR(1) DEFAULT 'F' CHECK (finaldesemana in ('T', 'F'))
) Engine=InnoDB;


-- =====================================================
-- 2. DIMENSÃO LOTAÇÃO
-- =====================================================

CREATE TABLE IF NOT EXISTS dim_lotacao (
    id_lotacao INT NOT NULL AUTO_INCREMENT,
    descricao_lotacao VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_lotacao)
) ENGINE = InnoDB;


-- =====================================================
-- 3. DIMENSÃO FUNCIONÁRIO
-- =====================================================

CREATE TABLE IF NOT EXISTS dim_funcionario (
    id_matricula INT NOT NULL AUTO_INCREMENT,
    nome_funcionario VARCHAR(60) NOT NULL,
    situacao_funcionario VARCHAR(10) NOT NULL,
    area_funcionario VARCHAR(30) NOT NULL,
    chefe_funcionario VARCHAR(3) NOT NULL,
    grau_instrucao_funcionario VARCHAR(15) NOT NULL,
    nascimento_funcionario DATE NOT NULL,
    PRIMARY KEY (id_matricula)
) ENGINE = InnoDB;


-- =====================================================
-- 4. DIMENSÃO SEXO
-- =====================================================

CREATE TABLE IF NOT EXISTS dim_sexo (
    id_sexo INT NOT NULL AUTO_INCREMENT,
    descricao_sexo VARCHAR(1) NOT NULL,
    PRIMARY KEY (id_sexo)
) ENGINE = InnoDB;


-- =====================================================
-- 5. DIMENSÃO CURSO
-- =====================================================

CREATE TABLE IF NOT EXISTS dim_curso (
    id_curso INT NOT NULL AUTO_INCREMENT,
    descricao_curso VARCHAR(60) NOT NULL,
    data_inclusao_curso DATE NOT NULL,
    carga_horaria_curso INT NOT NULL,
    situacao_curso VARCHAR(15) NOT NULL
        COMMENT 'Indica se o curso foi realizado ou não.',
    valor_contratado_curso DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_curso)
) ENGINE = InnoDB;


-- =====================================================
-- 6. DIMENSÃO FORMATO
-- =====================================================

CREATE TABLE IF NOT EXISTS dim_formato (
    id_formato INT NOT NULL AUTO_INCREMENT,
    descricao_formato VARCHAR(10) NOT NULL,
    PRIMARY KEY (id_formato)
) ENGINE = InnoDB;


-- =====================================================
-- 7. DIMENSÃO CATEGORIA
-- =====================================================

CREATE TABLE IF NOT EXISTS dim_categoria (
    id_categoria INT NOT NULL AUTO_INCREMENT,
    descricao_categoria VARCHAR(15) NOT NULL,
    PRIMARY KEY (id_categoria)
) ENGINE = InnoDB;


-- =====================================================
-- 8. DIMENSÃO MODALIDADE
-- =====================================================

CREATE TABLE IF NOT EXISTS dim_modalidade (
    id_modalidade INT NOT NULL AUTO_INCREMENT,
    descricao_modalidade VARCHAR(10) NOT NULL,
    PRIMARY KEY (id_modalidade)
) ENGINE = InnoDB;


-- =====================================================
-- 9. DIMENSÃO PROGRAMA
-- =====================================================

CREATE TABLE IF NOT EXISTS dim_programa (
    id_programa INT NOT NULL AUTO_INCREMENT,
    descricao_programa VARCHAR(3) NOT NULL,
    PRIMARY KEY (id_programa)
) ENGINE = InnoDB;


-- =====================================================
-- 10. DIMENSÃO CARGO E FUNÇÃO
-- =====================================================

CREATE TABLE IF NOT EXISTS dim_cargo_funcao (
    id_cargo_funcao INT NOT NULL AUTO_INCREMENT,
    descricao_cargo_funcao VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_cargo_funcao)
) ENGINE = InnoDB;


-- =====================================================
-- 11. TABELA FATO PARTICIPAÇÃO EM CURSOS
-- =====================================================

CREATE TABLE IF NOT EXISTS fato_participacao_curso (
    id_participacao INT NOT NULL AUTO_INCREMENT,

    id_cargo_funcao INT NOT NULL,
    id_categoria INT NOT NULL,
    id_curso INT NOT NULL,
    id_formato INT NOT NULL,
    id_lotacao INT NOT NULL,
    id_matricula INT NOT NULL,
    id_modalidade INT NOT NULL,
    id_programa INT NOT NULL,
    id_sexo INT NOT NULL,
    id_tempo INT NOT NULL,

    data_inicio DATE NOT NULL,
    data_conclusao DATE NOT NULL,

    PRIMARY KEY (id_participacao),

    INDEX idx_fato_cargo (id_cargo_funcao),
    INDEX idx_fato_categoria (id_categoria),
    INDEX idx_fato_curso (id_curso),
    INDEX idx_fato_formato (id_formato),
    INDEX idx_fato_lotacao (id_lotacao),
    INDEX idx_fato_funcionario (id_matricula),
    INDEX idx_fato_modalidade (id_modalidade),
    INDEX idx_fato_programa (id_programa),
    INDEX idx_fato_sexo (id_sexo),
    INDEX idx_fato_tempo (id_tempo),

    CONSTRAINT fk_fato_cargo
        FOREIGN KEY (id_cargo_funcao)
        REFERENCES dim_cargo_funcao (id_cargo_funcao),

    CONSTRAINT fk_fato_categoria
        FOREIGN KEY (id_categoria)
        REFERENCES dim_categoria (id_categoria),

    CONSTRAINT fk_fato_curso
        FOREIGN KEY (id_curso)
        REFERENCES dim_curso (id_curso),

    CONSTRAINT fk_fato_formato
        FOREIGN KEY (id_formato)
        REFERENCES dim_formato (id_formato),

    CONSTRAINT fk_fato_lotacao
        FOREIGN KEY (id_lotacao)
        REFERENCES dim_lotacao (id_lotacao),

    CONSTRAINT fk_fato_funcionario
        FOREIGN KEY (id_matricula)
        REFERENCES dim_funcionario (id_matricula),

    CONSTRAINT fk_fato_modalidade
        FOREIGN KEY (id_modalidade)
        REFERENCES dim_modalidade (id_modalidade),

    CONSTRAINT fk_fato_programa
        FOREIGN KEY (id_programa)
        REFERENCES dim_programa (id_programa),

    CONSTRAINT fk_fato_sexo
        FOREIGN KEY (id_sexo)
        REFERENCES dim_sexo (id_sexo),

    CONSTRAINT fk_fato_tempo
        FOREIGN KEY (id_tempo)
        REFERENCES dim_tempo (id_tempo)

) ENGINE = InnoDB;


-- =====================================================
-- 12. PLACEHOLDERS PARA CARGA DAS DIMENSÕES
-- =====================================================

-- INSERT PLACEHOLDER: DIM_TEMPO

-- INSERT PLACEHOLDER: DIM_LOTACAO

-- INSERT PLACEHOLDER: DIM_FUNCIONARIO

-- INSERT PLACEHOLDER: DIM_SEXO

-- INSERT PLACEHOLDER: DIM_CURSO

-- INSERT PLACEHOLDER: DIM_FORMATO

-- INSERT PLACEHOLDER: DIM_CATEGORIA

-- INSERT PLACEHOLDER: DIM_MODALIDADE

-- INSERT PLACEHOLDER: DIM_PROGRAMA

-- INSERT PLACEHOLDER: DIM_CARGO_FUNCAO


-- =====================================================
-- 13. PLACEHOLDER PARA CARGA DA TABELA FATO
-- =====================================================

-- INSERT PLACEHOLDER: FATO_PARTICIPACAO_CURSO


-- =====================================================
-- FINALIZACAO
-- =====================================================

SET SQL_MODE = @OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS;


-- =====================================================
-- FIM DO SCRIPT
-- =====================================================
