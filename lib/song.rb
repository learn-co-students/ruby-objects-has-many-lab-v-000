class Song
  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def artist_name
    return self.artist.name if artist != nil
    nil
  end

end
