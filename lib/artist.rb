class Artist 
  @@all_songs = 0
  attr_accessor :name, :songs 
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  
  def add_song(song)
    @songs << song 
    song.artist = self 
    @@all_songs += 1 
  end 
  
  
  def add_song_by_name(song)
    song = Song.new(song)
    song.artist = self 
    @songs << song 
    @@all_songs += 1 
  end 
  
  
  def self.song_count 
    @@all_songs 
  end

end 