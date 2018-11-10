class Song
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def artist=(artist)
    @artist = artist
  end
  
  def artist
    @artist
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    self.artist.name if self.artist != nil
  end
  
end