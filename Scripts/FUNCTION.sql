# Embora se exista a função nativa 'Lower', criei essa FUNCTION, apenas para exercitar e agrega-lá ao projeto. Ela faz com todas as palavras - strings - 
fiquem minúsculas ao serem inseridas no banco. Ou seja, caso um usuário tente inserir o nome 'JOSÉ', o banco registrará 'josé'. O requisito de ser guardado em caracteres minúsculos
foi um requisito do próprio exercício.

DELIMITER $$
CREATE FUNCTION fn_str_minusculo(palavra VARCHAR(255))
RETURNS VARCHAR(255)
BEGIN
    DECLARE resultado VARCHAR(255);
    SET resultado = LOWER(palavra);
    RETURN resultado;
END $$
DELIMITER ;
