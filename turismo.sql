CREATE TABLE pacotes_de_viagem (
  idpacotes_de_viagem INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  nome VARCHAR(45)  NOT NULL  ,
  descrisao VARCHAR(255)  NULL  ,
  destino VARCHAR(45)  NOT NULL  ,
  durasao TIME  NOT NULL  ,
  preso FLOAT  NOT NULL  ,
  data_de_partida DATE  NOT NULL  ,
  data_de_retorno DATE  NOT NULL    ,
PRIMARY KEY(idpacotes_de_viagem)
);

CREATE TABLE cliente (
  idcliente INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  nome VARCHAR(45)  NOT NULL  ,
  sobrenome VARCHAR(45)  NOT NULL  ,
  data_de_nascimento DATE  NOT NULL  ,
  email VARCHAR(45)  NULL  ,
  telefone VARCHAR(20)  NOT NULL    ,
PRIMARY KEY(idcliente)
);

CREATE TABLE reserva (
  idreserva INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  cliente_idcliente INTEGER UNSIGNED  NOT NULL  ,
  pacotes_de_viagem_idpacotes_de_viagem INTEGER UNSIGNED  NOT NULL  ,
  data_da_reserva DATE  NOT NULL  ,
  status_reserva VARCHAR(20)  NOT NULL    ,
PRIMARY KEY(idreserva)  ,
INDEX reserva_FKIndex1(pacotes_de_viagem_idpacotes_de_viagem)  ,
INDEX reserva_FKIndex2(cliente_idcliente)
);

CREATE TABLE pagamento (
  idpagamento INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  reserva_idreserva INTEGER UNSIGNED  NOT NULL  ,
  valor FLOAT  NOT NULL  ,
  data_de_pagamento DATE  NOT NULL  ,
  metodo_de_pagamento VARCHAR(20)  NOT NULL    ,
PRIMARY KEY(idpagamento)  ,
INDEX pagamento_FKIndex1(reserva_idreserva)
);
