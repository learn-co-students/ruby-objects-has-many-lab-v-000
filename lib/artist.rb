class Artist 
  attr_accessor :name, :songs 

  @@song_count = []
  
  def initialize(name)
    @name = name 
    @songs = []
  
  end 
  
  def add_song(song)
    @songs << song 
    song.artist = self
    @@song_count << song  

  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song 
    song.artist = self
    @@song_count << song 
  end 
 
  
  def self.song_count 
    @@song_count.count  
  end 
  
  
end