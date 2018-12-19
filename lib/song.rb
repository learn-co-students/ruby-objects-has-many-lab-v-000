class Song
  
  attr_accessor :artist, :song, :genre, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    artist == nil ? nil : self.artist = artist.name
  end
end