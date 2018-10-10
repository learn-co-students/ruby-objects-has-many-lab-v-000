class Song
  attr_accessor :artist, :title, :name
 
 @@all = []
 
  def initialize(title)
    @name = name
    @artist = artist
  end

  def artist_name
    self.artist.name
  end
  
  def self.all
    @@all 
  end

end