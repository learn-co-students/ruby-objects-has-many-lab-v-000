class Artist 
  @@all = []
  attr_accessor :name, :songs
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def add_song(song)
    @songs << song 
    @@all << song 
    song.artist = self 
  end 
  
  def add_song_by_name(new_song)
    song = Song.new(new_song)
    @songs << song
    @@all << song
    song.artist = self 
  end 
  
  def self.song_count 
    @@all.count
  end 
end 
    