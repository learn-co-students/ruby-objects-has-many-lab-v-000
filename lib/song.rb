class Song
  @@all = []
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end

  def all
    @@all
  end

  def artist
    @artist
  end

  def artist_name
    if self.artist
      return self.artist.name
    else
      nil
    end
  end

end
