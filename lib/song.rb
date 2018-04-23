class Song

  attr_accessor :name,:artist

  def initialize(name)
    @name=name
    @artist=self.artist
  end

  def artist_name
    @artist == nil ? nil : @artist.name
  end

end
