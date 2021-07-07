class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end
  def artist_name
    if self.artist != nil
      return self.artist.name
    else
      return nil
    end
  end
end
