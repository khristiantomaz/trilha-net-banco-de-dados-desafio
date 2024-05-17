--1 Buscar o nome e ano dos filmes
Select
   Nome,
    Ano
From Filmes

--2 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
Select 
   Nome,
   Ano
From Filmes
ORDER BY Ano ASC;

--3 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT 
  Nome ,
  Ano,
  Duracao
  
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

--4 Buscar os filmes lançados em 1997
Select 
   Nome,
   Ano
From Filmes
WHERE Ano = 1997;

--5 Buscar os filmes lançados APÓS o ano 2000
Select 
   Nome,
   Ano
From Filmes
WHERE Ano > 2000;

--6 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
Select 
   Nome,
   Ano,
   Duracao
From Filmes
WHERE	Duracao BETWEEN 100 AND 150
ORDER BY Duracao ASC;

--7 Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT 
     Ano,
	 COUNT(ID) AS quantidade_filmes
FROM Filmes
GROUP BY 
     Ano
ORDER BY
      MAX(Duracao) DESC;
--8 Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT 
   PrimeiroNome,
   UltimoNome,
   Genero
FROM Atores
WHERE Genero = 'M';

--9 Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT 
   PrimeiroNome,
   UltimoNome,
   Genero
FROM Atores
WHERE Genero = 'F';

--10 Buscar o nome do filme e o gênero
SELECT 
a.Nome as NomeFilme,
b.Genero as Gênero from Filmes a 
INNER JOIN FilmesGenero c ON a.Id = c.IdFilme 
INNER JOIN Generos b ON c.IdGenero = b.Id;


--11 Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT 
  a.Nome,
  b.Genero
  FROM Filmes a 
  INNER JOIN FilmesGenero c ON c.IdFilme = a.Id 
  INNER JOIN Generos b ON c.IdGenero = b.Id 
  WHERE Genero = 'Mistério'


--12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT 
	a.Nome,
	b.PrimeiroNome,
	b.UltimoNome,
	c.Papel
FROM Filmes AS a 
INNER JOIN ElencoFilme c ON c.IdFilme = a.Id
INNER JOIN Atores b ON c.IdAtor =b.Id