class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    if self.artist == nil
      return self.artist
    end
    self.artist.name
  end
end
