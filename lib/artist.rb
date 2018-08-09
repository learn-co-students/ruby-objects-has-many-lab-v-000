class Artist 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end 
    
  def add_song(song)
    @songs << song
    @@all << song
    song.artist = self 
    song 
  end 
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song 
    @@all << song 
    song.artist = self 
    song
  end 
  
  def songs
    @songs
  end 
  
  def self.song_count
    @@all.size
  end

end 