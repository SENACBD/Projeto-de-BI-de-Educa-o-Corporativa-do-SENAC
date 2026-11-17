-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb3 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`aluno` (
  `Código_aluno` INT NOT NULL,
  `Telefone_aluno` VARCHAR(100) NULL DEFAULT NULL,
  `Email_aluno` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`Código_aluno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`disciplina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`disciplina` (
  `Código_disciplina` INT NOT NULL,
  `Nome_disciplina` VARCHAR(45) NOT NULL,
  `Nota_disciplina` INT NOT NULL,
  `Carga_horária` INT NOT NULL,
  PRIMARY KEY (`Código_disciplina`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`aluno_has_disciplina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`aluno_has_disciplina` (
  `Aluno_Código_aluno` INT NOT NULL,
  `Disciplina_Código_disciplina` INT NOT NULL,
  PRIMARY KEY (`Aluno_Código_aluno`, `Disciplina_Código_disciplina`),
  INDEX `fk_Aluno_has_Disciplina_Disciplina1_idx` (`Disciplina_Código_disciplina` ASC) VISIBLE,
  INDEX `fk_Aluno_has_Disciplina_Aluno_idx` (`Aluno_Código_aluno` ASC) VISIBLE,
  CONSTRAINT `fk_Aluno_has_Disciplina_Aluno`
    FOREIGN KEY (`Aluno_Código_aluno`)
    REFERENCES `mydb`.`aluno` (`Código_aluno`),
  CONSTRAINT `fk_Aluno_has_Disciplina_Disciplina1`
    FOREIGN KEY (`Disciplina_Código_disciplina`)
    REFERENCES `mydb`.`disciplina` (`Código_disciplina`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`alunos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`alunos` (
  `Código_aluno` INT NOT NULL,
  `Telefone_aluno` VARCHAR(100) NULL DEFAULT NULL,
  `email_aluno` VARCHAR(45) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cliente` (
  `iD_Cliente` INT NOT NULL,
  `CPF` VARCHAR(45) NOT NULL,
  `Telefone` INT NOT NULL,
  `E-mail` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`iD_Cliente`, `CPF`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`pedido` (
  `iD_Pedido` INT NOT NULL,
  `Data` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`iD_Pedido`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`cliente_has_pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cliente_has_pedido` (
  `Cliente_iD_Cliente` INT NOT NULL,
  `Cliente_CPF` VARCHAR(45) NOT NULL,
  `Pedido_iD_Pedido` INT NOT NULL,
  PRIMARY KEY (`Cliente_iD_Cliente`, `Cliente_CPF`, `Pedido_iD_Pedido`),
  INDEX `fk_Cliente_has_Pedido_Pedido1_idx` (`Pedido_iD_Pedido` ASC) VISIBLE,
  INDEX `fk_Cliente_has_Pedido_Cliente_idx` (`Cliente_iD_Cliente` ASC, `Cliente_CPF` ASC) VISIBLE,
  CONSTRAINT `fk_Cliente_has_Pedido_Cliente`
    FOREIGN KEY (`Cliente_iD_Cliente` , `Cliente_CPF`)
    REFERENCES `mydb`.`cliente` (`iD_Cliente` , `CPF`),
  CONSTRAINT `fk_Cliente_has_Pedido_Pedido1`
    FOREIGN KEY (`Pedido_iD_Pedido`)
    REFERENCES `mydb`.`pedido` (`iD_Pedido`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`curso` (
  `id_Curso` INT NOT NULL,
  `Nome-Curso` VARCHAR(45) NOT NULL,
  `Carga_Horária` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_Curso`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`dim_cargo_funcao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`dim_cargo_funcao` (
  `id_Cargo_Funcao` VARCHAR(60) NOT NULL,
  `Descricao` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_Cargo_Funcao`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`dimcurso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`dimcurso` (
  `id_Curso` INT NOT NULL AUTO_INCREMENT,
  `Evento` VARCHAR(60) NOT NULL,
  `Programa` VARCHAR(3) NOT NULL,
  `Categoria` VARCHAR(15) NOT NULL COMMENT 'Possível data da criação do curso',
  `Formato` VARCHAR(10) NOT NULL,
  `Data_Inclusao` DATE NOT NULL,
  `CargaHoraria` DECIMAL(3,0) NOT NULL,
  `Modalidade` VARCHAR(10) NOT NULL,
  `Situacao` VARCHAR(15) NOT NULL COMMENT 'Se o curso foi realizado ou não realizado.',
  `Valor_contratado` DECIMAL(6,2) NOT NULL,
  PRIMARY KEY (`id_Curso`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`dimfuncionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`dimfuncionario` (
  `id_Matricula` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(60) NOT NULL,
  `Situacao` VARCHAR(10) NOT NULL,
  `Area` VARCHAR(30) NOT NULL,
  `Chefe` VARCHAR(3) NOT NULL,
  `GrauInstrucao` VARCHAR(15) NOT NULL,
  `Nascimento` DATE NOT NULL,
  PRIMARY KEY (`id_Matricula`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`dimlotacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`dimlotacao` (
  `id_Lotacao` VARCHAR(60) NOT NULL,
  `Decricao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_Lotacao`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`dimparticipacaocurso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`dimparticipacaocurso` (
  `id_Participacao_Curso` INT NOT NULL,
  `Processo` VARCHAR(15) NOT NULL,
  `Matricula` INT NOT NULL,
  `Nome` VARCHAR(60) NOT NULL,
  `Gestor` VARCHAR(3) NOT NULL,
  `Lotacao` VARCHAR(60) NOT NULL,
  `Programa` VARCHAR(3) NOT NULL,
  `Formato` VARCHAR(10) NOT NULL,
  `Modalidade` VARCHAR(10) NOT NULL,
  `Data_Inicio` DATE NULL DEFAULT NULL,
  `Data_Conclusao` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id_Participacao_Curso`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`dimsexo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`dimsexo` (
  `idDimSexo` INT NOT NULL AUTO_INCREMENT,
  `Sexo` VARCHAR(1) NULL DEFAULT NULL,
  PRIMARY KEY (`idDimSexo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`dimtempo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`dimtempo` (
  `id_Tempo` INT NOT NULL AUTO_INCREMENT,
  `Mes` INT NOT NULL,
  `Ano` INT NOT NULL,
  PRIMARY KEY (`id_Tempo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`fato_participacao_curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`fato_participacao_curso` (
  `Quantidade` INT NULL DEFAULT NULL,
  `idDimSexo` INT NOT NULL,
  `id_Lotacao` VARCHAR(60) NOT NULL,
  `id_Curso` INT NOT NULL,
  `id_Participacao_Curso` INT NOT NULL,
  `id_Matricula` INT NOT NULL,
  `id_Cargo_Funcao` VARCHAR(60) NOT NULL,
  `id_Tempo` INT NOT NULL,
  PRIMARY KEY (`idDimSexo`, `id_Lotacao`, `id_Curso`, `id_Participacao_Curso`, `id_Matricula`, `id_Cargo_Funcao`, `id_Tempo`),
  INDEX `fk_Fato_Participacao_Curso_DimLotacao1_idx` (`id_Lotacao` ASC) VISIBLE,
  INDEX `fk_Fato_Participacao_Curso_DimCurso1_idx` (`id_Curso` ASC) VISIBLE,
  INDEX `fk_Fato_Participacao_Curso_DimParticipacaoCurso1_idx` (`id_Participacao_Curso` ASC) VISIBLE,
  INDEX `fk_Fato_Participacao_Curso_DimFuncionario1_idx` (`id_Matricula` ASC) VISIBLE,
  INDEX `fk_Fato_Participacao_Curso_Dim_Cargo_Funcao1_idx` (`id_Cargo_Funcao` ASC) VISIBLE,
  INDEX `fk_Fato_Participacao_Curso_DimTempo1_idx` (`id_Tempo` ASC) VISIBLE,
  CONSTRAINT `fk_Fato_Participacao_Curso_Dim_Cargo_Funcao1`
    FOREIGN KEY (`id_Cargo_Funcao`)
    REFERENCES `mydb`.`dim_cargo_funcao` (`id_Cargo_Funcao`),
  CONSTRAINT `fk_Fato_Participacao_Curso_DimCurso1`
    FOREIGN KEY (`id_Curso`)
    REFERENCES `mydb`.`dimcurso` (`id_Curso`),
  CONSTRAINT `fk_Fato_Participacao_Curso_DimFuncionario1`
    FOREIGN KEY (`id_Matricula`)
    REFERENCES `mydb`.`dimfuncionario` (`id_Matricula`),
  CONSTRAINT `fk_Fato_Participacao_Curso_DimLotacao1`
    FOREIGN KEY (`id_Lotacao`)
    REFERENCES `mydb`.`dimlotacao` (`id_Lotacao`),
  CONSTRAINT `fk_Fato_Participacao_Curso_DimParticipacaoCurso1`
    FOREIGN KEY (`id_Participacao_Curso`)
    REFERENCES `mydb`.`dimparticipacaocurso` (`id_Participacao_Curso`),
  CONSTRAINT `fk_Fato_Participacao_Curso_DimSexo`
    FOREIGN KEY (`idDimSexo`)
    REFERENCES `mydb`.`dimsexo` (`idDimSexo`),
  CONSTRAINT `fk_Fato_Participacao_Curso_DimTempo1`
    FOREIGN KEY (`id_Tempo`)
    REFERENCES `mydb`.`dimtempo` (`id_Tempo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`produto` (
  `codigo_produto` INT NOT NULL,
  `Descricao` VARCHAR(60) NOT NULL,
  `preco` FLOAT NOT NULL,
  PRIMARY KEY (`codigo_produto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`professor` (
  `Código_Professor` INT NOT NULL,
  `Telenone_Professor` INT NOT NULL,
  `E-mail` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Código_Professor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`professor_has_disciplina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`professor_has_disciplina` (
  `Professor_Código_Professor` INT NOT NULL,
  `Disciplina_Código_disciplina` INT NOT NULL,
  PRIMARY KEY (`Professor_Código_Professor`, `Disciplina_Código_disciplina`),
  INDEX `fk_Professor_has_Disciplina_Disciplina1_idx` (`Disciplina_Código_disciplina` ASC) VISIBLE,
  INDEX `fk_Professor_has_Disciplina_Professor1_idx` (`Professor_Código_Professor` ASC) VISIBLE,
  CONSTRAINT `fk_Professor_has_Disciplina_Disciplina1`
    FOREIGN KEY (`Disciplina_Código_disciplina`)
    REFERENCES `mydb`.`disciplina` (`Código_disciplina`),
  CONSTRAINT `fk_Professor_has_Disciplina_Professor1`
    FOREIGN KEY (`Professor_Código_Professor`)
    REFERENCES `mydb`.`professor` (`Código_Professor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`venda` (
  `cupom` INT NOT NULL,
  `data` DATE NOT NULL,
  `valor` FLOAT NOT NULL,
  PRIMARY KEY (`cupom`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`venda_has_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`venda_has_produto` (
  `Venda_cupom` INT NOT NULL,
  `Produto_codigo_produto` INT NOT NULL,
  PRIMARY KEY (`Venda_cupom`, `Produto_codigo_produto`),
  INDEX `fk_Venda_has_Produto_Produto1_idx` (`Produto_codigo_produto` ASC) VISIBLE,
  INDEX `fk_Venda_has_Produto_Venda1_idx` (`Venda_cupom` ASC) VISIBLE,
  CONSTRAINT `fk_Venda_has_Produto_Produto1`
    FOREIGN KEY (`Produto_codigo_produto`)
    REFERENCES `mydb`.`produto` (`codigo_produto`),
  CONSTRAINT `fk_Venda_has_Produto_Venda1`
    FOREIGN KEY (`Venda_cupom`)
    REFERENCES `mydb`.`venda` (`cupom`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
