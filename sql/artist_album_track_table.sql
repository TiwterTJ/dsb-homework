CREATE TABLE artist_album_track_info AS
  select 
      ar.Name AS artist, 
      al.Title As album, 
      tr.Name As track, 
      ge.Name As genre,
      tr.Milliseconds AS millisecond,
      tr.Bytes as byte
  from artists AS ar
  JOIN albums As al ON ar.ArtistId = al.ArtistId
  JOIN tracks as tr ON al.AlbumId = tr.AlbumId
  JOIN genres As ge on ge.GenreId = tr.GenreId;	
