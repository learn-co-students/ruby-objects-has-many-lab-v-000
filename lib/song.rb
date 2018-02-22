class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    self.artist = nil
  end

  def artist_name
    @artist == nil ? nil : self.artist.name
  end
end
