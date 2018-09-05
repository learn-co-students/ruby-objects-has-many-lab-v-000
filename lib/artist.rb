class Artist 
  attr_accessor :name, :songs
  
  def initialize(name)
    self.name = name 
    self.songs = []
  end 
  
  def add_song(song)
    song.artist = self 
    self.songs << song
    song
  end 
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.add_song(song)
  end
  
  def self.song_count
    Song.all.size
  end
  
end