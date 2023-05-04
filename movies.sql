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
	select * from movies where film ="";
-- 10- O filme Central do Brasil aparece no Oscar?

-- 11- Inclua no banco 3 filmes que nunca nem foram nomeados ao Oscar, mas que na sua opinião, merecem. 
	INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('', '', ' ', ' ', ' ', 'Intouchables;', '1');
-- 12- Crie uma nova categoria de premiação. Qualquer prêmio que você queira dar. Agora vamos dar esses prêmios aos filmes que você cadastrou na questão acima.

-- 13- Qual foi o primeiro ano a ter um prêmio do Oscar?

-- 14 - Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?

-- 15- Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.  Vamos cadastrá-los no nosso banco, mas eles ainda não ganharam o Oscar. Só foram nomeados.

-- 16- Agora vamos falar da sua vida. Me diga o nome de uma pessoa que você admira e o que ela fez na sua vida. Agora me diz: Quê prêmio essa pessoa merece? 