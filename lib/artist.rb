class Artist 
  @@all_songs = 0 
  attr_accessor :name 
  def initialize(name)  
    @name = name 
    @songs = []
  end 
  
  def add_song(song)  
    @songs << song 
    song.artist = self 
    @@all_songs += 1 
  end 
    
  def songs  
     @songs 
  end 
  
  def add_song_by_name(name)  
    song = Song.new(name)
    @songs << song
    song.artist = self 
    @@all_songs += 1 
  end 
  
  def self.song_count #NOT working 
    @@all_songs
  end 
  
end 