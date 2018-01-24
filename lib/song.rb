class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist
    @artist
  end

  def artist_name
    @artist == nil ? nil : self.artist.name
  end
end
