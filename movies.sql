	select * from movies;
-- 1- Quantas vezes Natalie Portman foi indicada ao Oscar?
	select count(id_movie) from movies where `name`="Natalie Portman";
-- 2- Quantos Oscars Natalie Portman ganhou?
	select count(id_movie) from movies where `name`="Natalie Portman" and winner = "1";
-- 3- Amy Adams já ganhou algum Oscar?
	select count(id_movie) from movies where `name`="Amy Adams" and winner = "1";
-- 4- A série de filmes Toy Story ganhou um Oscar em quais anos?
	select * from movies where film like "Toy%Story%" and winner="1";
-- 5- Quem tem mais Oscars: a categoria "Melhor Ator" ou "Melhor Filme"?
	select COUNT(id_movie) from movies where (category = "BEST PICTURE" OR category like "%PICTURE" OR category like "%PRODUCTION")and winner= '1';
	select count(id_movie) from movies where category = "ACTOR" AND WINNER = '1';
-- 6- O primeiro Oscar para melhor Atriz foi para quem? Em que ano?
	select year_film, `name`, winner from movies where category="actress" and winner="1";
-- 7- Na coluna/campo Winner, altere todos os valores com "True" para 1 e todos os valores "False" para 0.
	UPDATE movies
	SET  winner= 1
	WHERE winner= "true";
    UPDATE movies
	SET  winner= 0
	WHERE winner= "false";
-- 8- Em qual edição do Oscar "Crash" ganhou o prêmio principal?
	select count(id_movie) from movies where film like"CRASH" and winner ="1";
-- 9- Bom... dê um Oscar para um filme que merece muito, mas não ganhou.
	UPDATE oscar SET winner='1' WHERE film LIKE '%Avengers: Infinity War%';
-- 10- O filme Central do Brasil aparece no Oscar?
	SELECT * FROM movies where film like "%Central do Brasil%";
-- 11- Inclua no banco 3 filmes que nunca nem foram nomeados ao Oscar, mas que na sua opinião, merecem. 
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)
VALUES ('2013', '2014', '86', 'Best Picture', 'Invocação do Mal', 'Invocação do Mal', '1');
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)
VALUES (2022, 2023, '93', 'Melhor Filme', 'Fletcher Moules','Entergalactic', '0');
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)
VALUES (2018, 2019, '91', 'Melhor Animação', 'Peter Ramsey', 'Homem-Aranha no Aranhaverso', '0');

-- 12- Crie uma nova categoria de premiação. Qualquer prêmio que você queira dar. 
-- Agora vamos dar esses prêmios aos filmes que você cadastrou na questão acima.
	ALTER TABLE movies ADD premio varchar(225);
    UPDATE movies
	SET premio = 'MARAVILHOSO'
	WHERE winner = '1';

-- 13- Qual foi o primeiro ano a ter um prêmio do Oscar?
	select * from movies where winner = '1';

-- 14 - Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?
	select * from movies where year_film = "2004" and (winner= "true" and category like "%PICTURE");
    select * from movies where year_film = "2004" and (winner= "true" and category LIKE'%DIRECTING%');
	select * from movies where year_film = "2004" and (winner= "true" and category LIKE'%ACTRESS%');
    
-- 15- Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras. 
-- Vamos cadastrá-los no nosso banco, mas eles ainda não ganharam o Oscar. Só foram nomeados.
	INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) 
    VALUES ('2020', '2021', '93', 'BEST SUPPORTING ACTRESS', 'Zhang Ziyi', 'Hidden Dragon: Sword of Destiny', '0');
    INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)
	VALUES
	(2000, 2001, '73', 'Best Supporting Actress', 'Zhang Ziyi', 'Crouching Tiger, Hidden Dragon', 0),
	(2006, 2007, '79', 'Best Supporting Actress', 'Rinko Kikuchi', 'Babel', 0),
	(1991, 1992, '64', 'Best Actress', 'Gong Li', 'Raise the Red Lantern', 0),
	(2016, 2017, '89', 'Best Actress', 'Isabelle Huppert', 'Elle', 0),
	(2004, 2005, '77', 'Best Supporting Actress', 'Zhang Zhen', 'House of Flying Daggers', 0),
	(2007, 2008, '80', 'Best Actress', 'Jeon Do-yeon', 'Secret Sunshine', 0),
	(2006, 2007, '79', 'Best Actress', 'Penélope Cruz', 'Volver', 0);


-- 16- Agora vamos falar da sua vida. Me diga o nome de uma pessoa que você admira e o que ela fez na sua vida. 
-- Agora me diz: Quê prêmio essa pessoa merece? 
	-- Claudia, se tornou minha mãe e mecerece o premio de melhor mãe.
