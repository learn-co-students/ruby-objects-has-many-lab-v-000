class Song

  attr_accessor :artist, :name

  def initialize(name)
    self.name = name
    self.artist = nil
  end

  def artist_name
    @artist == nil ? nil : @artist.name
  end

end
