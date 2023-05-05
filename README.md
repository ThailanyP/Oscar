# ![oscar (1)](https://user-images.githubusercontent.com/111004514/236502883-13465dd2-a14a-44ba-b4c1-e5e7b606654c.png) Oscar vai para...?
<div>
  
![estrelas](https://user-images.githubusercontent.com/111004514/236503252-d08cd53c-d12c-4eb3-a58c-621feabac86f.png)
  VOCÊ
  ![estrelas](https://user-images.githubusercontent.com/111004514/236503360-31999433-279e-4a7e-b760-3a1f7a9fb23c.png)
Que acessou este repositório
</div>

##
 
1- Quantas vezes Natalie Portman foi indicada ao Oscar?

3 Vezes
<code> select count(id_movie) from movies where `name`="Natalie Portman";</code>

##

2- Quantos Oscars Natalie Portman ganhou?

<code>select count(id_movie) from movies where `name`="Natalie Portman" and winner = "1";
</code>

##

3- Amy Adams já ganhou algum Oscar?

<code>select count(id_movie) from movies where `name`="Amy Adams" and winner = "1";</code>

##

4- A série de filmes Toy Story ganhou um Oscar em quais anos?

<code>select * from movies where film like "Toy%Story%" and winner="1";</code>

##
    
5- Quem tem mais Oscars: a categoria "Melhor Ator" ou "Melhor Filme"?

<code>select COUNT(id_movie) from movies where (category = "BEST PICTURE" OR category like "%PICTURE" OR category like "%PRODUCTION")and winner= '1';</code>
<code>select count(id_movie) from movies where category = "ACTOR" AND WINNER = '1';</code>

##

 6- O primeiro Oscar para melhor Atriz foi para quem? Em que ano?

<code>select year_film, `name`, winner from movies where category="actress" and winner="1";</code>

##

7- Na coluna/campo Winner, altere todos os valores com "True" para 1 e todos os valores "False" para 0.

<code>UPDATE movies
SET  winner= 1
WHERE winner= "true";
UPDATE movies
SET  winner= 0
WHERE winner= "false";
</code>

##

 8- Em qual edição do Oscar "Crash" ganhou o prêmio principal?

 <code>select count(id_movie) from movies where film like"CRASH" and winner ="1";
</code>
	
##

9- Bom... dê um Oscar para um filme que merece muito, mas não ganhou.

<code>select * from movies where film ="";</code>

##

10- O filme Central do Brasil aparece no Oscar

<code></code>

##

11- Inclua no banco 3 filmes que nunca nem foram nomeados ao Oscar, mas que na sua opinião, merecem. 

<code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('', '', ' ', ' ', ' ', 'Intouchables;', '1');</code>

##

12- Crie uma nova categoria de premiação. Qualquer prêmio que você queira dar. Agora vamos dar esses prêmios aos filmes que você cadastrou na questão acima.

<code></code>

##

13- Qual foi o primeiro ano a ter um prêmio do Oscar?

<code></code>

##

14 - Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?

<code></code>

##

15- Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.  Vamos cadastrá-los no nosso banco, mas eles ainda não ganharam o Oscar. Só foram nomeados.

<code></code>

##

16- Agora vamos falar da sua vida. Me diga o nome de uma pessoa que você admira e o que ela fez na sua vida. Agora me diz: Quê prêmio essa pessoa merece? 

<code></code>

##
