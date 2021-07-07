
class Artist
  attr_accessor :name
  @@all = []
  @@song_count = 0

  def initialize(name, artist =nil)
    @name = name
    @songs = []
    @@all << self
  end

  def self.song_count
    @@song_count
  end
  
 def songs
    @songs
  end

  def add_song(song_name)
    @songs << song_name
      song_name.artist = self
     @@song_count += 1
   end








  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end
end