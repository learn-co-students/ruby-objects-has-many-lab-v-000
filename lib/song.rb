class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    return self.artist.name if self.artist
  end

end
