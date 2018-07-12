# Artist instance "has many" relationship with songs 
# Songs "belongs to" Artist

class Artist 
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  # take in a song, add it to the @songs array and relate it to the artist
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  # create a new song instance, add it to the @songs array, and relate to artist
  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self
    @songs << new_song
  end
  
  # count the total number of songs
  def self.song_count
    Song.all.count
  end
end