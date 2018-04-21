class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    self.artist.name if self.artist
  end
  # def artist=(artist)
  #   @artist = artist
  # end
  #
  # def artist
  #   @artist
  # end

end
