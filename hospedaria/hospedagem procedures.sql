-- mostra quartos que tem no andar e sua disponibilidade
DELIMITER $$
CREATE PROCEDURE hospedagem.quartos_no_andar(consult TINYINT)
BEGIN

SELECT numero,disponibilidade
FROM hospedagem.quarto
WHERE andar = consult;

END$$
DELIMITER ;

-- mostra quais clientes tem tal serviço

DELIMITER $$
CREATE PROCEDURE hospedagem.clientes_com_serviso(o_serviso INT)
BEGIN

SELECT cliente_cpf_cliente1,cliente.nome,cliente.sobrenome,service.nome
FROM hospedagem.documento_checkin
INNER JOIN hospedagem.cliente
ON  cliente_cpf_cliente1 = cpf_cliente
INNER JOIN hospedagem.documento_checkin_has_service
ON documento_checkin_codigo_de_checkin = codigo_de_checkin AND service_idservice = o_serviso
INNER JOIN hospedagem.service
ON idservice = o_serviso;

END$$
DELIMITER ;

-- mostra clientes com e sem telefone dependendo do valor passado

DELIMITER $$
CREATE PROCEDURE hospedagem.com_ou_sem_telefone(opsao INT)
BEGIN

IF opsao = 1 THEN
SELECT nome,sobrenome,dd,digitos
FROM hospedagem.cliente
INNER JOIN hospedagem.telefone
ON cliente_cpf_cliente = cpf_cliente;
ELSEIF opsao = 2 THEN
SELECT DISTINCT nome, sobrenome
FROM hospedagem.cliente
LEFT JOIN hospedagem.telefone
ON  cliente_cpf_cliente =  cpf_cliente
WHERE cliente_cpf_cliente IS NULL;
END IF;

END$$
DELIMITER ;




