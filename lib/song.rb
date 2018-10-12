class Song
  attr_accessor :artist, :title, :name
 
 @@all = []
 
  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end

  def artist_name
    if self.artist
      artist.name
    else 
      nil
    end
  end
  
  def self.all
    @@all 
  end
end