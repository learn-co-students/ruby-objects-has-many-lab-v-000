class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = self.artist
  end

  def artist_name
    if defined? self.artist.name
      self.artist.name
    else
      nil
    end
  end

end
