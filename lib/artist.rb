class Artist 
  
  attr_accessor :name, :songs 
  
  @@songs = []
 
  def initialize(name)
    @name = name
    @songs = []
    

  end 
  
  def songs 
    @songs 
  end 
  
  def add_song(song)
    song.artist = self 
    @songs << song 
    @@songs << song
  end 
  
  def add_song_by_name(song_name)
    x = Song.new(song_name)
    @songs << x
    @@songs << x 
    x.artist = self 
  end 
  
  def self.song_count 
    @@songs.length  
  end 
end 