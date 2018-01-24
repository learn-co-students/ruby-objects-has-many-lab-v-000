class Song

  attr_reader :name, :artist

  def initialize(name)
    @name = name
  end

  def artist=(artist_name)
    @artist = artist_name
  end

  def artist_name
    self.artist && self.artist.name
  end
end
