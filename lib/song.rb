class Song
  
  attr_accessor :name, :genre, :artist

  def initialize(name)
    
  end

  def artist_name
    self.artist.name
  end
end