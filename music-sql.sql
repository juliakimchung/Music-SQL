select SongId, Title, AlbumId FROM Song;
select SongId, Title FROM Song;
select * FROM Song;
select * FROM Album;
select AlbumId, Title, ArtistId From Album;
select * FROM Artist;
select * FROM Genre;

select a.Title , s.Title 
from Album a, Song s
where a.Title  = "Revolver"
and s.AlbumId = a.AlbumId

select  s.Title, art.ArtistId, art.ArtistName
from  Song s, Artist art
where s.title = "Bad Boy"
and s.ArtistId = art.ArtistId

select a.Title, s.Title, a.AlbumId, s.SongId
from Album a, Song s
where  s.AlbumId = a.AlbumId

select art.ArtistId, s.Title, art.ArtistName, s.SongId, a.Title
from Album a, Song s, Artist art
where a.ArtistId = s.ArtistId
and a.ArtistId = art.ArtistId

INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
VALUES('First Fruite', '11/1/1983', 2312, 'God', 28, 2)

INSERT INTO Artist (ArtistName, YearEstablished) 
VALUES('Songseed', '1/1/1999')

INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
VALUES("Alive", "3/7/2012", 3000,  "YG Entertainment", 29,14)

INSERT INTO Artist (ArtistName, YearEstablished)
VALUES('BIGBANG', "1/1/2006")

INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES ("Jesus is a friend of mine", 360, '2/14/1983', 2, 28, 23)


Select  al.Title, al.Label, a.ArtistName, s.Title, s.ReleaseDate, g.Label
from Album al, Artist a, Song s, Genre g 
where  al.ArtistId = a.ArtistId
and s.AlbumId  = al.AlbumId
and s.GenreId = g.GenreId

INSERT INTO Song(Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES("Fantastic Baby",  360,  '2/29/2012',  14, 29, 24)


INSERT INTO Song(Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES("Bad Boy", 350, '2/29/2012',  14, 29, 24)

Select al.Title, al.Label, a.ArtistName, s.Title, s.ReleaseDate, g.Label
from Album al, Artist a, Song s, Genre g
where al.ArtistId = a.ArtistId
and s.ArtistId = al.ArtistId
and s.GenreId = g.GenreId

Select a.Title, s.Title FROM Album a LEFT JOIN Song  s ON s.AlbumId = a.AlbumId;
Select  a.Title, s.Title FROM Song s LEFT JOIN Album a ON a.AlbumId = s.AlbumId
Select  Count(AlbumId) As SongsFromSongId From Song
where  AlbumId = 1

Select Count(ArtistId) As SongsFromSongId From Song
where ArtistId = 8


Select Album.Title, Count(Song.SongId) As numberOfSongs From Song, Album
where Album.AlbumId = 24
and Album.AlbumId = Song.AlbumId
Group By Album.Title


Select Album.Title, Count(Song.SongId) As NumberOfSongs FROM Song, Album
Where Song.AlbumId = Album.AlbumId
GROUP BY Album.Title

Select Artist.ArtistName, Count(Song.SongId) As numberOfSongs FROM Artist, Song
Where Song.ArtistId = Artist.ArtistId
GROUP BY Artist.ArtistName

Select Genre.Label, Count(Song.SongId) As numberOfSongs From Genre, Song
Where Song.GenreId = Genre.GenreId
Group By Genre.Label


Select  Album.Title, MAX(Album.AlbumLength) AS longestDuration From Album
Group By Album.AlbumLength  Order By Album.AlbumLength DESC;

Select Song.Title, MAX(Song.SongLength) AS longestDuration From Song
Group By Song.SongLength Order By Song.SongLength DESC;