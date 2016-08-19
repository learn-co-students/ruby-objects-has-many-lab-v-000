class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = artist
  end 

  def artist_name
    return nil if artist == nil 
    self.name = artist.name
  end  

end      