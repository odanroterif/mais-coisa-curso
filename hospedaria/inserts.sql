-- Inserindo dados na tabela cliente
INSERT INTO hospedagem.cliente (cpf_cliente, nome, sobrenome, data_nascimento) VALUES ('12345678901', 'João', 'Silva', '1990-01-15');
INSERT INTO hospedagem.cliente (cpf_cliente, nome, sobrenome, data_nascimento) VALUES ('23456789012', 'Maria', 'Oliveira', '1985-02-20');
INSERT INTO hospedagem.cliente (cpf_cliente, nome, sobrenome, data_nascimento) VALUES ('34567890123', 'Pedro', 'Santos', '1975-03-10');
INSERT INTO hospedagem.cliente (cpf_cliente, nome, sobrenome, data_nascimento) VALUES ('45678901234', 'Ana', 'Costa', '1992-04-05');
INSERT INTO hospedagem.cliente (cpf_cliente, nome, sobrenome, data_nascimento) VALUES ('56789012345', 'Lucas', 'Souza', '1988-05-30');

-- Inserindo dados na tabela quarto
INSERT INTO hospedagem.quarto (numero, andar, capacidade_maxima, disponibilidade, descrisao, categoria,valor) VALUES (101, 1, 2, 'disponível', 'Quarto com vista para o jardim', 'standard',5.00);
INSERT INTO hospedagem.quarto (numero, andar, capacidade_maxima, disponibilidade, descrisao, categoria,valor) VALUES (102, 1, 3, 'ocupado', 'Quarto com varanda', 'deluxe',50.50);
INSERT INTO hospedagem.quarto (numero, andar, capacidade_maxima, disponibilidade, descrisao, categoria,valor) VALUES (201, 2, 4, 'disponível', 'Suíte com dois quartos', 'suíte',200.00);
INSERT INTO hospedagem.quarto (numero, andar, capacidade_maxima, disponibilidade, descrisao, categoria,valor) VALUES (202, 2, 2, 'disponível', 'Quarto econômico', 'standard',10.00);
INSERT INTO hospedagem.quarto (numero, andar, capacidade_maxima, disponibilidade, descrisao, categoria,valor) VALUES (301, 3, 3, 'ocupado', 'Quarto com vista para o mar', 'luxo',90.12);

-- Inserindo dados na tabela acompanhante
INSERT INTO hospedagem.acompanhante (cpf_acompanhante, nome, sobrenome, data_nascimento) VALUES ('67890123456', 'Carlos', 'Pereira', '2000-06-15');
INSERT INTO hospedagem.acompanhante (cpf_acompanhante, nome, sobrenome, data_nascimento) VALUES ('78901234567', 'Fernanda', 'Lima', '1995-07-20');
INSERT INTO hospedagem.acompanhante (cpf_acompanhante, nome, sobrenome, data_nascimento) VALUES ('89012345678', 'Juliana', 'Carvalho', '1990-08-10');
INSERT INTO hospedagem.acompanhante (cpf_acompanhante, nome, sobrenome, data_nascimento) VALUES ('90123456789', 'Marcelo', 'Ribeiro', '1985-09-05');
INSERT INTO hospedagem.acompanhante (cpf_acompanhante, nome, sobrenome, data_nascimento) VALUES ('01234567890', 'Patrícia', 'Barbosa', '2002-10-30');

-- Inserindo dados na tabela service
INSERT INTO hospedagem.service (idservice, price, nome, descrisao) VALUES (1, 100.0, 'Serviço de Quarto', 'Serviço de quarto 24 horas');
INSERT INTO hospedagem.service (idservice, price, nome, descrisao) VALUES (2, 50.0, 'Lavanderia', 'Serviço de lavanderia e passadoria');
INSERT INTO hospedagem.service (idservice, price, nome, descrisao) VALUES (3, 150.0, 'Spa', 'Acesso ao spa e tratamentos de bem-estar');
INSERT INTO hospedagem.service (idservice, price, nome, descrisao) VALUES (4, 200.0, 'Estacionamento','vagas na garagem');
INSERT INTO hospedagem.service (idservice, price, nome, descrisao) VALUES (5, 75.0, 'Alimentação', 'refeição completa para todas as horas do dia');

-- Inserindo dados na tabela veiculo
INSERT INTO hospedagem.veiculo (placa, cor, modelo, marca, service_idservice) VALUES ('ABC1234', 'Preto', 'Civic', 'Honda', 4);
INSERT INTO hospedagem.veiculo (placa, cor, modelo, marca, service_idservice) VALUES ('DEF5678', 'Branco', 'Corolla', 'Toyota', 4);
INSERT INTO hospedagem.veiculo (placa, cor, modelo, marca, service_idservice) VALUES ('GHI9012', 'Prata', 'Focus', 'Ford', 4);
INSERT INTO hospedagem.veiculo (placa, cor, modelo, marca, service_idservice) VALUES ('JKL3456', 'Vermelho', 'Cruze', 'Chevrolet', 4);
INSERT INTO hospedagem.veiculo (placa, cor, modelo, marca, service_idservice) VALUES ('MNO7890', 'Azul', 'Jetta', 'Volkswagen', 4);

-- Inserindo dados na tabela documento_checkin
INSERT INTO hospedagem.documento_checkin (dias_alojado, prazo_presensa, data_emissao, cliente_cpf_cliente1, quarto_numero1, quarto_andar1) VALUES ( 17,'2024-06-01 12:30:00', '2024-05-08','12345678901' ,101, 1);
INSERT INTO hospedagem.documento_checkin (dias_alojado, prazo_presensa, data_emissao, cliente_cpf_cliente1, quarto_numero1, quarto_andar1) VALUES ( 20,'2024-08-05 09:12:00', '2024-07-15','23456789012' ,102, 1);
INSERT INTO hospedagem.documento_checkin (dias_alojado, prazo_presensa, data_emissao, cliente_cpf_cliente1, quarto_numero1, quarto_andar1) VALUES ( 10,'2024-11-15 16:10:00', '2024-10-25','34567890123'  ,202, 2);
INSERT INTO hospedagem.documento_checkin (dias_alojado, prazo_presensa, data_emissao, cliente_cpf_cliente1, quarto_numero1, quarto_andar1) VALUES ( 15,'2024-05-20 17:00:00', '2024-05-01','45678901234' ,301, 3);
INSERT INTO hospedagem.documento_checkin (dias_alojado, prazo_presensa, data_emissao, cliente_cpf_cliente1, quarto_numero1, quarto_andar1) VALUES ( 9,'2024-09-01 15:20:00', '2024-08-01','56789012345' ,201, 2);

-- Inserindo dados na tabela telefone
INSERT INTO hospedagem.telefone (ddi, dd, digitos,cliente_cpf_cliente) VALUES ('+55 ', '11', '9999-9999','56789012345');
INSERT INTO hospedagem.telefone (ddi, dd, digitos,cliente_cpf_cliente) VALUES ('+55 ', '27', '8888-8888','56789012345');
INSERT INTO hospedagem.telefone (ddi, dd, digitos,cliente_cpf_cliente) VALUES ('+55 ', '36', '7777-7777','12345678901');
INSERT INTO hospedagem.telefone (ddi, dd, digitos,cliente_cpf_cliente) VALUES ('+55 ', '49', '6666-6666','34567890123');
INSERT INTO hospedagem.telefone (ddi, dd, digitos,cliente_cpf_cliente) VALUES ('+55 ', '52', '5555-5555','12345678901');


INSERT INTO hospedagem.documento_checkin_has_service(documento_checkin_codigo_de_checkin,service_idservice,quantidade) VALUES (2,5,4);	
INSERT INTO hospedagem.documento_checkin_has_service(documento_checkin_codigo_de_checkin,service_idservice,quantidade) VALUES (3,5,5);	
INSERT INTO hospedagem.documento_checkin_has_service(documento_checkin_codigo_de_checkin,service_idservice,quantidade) VALUES (1,5,2);	
INSERT INTO hospedagem.documento_checkin_has_service(documento_checkin_codigo_de_checkin,service_idservice,quantidade) VALUES (2,1,1);	
INSERT INTO hospedagem.documento_checkin_has_service(documento_checkin_codigo_de_checkin,service_idservice,quantidade) VALUES (1,2,1);	

INSERT INTO hospedagem.acompanhante_has_documento_checkin(acompanhante_cpf_acompanhante,documento_checkin_codigo_de_checkin) VALUES ('67890123456',2);
INSERT INTO hospedagem.acompanhante_has_documento_checkin(acompanhante_cpf_acompanhante,documento_checkin_codigo_de_checkin) VALUES ('78901234567',3);
INSERT INTO hospedagem.acompanhante_has_documento_checkin(acompanhante_cpf_acompanhante,documento_checkin_codigo_de_checkin) VALUES ('67890123456',1);
INSERT INTO hospedagem.acompanhante_has_documento_checkin(acompanhante_cpf_acompanhante,documento_checkin_codigo_de_checkin) VALUES ('89012345678',1);
INSERT INTO hospedagem.acompanhante_has_documento_checkin(acompanhante_cpf_acompanhante,documento_checkin_codigo_de_checkin) VALUES ('01234567890',1);




