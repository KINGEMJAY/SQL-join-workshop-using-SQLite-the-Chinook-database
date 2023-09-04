-- SQLite
SELECT *
FROM playlists;

select count(*)
FROM genres;

SELECT * 
FROM playlists 
WHERE name LIKE '%s';

select *
from artists 
where Name = "Lost";

select * from albums where ArtistId = 150;

select * from artists
join albums on artists.ArtistId = albums.ArtistId
where Name = "Lost";

select * from artists
join albums on artists.ArtistId = albums.ArtistId
where artists.ArtistId = 21;

-- Find all the albums for a given artist
select Name, AlbumId, Title from artists
join albums on artists.ArtistId = albums.ArtistId
where artists.ArtistId = 17;
-- where Name = "Amy Wnehouse"

-- Find all the songs for a given Genre
select * from tracks

select * from Genres 
join tracks on Genres.GenreId = tracks.GenreId
where Genres.Name="Blues";

select count(*) from Genres 
join tracks on Genres.GenreId = tracks.GenreId
where Genres.Name="Blues";

select * from Genres 
join tracks on Genres.GenreId = tracks.GenreId
where Genres.GenreId=5;

-- Find all songs in a playlists
select * from playlists
join playlist_track on playlist_track.playlistid = tracks.TrackId
where playlists.Name = "Music";

-- All songs from playlist 
select * from playlists
join playlist_track 
on playlist_track.playlistId = playlists.PlaylistId
join tracks
on playlist_track.TrackId = tracks.TrackId
where playlists.Name = "Music";

-- Find all the artists for a given genre 
select * from genres
where Name = "Jazz"

select * from artists
join albums
on albums.AlbumId = artists.ArtistId
join tracks
on 
where 


-- Correct approach for find all artists for a given genre
-- Find the playlist with the most/least songs(will need a group by count)

select playlists.Name, count(*) from playlists
join playlist_track
on playlists.playlistId = playlist_track.PlaylistId
group by playlists.Name
order by  count(*) desc
limit 1;

select playlists.Name, count(*) from playlists
join playlist_track
on playlists.playlistId = playlist_track.PlaylistId
group by playlists.Name
order by  count(*) asc
limit 1;

select playlists.Name, count(*) as SongCount from playlists
join playlist_track
on playlists.playlistId = playlist_track.PlaylistId
group by playlists.Name
order by  count(*) desc
limit 1;

--  Find the total for a given invoice (will need a sum)
select * from invoices
where invoices.InvoiceId = 17;


--  Find the biggest/smallest invoice amounts (needs group by)
select Total from invoices
where invoices.InvoiceId = 17;

-- answer
select InvoiceId, min(Total) from invoices;

select InvoiceId, max(Total) from invoices;

--  Find the artist with the most/least songs (needs group by) (edited) 

SELECT
-- count(DISTINCT artists.Name)
-- artists.Name
artists.Name, count(*) as TrackCount

from artists
join albums on albums.ArtistId = artists.ArtistId
join tracks on tracks.AlbumId = albums.AlbumId
group by artists.Name
order by TrackCount DESC
limit 5
offset 5;






