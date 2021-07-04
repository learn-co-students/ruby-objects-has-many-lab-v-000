class Artist
  
  attr_accessor :name, :songs, :artist, :song
  
  @@all = []
  
  def initialize(name)
    @name= name
    @@all << self
  end
  
  def songs
    Song.all.select {|s| s.artist == self}
  end
  
  def add_song(song)
    song.artist = self
    song
    
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    song
  end
  
  def self.song_count
    
    Song.all.count
    
  end
  
  
end