class Artist 
  @@song_count = 0
  
  attr_accessor :name 

  def initialize(name)
    @name = name  
    @songs = []
  end 

  def add_song(song)
    @songs << song 
    song.artist =  self 
    @@song_count += 1
  end 

  def add_song_by_name(name)
    new_song = Song.new(name) 
    add_song(new_song)
  end 

  def self.song_count
    @@song_count
  end 

  def songs 
    @songs 
  end
  
end 