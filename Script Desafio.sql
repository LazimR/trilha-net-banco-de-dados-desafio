-- 1� Quest�o
SELECT Nome,Ano FROM Filmes

-- 2� Quest�o
SELECT Nome,Ano FROM Filmes ORDER BY Ano

-- 3� Quest�o
SELECT Nome,Ano,Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

-- 4� Quest�o
SELECT * FROM Filmes WHERE Ano = 1997

-- 5� Quest�o
SELECT * FROM Filmes WHERE Ano > 2000

-- 6� Quest�o
SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150

-- 7� Quest�o
SELECT Ano,COUNT(Ano) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade desc

-- 8� Quest�o
SELECT * FROM Atores WHERE Genero = 'M'

-- 9� Quest�o
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10� Quest�o
SELECT Filmes.Nome,Generos.Genero FROM Filmes 
INNER JOIN FilmesGenero ON (Filmes.Id = FilmesGenero.IdFilme) 
INNER JOIN Generos ON (Generos.Id = FilmesGenero.IdGenero)

-- 11� Quest�o
SELECT Filmes.Nome,Generos.Genero FROM Filmes 
INNER JOIN FilmesGenero ON (Filmes.Id = FilmesGenero.IdFilme) 
INNER JOIN Generos ON (Generos.Id = FilmesGenero.IdGenero)
WHERE Generos.Genero = 'Mist�rio'

-- 12� Quest�o
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM Filmes
INNER JOIN ElencoFilme ON (Filmes.Id = ElencoFilme.IdFilme)
INNER JOIN Atores ON(Atores.Id = ElencoFilme.IdAtor)