class Artist 
  attr_accessor :name, :songs 
  
  @@total_songs = 0 
  
  def initialize(name = nil)
    @name = name 
    @songs = []
  end 
  
  def self.song_count
    @@total_songs
  end 
  
  def add_song(song)
    @songs << song 
    song.artist = self
    @@total_songs += 1
  end 
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song 
    @@total_songs += 1
    song.artist = self
    song 
  end 
  
  def songs 
    @songs 
  end 
end