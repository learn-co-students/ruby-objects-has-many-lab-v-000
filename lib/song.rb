class Song
  attr_accessor :artist, :name, :artist_name

  def initialize(name)
    @name = name
    @artist = artist
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

end
