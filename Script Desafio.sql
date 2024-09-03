-- 1º Questão
SELECT Nome,Ano FROM Filmes

-- 2º Questão
SELECT Nome,Ano FROM Filmes ORDER BY Ano

-- 3º Questão
SELECT Nome,Ano,Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

-- 4º Questão
SELECT * FROM Filmes WHERE Ano = 1997

-- 5º Questão
SELECT * FROM Filmes WHERE Ano > 2000

-- 6º Questão
SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150

-- 7º Questão
SELECT Ano,COUNT(Ano) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade desc

-- 8º Questão
SELECT * FROM Atores WHERE Genero = 'M'

-- 9º Questão
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10º Questão
SELECT Filmes.Nome,Generos.Genero FROM Filmes 
INNER JOIN FilmesGenero ON (Filmes.Id = FilmesGenero.IdFilme) 
INNER JOIN Generos ON (Generos.Id = FilmesGenero.IdGenero)

-- 11º Questão
SELECT Filmes.Nome,Generos.Genero FROM Filmes 
INNER JOIN FilmesGenero ON (Filmes.Id = FilmesGenero.IdFilme) 
INNER JOIN Generos ON (Generos.Id = FilmesGenero.IdGenero)
WHERE Generos.Genero = 'Mistério'

-- 12º Questão
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM Filmes
INNER JOIN ElencoFilme ON (Filmes.Id = ElencoFilme.IdFilme)
INNER JOIN Atores ON(Atores.Id = ElencoFilme.IdAtor)