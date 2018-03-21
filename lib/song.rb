class Song
  attr_accessor :name, :genre, :artist, :artist_name

  @@artists = []

  def initialize(name)
    @name = name
  end

  def artist_name
    if self.artist == nil
      nil
    else
      self.artist.name
    end
  end

end
