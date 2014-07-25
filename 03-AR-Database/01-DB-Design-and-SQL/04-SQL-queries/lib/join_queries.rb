require 'sqlite3'

# opens the database
DATABASE_PATH = "lib/db/jukebox.sqlite"
db = SQLite3::Database.new(DATABASE_PATH)

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist
  db.execute("SELECT Track.name, Artist.name, Album.title
    FROM Track
    JOIN Album ON Track.AlbumId = Album.AlbumId
    JOIN Artist ON Album.ArtistId = Artist.ArtistId")
end

def stats_on(db, category)
  #TODO: For the given category of music, return the number  of tracks and the average song length (as a stats hash)

  array = db.execute("SELECT COUNT(*), AVG(milliseconds)
          FROM Track JOIN Genre ON Track.GenreId = Genre.GenreId
          WHERE Genre.Name LIKE '#{category}' ")

  hash_stat = {
    category: category,
    count: array[0],
    average: array[1]
  }
  return hash_stat
end

stats_on(db, 'Rock')
def top_five_rock_artists(db)
  #TODO: return list of top 5 rock artists
  db.execute("SELECT Artist.Name, COUNT (Track.TrackId) AS n
        FROM Artist
        JOIN Album ON Album.ArtistId = Artist.ArtistId
        JOIN Track ON Track.AlbumId = Album.AlbumId
        JOIN Genre ON Track.GenreId = Genre.GenreId
        WHERE Genre.Name = 'Rock'
        GROUP BY Artist.Name
        ORDER BY n DESC
        LIMIT 5
      ")
end
