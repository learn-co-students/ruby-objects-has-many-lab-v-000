



class Artist 
  
  attr_accessor :name, :song
  
  @@song_count = 0
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def songs 
    @songs 
  end
  
  def add_song(song_instance)
    @songs << song_instance
    song_instance.artist = self
    @@song_count += 1
  end
  
  def add_song_by_name(song_name)
    song_instance = Song.new(song_name)
    @song = song_instance
    @songs << @song
    song_instance.artist = self
    @@song_count += 1
  end
  
  def self.song_count 
    @@song_count
  end
  
end