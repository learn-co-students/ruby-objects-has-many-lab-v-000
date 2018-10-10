class Song
  attr_accessor :artist, :title
 
 @@all = []
 
  def initialize(title)
    @title = title
    @artist = artist
  end

  def artist_name
    self.artist.name
  end
  
  def self.all
    @@all 
  end

end