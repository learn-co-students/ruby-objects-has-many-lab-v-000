class Artist 
  attr_accessor :name, :songs
  @@song_count = 0
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def add_song(song)
    @songs << song 
    song.artist = self 
    @@song_count += 1
  end
    
  def add_song_by_name(name)
    new_s = Song.new(name)
    self.add_song(new_s) 
  end 
  
  def self.song_count
    @@song_count
  end
end 