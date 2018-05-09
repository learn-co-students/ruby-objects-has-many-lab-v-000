class Song
  attr_accessor :name, :artist 
  
  def initialize(name, artist_name = nil)
    @name = name
    @artist = artist
  end
  
  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end
end