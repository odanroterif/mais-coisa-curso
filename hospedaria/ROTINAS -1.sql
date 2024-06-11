USE hospedagem;


delimiter $
 CREATE FUNCTION calculo (quarto_numero tinyint, quarto_andar tinyint, idservici int, checkin_code int)
RETURNS FLOAT
BEGIN 

  declare preco float;
  declare valor_servico float;
  declare dias, quant int;
  
  select valor into preco from quarto where numero = quarto_numero and  andar = quarto_andar;
  select price into valor_servico from service where idservice = idservici;
  select dias_alojado into dias from documento_checkin where codigo_de_checkin = checkin_code; 
  select quantidade into quant from documento_checkin_has_service where documento_checkin_codigo_de_checkin = checkin_code and service_idservice = idservici; 
  
RETURN (preco * dias) + (valor_servico * quant);
END$
delimiter ;

select calculo(102,1,1,2) AS valor_a_pagar;

delimiter $
CREATE PROCEDURE listar_checkins ()
BEGIN
select codigo_de_checkin, cliente_cpf_cliente1, quarto_numero1, quarto_andar1
from documento_checkin
order by dias_alojado desc;
END$
delimiter ;

call hospedagem.listar_checkins();



CREATE VIEW cliente_acompanhante_view AS
SELECT 
    c.cpf_cliente,
    c.nome AS nome_cliente,
    c.sobrenome AS sobrenome_cliente,
    a.cpf_acompanhante,
    a.nome AS nome_acompanhante,
    a.sobrenome AS sobrenome_acompanhante,
    dc.data_emissao AS data_checkin,
    dc.prazo_presensa AS data_checkout
FROM 
    hospedagem.cliente c
JOIN 
    hospedagem.documento_checkin dc ON c.cpf_cliente = dc.cliente_cpf_cliente1
JOIN 
    hospedagem.acompanhante_has_documento_checkin ahdc ON dc.codigo_de_checkin = ahdc.documento_checkin_codigo_de_checkin
JOIN 
    hospedagem.acompanhante a ON ahdc.acompanhante_cpf_acompanhante = a.cpf_acompanhante;
-- -------------------------------------
select * from cliente_acompanhante_view;























