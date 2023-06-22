Esta function serve para deixar todas as strings em minúsculo, requisito de negócio do stream proposto.


DELIMITER $$
CREATE FUNCTION fn_minusculo(texto VARCHAR(255))
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    SET texto = REPLACE(texto, 'A', 'a');
    SET texto = REPLACE(texto, 'B', 'b');
    SET texto = REPLACE(texto, 'C', 'c');
    SET texto = REPLACE(texto, 'D', 'd');
    SET texto = REPLACE(texto, 'E', 'e');
    SET texto = REPLACE(texto, 'F', 'f');
    SET texto = REPLACE(texto, 'G', 'g');
    SET texto = REPLACE(texto, 'H', 'h');
    SET texto = REPLACE(texto, 'I', 'i');
    SET texto = REPLACE(texto, 'J', 'j');
    SET texto = REPLACE(texto, 'K', 'k');
    SET texto = REPLACE(texto, 'L', 'l');
    SET texto = REPLACE(texto, 'M', 'm');
    SET texto = REPLACE(texto, 'N', 'n');
    SET texto = REPLACE(texto, 'O', 'o');
    SET texto = REPLACE(texto, 'P', 'p');
    SET texto = REPLACE(texto, 'Q', 'q');
    SET texto = REPLACE(texto, 'R', 'r');
    SET texto = REPLACE(texto, 'S', 's');
    SET texto = REPLACE(texto, 'T', 't');
    SET texto = REPLACE(texto, 'U', 'u');
    SET texto = REPLACE(texto, 'V', 'v');
    SET texto = REPLACE(texto, 'W', 'w');
    SET texto = REPLACE(texto, 'X', 'x');
    SET texto = REPLACE(texto, 'Y', 'y');
    SET texto = REPLACE(texto, 'Z', 'z');
    SET texto = REPLACE(texto, 'Á', 'á');
    SET texto = REPLACE(texto, 'À', 'à');
    SET texto = REPLACE(texto, 'Â', 'â');
    SET texto = REPLACE(texto, 'Ã', 'ã');
    SET texto = REPLACE(texto, 'Ä', 'ä');
    SET texto = REPLACE(texto, 'É', 'é');
    SET texto = REPLACE(texto, 'È', 'è');
    SET texto = REPLACE(texto, 'Ê', 'ê');
    SET texto = REPLACE(texto, 'Ë', 'ë');
    SET texto = REPLACE(texto, 'Í', 'í');
    SET texto = REPLACE(texto, 'Ì', 'ì');
    SET texto = REPLACE(texto, 'Î', 'î');
    SET texto = REPLACE(texto, 'Ï', 'ï');
    SET texto = REPLACE(texto, 'Ó', 'ó');
    SET texto = REPLACE(texto, 'Ò', 'ò');
    SET texto = REPLACE(texto, 'Ô', 'ô');
    SET texto = REPLACE(texto, 'Õ', 'õ');
    SET texto = REPLACE(texto, 'Ö', 'ö');
    SET texto = REPLACE(texto, 'Ú', 'ú');
    SET texto = REPLACE(texto, 'Ù', 'ù');
    SET texto = REPLACE(texto, 'Û', 'û');
    SET texto = REPLACE(texto, 'Ü', 'ü');
    SET texto = REPLACE(texto, 'Ç', 'ç');
RETURN texto;
END $$
DELIMITER ;
