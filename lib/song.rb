class Song
  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
    self.artist = nil
  end

  def artist_name
    if self.artist != nil
      self.artist.name
    else
      nil
    end
  end

end
