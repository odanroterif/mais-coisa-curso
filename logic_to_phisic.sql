CREATE TABLE voo (
  idvoo INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  aeroporto_idaeroporto INTEGER UNSIGNED  NOT NULL  ,
  companhia_aerea_idcompanhia_aerea INTEGER UNSIGNED  NOT NULL  ,
  numero NUMERIC  NOT NULL  ,
  origem VARCHAR(20)  NOT NULL  ,
  destino VARCHAR(20)  NOT NULL  ,
  hora_de_partida DATETIME  NOT NULL  ,
  hora_de_chegada DATETIME  NOT NULL    ,
PRIMARY KEY(idvoo)  ,
INDEX voo_FKIndex1(companhia_aerea_idcompanhia_aerea)  ,
INDEX voo_FKIndex2(aeroporto_idaeroporto)
);

CREATE TABLE companhia_aerea (
  idcompanhia_aerea INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  nome VARCHAR(20)  NOT NULL  ,
  codigo NUMERIC  NOT NULL  ,
  origin_country VARCHAR(20)  NOT NULL    ,
PRIMARY KEY(idcompanhia_aerea)
);

CREATE TABLE passageiro (
  idpassageiro INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  nome VARCHAR(20)  NOT NULL  ,
  idade INTEGER UNSIGNED  NULL  ,
  numero_do_documento NUMERIC  NOT NULL    ,
PRIMARY KEY(idpassageiro)
);

CREATE TABLE tarifa (
  idtarifa INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  voo_idvoo INTEGER UNSIGNED  NOT NULL  ,
  tipo VARCHAR(20)  NOT NULL  ,
  preco FLOAT  NULL  ,
  restrisao VARCHAR(20)  NOT NULL    ,
PRIMARY KEY(idtarifa)  ,
INDEX tarifa_FKIndex1(voo_idvoo)
);

CREATE TABLE aeroporto (
  idaeroporto INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  nome VARCHAR(5)  NOT NULL  ,
  codigo NUMERIC  NOT NULL  ,
  localizasao VARCHAR(5)  NOT NULL    ,
PRIMARY KEY(idaeroporto)
);

CREATE TABLE assento (
  idassento INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  passageiro_idpassageiro INTEGER UNSIGNED  NOT NULL  ,
  voo_idvoo INTEGER UNSIGNED  NOT NULL  ,
  numero INTEGER UNSIGNED  NULL  ,
  classe VARCHAR(20)  NULL  ,
  preco VARCHAR(20)  NULL    ,
PRIMARY KEY(idassento)  ,
INDEX assento_FKIndex1(voo_idvoo)  ,
INDEX assento_FKIndex2(passageiro_idpassageiro)
);
