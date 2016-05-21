class Song
  attr_accessor :name, :artist
  attr_reader 

  def initialize(name)
    @name = name
    @artist = artist
  end

  def artist_name
    self.artist == nil ? nil : self.artist.name

  end
  
    
end #of class Song