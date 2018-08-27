class Artist 
  
  @@all = []
  
  attr_accessor :name
  attr_reader :songs
  
  def self.song_count
    @@all.reduce(0) { |count, artist| count + artist.songs.size }
  end
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def add_song(song)
    self.songs << song
    song.artist = self
  end
  
  def add_song_by_name(name)
    self.add_song(Song.new(name))
  end
  
end