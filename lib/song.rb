class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def artist_name
  @artist.equal?(nil) ? @artist : self.artist.name
  end
end