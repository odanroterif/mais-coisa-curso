CREATE SCHEMA IF NOT EXISTS hospedagem DEFAULT CHARACTER SET utf8 ;
USE hospedagem ;

-- -----------------------------------------------------
-- Table `hospedagem`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS hospedagem.cliente (
  cpf_cliente CHAR(11) NOT NULL,
  nome VARCHAR(25) NOT NULL,
  sobrenome VARCHAR(45) NOT NULL,
  data_nascimento DATE NOT NULL,
  PRIMARY KEY (cpf_cliente))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospedagem`.`quarto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS hospedagem.quarto (
  numero TINYINT UNSIGNED NOT NULL,
  andar TINYINT UNSIGNED NOT NULL,
  capacidade_maxima TINYINT UNSIGNED NOT NULL,
  disponibilidade VARCHAR(20) NOT NULL,
  descrisao VARCHAR(200) NULL,
  categoria VARCHAR(30) NULL,
  valor FLOAT UNSIGNED NOT NULL,
  PRIMARY KEY (numero, andar))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospedagem`.`acompanhante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS hospedagem.acompanhante (
  cpf_acompanhante CHAR(11) NOT NULL,
  nome VARCHAR(25) NOT NULL,
  sobrenome VARCHAR(45) NULL,
  data_nascimento DATE NOT NULL,
  PRIMARY KEY (cpf_acompanhante))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospedagem`.`service`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS hospedagem.service (
  idservice INT NOT NULL,
  price FLOAT NOT NULL,
  nome VARCHAR(25) NOT NULL,
  descrisao TINYTEXT NULL,
  PRIMARY KEY (idservice))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospedagem`.`veiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS hospedagem.veiculo (
  placa CHAR(7) NOT NULL,
  cor VARCHAR(15) NULL,
  modelo VARCHAR(20) NOT NULL,
  marca VARCHAR(20) NOT NULL,
  service_idservice INT NOT NULL,
  PRIMARY KEY (placa),
  INDEX fk_veiculo_service1_idx (service_idservice ASC),
  CONSTRAINT fk_veiculo_service1
    FOREIGN KEY (service_idservice)
    REFERENCES hospedagem.service (idservice)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospedagem`.`documento_checkin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS hospedagem.documento_checkin (
  codigo_de_checkin INT UNSIGNED NOT NULL AUTO_INCREMENT,
  dias_alojado INT NOT NULL,
  multa FLOAT NULL,
  prazo_presensa DATETIME NOT NULL,
  data_emissao DATE NOT NULL,
  cliente_cpf_cliente1 CHAR(11) NOT NULL,
  quarto_numero1 TINYINT UNSIGNED NOT NULL,
  quarto_andar1 TINYINT UNSIGNED NOT NULL,
  PRIMARY KEY (codigo_de_checkin),
  INDEX fk_documento_checkin_cliente1_idx (cliente_cpf_cliente1 ASC),
  INDEX fk_documento_checkin_quarto1_idx (quarto_numero1 ASC, quarto_andar1 ASC),
  CONSTRAINT fk_documento_checkin_cliente1
    FOREIGN KEY (cliente_cpf_cliente1)
    REFERENCES hospedagem.cliente (cpf_cliente)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_documento_checkin_quarto1
    FOREIGN KEY (quarto_numero1 , quarto_andar1)
    REFERENCES hospedagem.quarto (numero , andar)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospedagem`.`acompanhante_has_documento_checkin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS hospedagem.acompanhante_has_documento_checkin (
  acompanhante_cpf_acompanhante CHAR(11) NOT NULL,
  documento_checkin_codigo_de_checkin INT UNSIGNED NOT NULL,
  PRIMARY KEY (acompanhante_cpf_acompanhante, documento_checkin_codigo_de_checkin),
  INDEX fk_acompanhante_has_documento_checkin_documento_checkin1_idx (documento_checkin_codigo_de_checkin ASC),
  INDEX fk_acompanhante_has_documento_checkin_acompanhante1_idx (acompanhante_cpf_acompanhante ASC),
  CONSTRAINT fk_acompanhante_has_documento_checkin_acompanhante1
    FOREIGN KEY (acompanhante_cpf_acompanhante)
    REFERENCES hospedagem.acompanhante (cpf_acompanhante)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_acompanhante_has_documento_checkin_documento_checkin1
    FOREIGN KEY (documento_checkin_codigo_de_checkin)
    REFERENCES hospedagem.documento_checkin (codigo_de_checkin)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospedagem`.`documento_checkin_has_service`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS hospedagem.documento_checkin_has_service (
  documento_checkin_codigo_de_checkin INT UNSIGNED NOT NULL,
  service_idservice INT NOT NULL,
  quantidade TINYINT UNSIGNED NULL,
  valor_unitario_cobrado FLOAT NULL,
  PRIMARY KEY (documento_checkin_codigo_de_checkin, service_idservice),
  INDEX fk_documento_checkin_has_service_service1_idx (service_idservice ASC),
  INDEX fk_documento_checkin_has_service_documento_checkin1_idx (documento_checkin_codigo_de_checkin ASC),
  CONSTRAINT fk_documento_checkin_has_service_documento_checkin1
    FOREIGN KEY (documento_checkin_codigo_de_checkin)
    REFERENCES hospedagem.documento_checkin (codigo_de_checkin)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT fk_documento_checkin_has_service_service1
    FOREIGN KEY (service_idservice)
    REFERENCES hospedagem.service (idservice)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospedagem`.`Telefone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS hospedagem.Telefone (
  ddi VARCHAR(3) NOT NULL,
  dd CHAR(2) NOT NULL,
  digitos VARCHAR(9) NOT NULL,
  cliente_cpf_cliente CHAR(11) NULL,
  PRIMARY KEY (ddi, dd, digitos),
  INDEX fk_Telefone_cliente1_idx (cliente_cpf_cliente ASC),
  CONSTRAINT fk_Telefone_cliente1
    FOREIGN KEY (cliente_cpf_cliente)
    REFERENCES hospedagem.cliente (cpf_cliente)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


