class Song
  attr_accessor :name, :artist, :artist_name
  def initialize(name)
    @name = name
  end
  def artist_name
    self.artist == nil ? nil : @artist_name = @artist.name
  end
end
