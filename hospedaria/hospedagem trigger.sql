DROP TRIGGER hospedagem.multa_por_alterasao;

DELIMITER $$
CREATE TRIGGER hospedagem.multa_por_alterasao before UPDATE ON hospedagem.documento_checkin
FOR EACH ROW
BEGIN
      IF (NEW.prazo_presensa OR NEW.quarto_numero1 OR NEW.quarto_andar1) THEN
        IF NEW.multa IS NULL THEN
            SET NEW.multa = 3.50;
        ELSEIF NEW.multa IS NOT NULL THEN
            SET NEW.multa = NEW.multa + 3.50;
        END IF;
    END IF;
END$$
DELIMITER ;


-- esse update e select é para testar a trigger
update hospedagem.documento_checkin
set prazo_presensa = '2024-06-01 15:11:00'
where codigo_de_checkin = 1;


select * from hospedagem.documento_checkin;

   