class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = nil
  end

  def artist_name
    self.artist == nil ? nil : self.artist.name
  end

end
