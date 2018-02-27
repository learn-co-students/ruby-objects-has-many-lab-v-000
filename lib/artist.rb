class Artist 
  attr_accessor :name, :songs
  @@song_count = 0
  
  def initialize(name)
    self.name = name
    self.songs = []
  end  

  
  def add_song(song)
    self.songs << song 
    @@song_count += 1
    song.artist = self
  end

  
  def add_song_by_name(song_name)
    song_name = Song.new(song_name)
    song_name.artist = self
    self.songs << song_name
    @@song_count += 1
  end
    
    
  
  def self.song_count
    @@song_count 
  end  
end  