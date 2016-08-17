class Song

  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
    @artist = nil
  end
  
  def artist_name
    @artist ? @artist.name : @artist
  end
  
end