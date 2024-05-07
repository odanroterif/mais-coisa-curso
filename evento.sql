CREATE SCHEMA IF NOT EXISTS Evento DEFAULT CHARACTER SET utf8 ;
USE Evento ;

-- -----------------------------------------------------
-- Table `mydb`.`evento`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS Evento.evento (
  idevento INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  data DATE NOT NULL,
  quantidade_ingresso INT UNSIGNED NULL,
  valor FLOAT UNSIGNED NULL,
  local VARCHAR(45) NULL,
  PRIMARY KEY (idevento))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`empresa`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS Evento.empresa (
  cnpj CHAR(14) NOT NULL,
  nome VARCHAR(42) NOT NULL,
  pais VARCHAR(30) NOT NULL,
  estado VARCHAR(45) NOT NULL,
  cidade VARCHAR(45) NOT NULL,
  rua VARCHAR(60) NOT NULL,
  residencia VARCHAR(45) NOT NULL,
  PRIMARY KEY (cnpj))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`telefone_cliente`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS Evento.telefone_cliente (
  idtelefone_cliente INT UNSIGNED NOT NULL AUTO_INCREMENT,
  ddd CHAR(2) NULL,
  digitos VARCHAR(7) NULL,
  PRIMARY KEY (idtelefone_cliente)
  )
  ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`cliente`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS Evento.cliente (
  cpf CHAR(11) NOT NULL,
  data_nascimento DATE NULL,
  email VARCHAR(45) NULL,
  pais VARCHAR(45) NULL,
  estado VARCHAR(45) NULL,
  cidade VARCHAR(45) NULL,
  bairro VARCHAR(45) NULL,
  rua VARCHAR(45) NULL,
  residencia VARCHAR(45) NULL,
  telefone_cliente_idtelefone_cliente INT UNSIGNED  NOT NULL,
  PRIMARY KEY (cpf),
  INDEX fk_cliente_telefone_cliente1_idx (telefone_cliente_idtelefone_cliente ASC),
  CONSTRAINT fk_cliente_telefone_cliente1
    FOREIGN KEY (telefone_cliente_idtelefone_cliente)
    REFERENCES Evento.telefone_cliente (idtelefone_cliente)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`telefone`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS Evento.telefone (
  ddd CHAR(2) NOT NULL,
  digitos VARCHAR(7) NOT NULL,
  empresa_cnpj CHAR(14) NOT NULL,
  PRIMARY KEY (ddd,digitos),
  INDEX fk_telefone_empresa1_idx (empresa_cnpj ASC),
  CONSTRAINT fk_telefone_empresa1
    FOREIGN KEY (empresa_cnpj)
    REFERENCES Evento.empresa (cnpj)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`evento_patrocinado`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS Evento.evento_patrocinado (
  evento_idevento INT UNSIGNED NOT NULL,
  empresa_cnpj CHAR(14) NOT NULL,
  PRIMARY KEY (evento_idevento, empresa_cnpj),
  INDEX fk_evento_has_empresa_evento_idx (evento_idevento ASC),
  INDEX fk_evento_patrocinado_empresa1_idx (empresa_cnpj ASC),
  CONSTRAINT fk_evento_empresa_idevento
    FOREIGN KEY (evento_idevento)
    REFERENCES Evento.evento (idevento)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT fk_evento_patrocinado_empresa
    FOREIGN KEY (empresa_cnpj)
    REFERENCES Evento.empresa (cnpj)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`ingresso`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS Evento.ingresso (
  idingresso INT UNSIGNED NOT NULL AUTO_INCREMENT,
  evento_idevento INT UNSIGNED NOT NULL,
  cliente_cpf CHAR(11) NULL,
  valor FLOAT NULL,
  data DATE NOT NULL,
  PRIMARY KEY (idingresso),
  INDEX fk_evento_has_cliente_cliente1_idx (cliente_cpf ASC),
  INDEX fk_evento_has_cliente_evento1_idx (evento_idevento ASC),
  CONSTRAINT fk_evento_idevento
    FOREIGN KEY (evento_idevento)
    REFERENCES Evento.evento (idevento)
    ON DELETE CASCADE
    ON UPDATE RESTRICT,
  CONSTRAINT fk_cliente_cpf
    FOREIGN KEY (cliente_cpf)
    REFERENCES Evento.cliente (cpf)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;
-- ------------ -------------------------------------------------------------------------------------------
-- manipulações -------------------------------------------------------------------------------------------
-- ------------ -------------------------------------------------------------------------------------------
insert into Evento.telefone_cliente(ddd,digitos) values ('21','40278814');
INSERT INTO Evento.cliente (cpf, data_nascimento, pais, telefone_cliente_idtelefone_cliente) VALUES ('43981250122', '2024-08-12', 'brasil', '1');
update Evento.cliente
set data_nascimento = 2000-11-12
where cpf = '43981250122';
select data_nascimento from Evento.cliente;
delete from Evento.cliente
where cpf = '43981250122';
delete from Evento.telefone_cliente
where idtelefone_cliente = 1;

insert into Evento.telefone_cliente(ddd,digitos) values ('34','40278814');
INSERT INTO Evento.cliente (cpf, data_nascimento, pais, telefone_cliente_idtelefone_cliente) VALUES ('43911250122', '2024-08-12', 'brasil', '2');
update Evento.telefone_cliente
set ddd = '71'
where idtelefone_cliente = 3;
select * from Evento.telefone_cliente;


insert into Evento.empresa (cnpj,nome,pais,estado,cidade,rua,residencia) values ('43564767567553','orion fondation','russia','moskow','basklaviks','preniov','orion sed');
insert into Evento.empresa (cnpj,nome,pais,estado,cidade,rua,residencia) values ('43564767567551','el dorado','japan','kanto','nimbasa','charmander','quartel militar');
insert into Evento.empresa (cnpj,nome,pais,estado,cidade,rua,residencia) values ('40391267567554','nagumohara','japan','kyushu','cloudmagiri','rua do camelo','instituto nagumohara');
insert into Evento.empresa (cnpj,nome,pais,estado,cidade,rua,residencia) values ('46473465757550','alecrin','brasil','bahia','salvador','lapa','arena fonte nova');

select * from Evento.empresa 
where pais = 'japan';
select cnpj,nome,pais from Evento.empresa
where pais like '%s%';

update Evento.empresa
set nome = 'corrupt enterprese ltda'
where cnpj = '46473465757550';

select cnpj,nome,pais from Evento.empresa
where pais like '%s%';

select * from Evento.empresa
where pais like '______';

select * from Evento.empresa
order by pais asc;
