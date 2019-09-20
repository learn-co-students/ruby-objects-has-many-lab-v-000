class Song
  attr_accessor :artist, :name, :genre
 
  def initialize(name)
    @name = name
    @genre = genre
  end
  
  def artist_name
    if self.artist == nil
      return nil
    else
      self.artist.name
    end
  end
  
end