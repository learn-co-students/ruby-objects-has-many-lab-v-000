class Artist
  attr_accessor :name, :genre
  def initialize(name)
    @name = name 
    @songs = []
  end 
  def add_song(name)
    song = Song.name(name)
    @songs << song 
    song.artist = self 
  end
  def songs
    @songs
  end 
end

class Song
  attr_accessor :title, :artist, :genre   
  def initialize(title, genre)
    @title = title 
    @genre = genre 
  end
  def artist_name
    self.artist.name 
  end
end 

jay_z = Artist.new("Jay-z")
problems = Song.new("Problems", "rap")

jay_z.add_song(problems)


# jay_z.add_song(problems, rap)

# jay_z = Artist.new("Jay-z")
# 
# hello = Song.new("Hello", "feet")

# jay_z.add_song(problems)

# jay_z.add_song(hello)

# puts hello.genre 









