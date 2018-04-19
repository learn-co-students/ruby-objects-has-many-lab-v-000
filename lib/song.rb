class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = Artist.new(artist)
  end

  def artist_name
    self.artist.name
  end
end
