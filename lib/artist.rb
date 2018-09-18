class Artist
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def add_song_by_name(song_name)
    song_name = Song.new(song_name)
    @songs << song_name
    song_name.artist = self
  end
  
  def song_count
      
  end
  
  
  
end