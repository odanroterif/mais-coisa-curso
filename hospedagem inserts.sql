INSERT INTO hospedagem.telefone(ddi,dd,digitos) VALUES('+1','21','555-1234');
INSERT INTO hospedagem.telefone(ddi,dd,digitos) VALUES('+44','20','7946-0958');
INSERT INTO hospedagem.telefone(ddi,dd,digitos) VALUES('+55','11','98765-4321');
INSERT INTO hospedagem.telefone(ddi,dd,digitos) VALUES('+49','30','1234-5678');
INSERT INTO hospedagem.telefone(ddi,dd,digitos) VALUES('+33','14','2345-6789');
INSERT INTO hospedagem.telefone(ddi,dd,digitos) VALUES('+81','37','1234-5678');
INSERT INTO hospedagem.telefone(ddi,dd,digitos) VALUES('+61','29','9876-5432');
INSERT INTO hospedagem.telefone(ddi,dd,digitos) VALUES('+34','91','234-5678');
INSERT INTO hospedagem.telefone(ddi,dd,digitos) VALUES('+86','10','8765-4321');


INSERT INTO hospedagem.cliente(cpf_cliente,nome,sobrenome,data_nascimento,telefone_ddi,telefone_dd) VALUES ('12345678901','ana','silva',1985-03-12,'+49','30');
INSERT INTO hospedagem.cliente(cpf_cliente,nome,sobrenome,data_nascimento,telefone_ddi,telefone_dd) VALUES ('23456789012','bruno','souza',1990-07-15,'+81','37');
INSERT INTO hospedagem.cliente(cpf_cliente,nome,sobrenome,data_nascimento,telefone_ddi,telefone_dd) VALUES ('34567890123','carla','pereira',1987-11-22,'+33','14');
INSERT INTO hospedagem.cliente(cpf_cliente,nome,sobrenome,data_nascimento) VALUES ('45678901234','daniel','oliveira',1992-01-08);
INSERT INTO hospedagem.cliente(cpf_cliente,nome,sobrenome,data_nascimento) VALUES ('56789012345','eduardo','fernandes',1983-09-05);
INSERT INTO hospedagem.cliente(cpf_cliente,nome,sobrenome,data_nascimento,telefone_ddi,telefone_dd) VALUES ('67890123456','fernanda','lima',1988-12-19,'+1','21');
INSERT INTO hospedagem.cliente(cpf_cliente,nome,sobrenome,data_nascimento) VALUES ('78901234567','gabriela','martins',1991-04-30);
INSERT INTO hospedagem.cliente(cpf_cliente,nome,sobrenome,data_nascimento) VALUES ('89012345678','henrique','silva',1986-06-25);
INSERT INTO hospedagem.cliente(cpf_cliente,nome,sobrenome,data_nascimento) VALUES ('90123456789','isabella','costa',1989-10-10);
INSERT INTO hospedagem.cliente(cpf_cliente,nome,sobrenome,data_nascimento,telefone_ddi,telefone_dd) VALUES ('01234567890','joão','almeida',2010-02-17,'+86','10');
INSERT INTO hospedagem.cliente(cpf_cliente,nome,sobrenome,data_nascimento,telefone_ddi,telefone_dd) VALUES ('12345678902','karla','ribeiro',1984-08-14,'+55','11');
INSERT INTO hospedagem.cliente(cpf_cliente,nome,sobrenome,data_nascimento) VALUES ('23456789023','lucas','melo',1985-05-29);
INSERT INTO hospedagem.cliente(cpf_cliente,nome,sobrenome,data_nascimento,telefone_ddi,telefone_dd) VALUES ('34567890134','mariana','barbosa',1987-07-02,'+34','91');
INSERT INTO hospedagem.cliente(cpf_cliente,nome,sobrenome,data_nascimento) VALUES ('45678901245','natalia','rocha',1992-03-18);
INSERT INTO hospedagem.cliente(cpf_cliente,nome,sobrenome,data_nascimento,telefone_ddi,telefone_dd) VALUES ('56789012356','bruno','souza',1993-11-11,'+44','20');
INSERT INTO hospedagem.cliente(cpf_cliente,nome,sobrenome,data_nascimento,telefone_ddi,telefone_dd) VALUES ('67890123467','patricia','santos',1988-09-27,'+61','29');


INSERT INTO hospedagem.acompanhante(cpf_cliente,nome,sobrenome,data_nascimento) VALUES ('12345678901','rafael','gomes',1988-03-20);
INSERT INTO hospedagem.acompanhante(cpf_cliente,nome,sobrenome,data_nascimento) VALUES ('23456789012','sofia ','souza',1985-07-14);
INSERT INTO hospedagem.acompanhante(cpf_cliente,nome,sobrenome,data_nascimento) VALUES ('34567890123','thiago ','duarte',1991-11-06);
INSERT INTO hospedagem.acompanhante(cpf_cliente,nome,sobrenome,data_nascimento) VALUES ('45678901234','ulysses ','lima',1986-01-22);
INSERT INTO hospedagem.acompanhante(cpf_cliente,nome,sobrenome,data_nascimento) VALUES ('56789012345','vanessa ','oliveira',1988-09-05);
INSERT INTO hospedagem.acompanhante(cpf_cliente,nome,sobrenome,data_nascimento) VALUES ('67890123456','wagner ','lima',1989-12-31);
INSERT INTO hospedagem.acompanhante(cpf_cliente,nome,sobrenome,data_nascimento) VALUES ('78901234567','xenia ','braga',1990-04-02);
INSERT INTO hospedagem.acompanhante(cpf_cliente,nome,sobrenome,data_nascimento) VALUES ('89012345678','yuri ','costa',1986-06-25);
INSERT INTO hospedagem.acompanhante(cpf_cliente,nome,sobrenome,data_nascimento) VALUES ('90123456789','zuleica ','monteiro',1987-10-16);
INSERT INTO hospedagem.acompanhante(cpf_cliente,nome,sobrenome,data_nascimento) VALUES ('01234567890','ana ','lima',1991-02-12);


INSERT INTO hospedagem.quarto(numero,andar,capacidade_maxima,disponibilidade,descrisao,categoria) VALUES (15,1,4,'vago','quarto simples com vista para o mar','basico');
INSERT INTO hospedagem.quarto(numero,andar,capacidade_maxima,disponibilidade,descrisao,categoria) VALUES (2,1,2,'vago','quarto simples perto da cozinha','basico');
INSERT INTO hospedagem.quarto(numero,andar,capacidade_maxima,disponibilidade,descrisao,categoria) VALUES (12,2,7,'vago','quarto com cama de tecido importado','luxo');
INSERT INTO hospedagem.quarto(numero,andar,capacidade_maxima,disponibilidade,descrisao,categoria) VALUES (11,3,2,'vago','quarto simples com um crocodilo de brinde','basico');
INSERT INTO hospedagem.quarto(numero,andar,capacidade_maxima,disponibilidade,descrisao,categoria) VALUES (23,2,9,'vago','quarto premium com cadeira de massagem e vista para arena fonte nova','luxo');
INSERT INTO hospedagem.quarto(numero,andar,capacidade_maxima,disponibilidade,descrisao,categoria) VALUES (17,1,2,'ocupado','quarto simples um pouco próximo da pscina','basico');
INSERT INTO hospedagem.quarto(numero,andar,capacidade_maxima,disponibilidade,descrisao,categoria) VALUES (10,1,4,'vago','quarto simples com muitas camas','basico');
INSERT INTO hospedagem.quarto(numero,andar,capacidade_maxima,disponibilidade,descrisao,categoria) VALUES (1,2,5,'ocupado','quarto simples com vista para o mar','basico');
INSERT INTO hospedagem.quarto(numero,andar,capacidade_maxima,disponibilidade,descrisao,categoria) VALUES (1,3,7,'vago','quarto incrivel com play station 5 e tv 4K','luxo');
INSERT INTO hospedagem.quarto(numero,andar,capacidade_maxima,disponibilidade,descrisao,categoria) VALUES (1,1,9,'vago','quarto com uma hidromassagem e o pc gamer','luxo');


INSERT INTO hospedagem.service(idservice,price,nome,descrisao) VALUES (1,30.50,'estacionamento','guarde seus veiculos aqui');
INSERT INTO hospedagem.service(idservice,price,nome,descrisao) VALUES (2,12.00,'restaurante','café da manhã,almoço,merenda,café da noite e janta');
INSERT INTO hospedagem.service(idservice,price,nome,descrisao) VALUES (3,20.50,'lazer','atividades para passar o tempo');
INSERT INTO hospedagem.service(idservice,price,nome,descrisao) VALUES (4,31.00,'turismo','conheça os melhores pontos dos arredores');


INSERT INTO hospedagem.veiculo(placa,cor,modelo,marca,service_idservice) VALUES ('ABC1234','amarelo','moto','hecom',1);
INSERT INTO hospedagem.veiculo(placa,cor,modelo,marca,service_idservice) VALUES ('DEF5678','azul','carro','kirastar',1);
INSERT INTO hospedagem.veiculo(placa,cor,modelo,marca,service_idservice) VALUES ('GHI9012','roxo','carro','hecom',1);
INSERT INTO hospedagem.veiculo(placa,cor,modelo,marca,service_idservice) VALUES ('JKL3456','preto','moto','alius',1);
INSERT INTO hospedagem.veiculo(placa,cor,modelo,marca,service_idservice) VALUES ('MNO7890','azul','carro','arata',1);
INSERT INTO hospedagem.veiculo(placa,cor,modelo,marca,service_idservice) VALUES ('PQR1122','azul','carro','fisk',1);
INSERT INTO hospedagem.veiculo(placa,cor,modelo,marca,service_idservice) VALUES ('STU3344','preto','moto','hecom',1);

-- -----------------------------------------
-- em relação aos inserts de documento de check-in, façam as combinações que acharem melhor as possibilidades são muitas com os 
-- inserts acima
-- -----------------------------------------
