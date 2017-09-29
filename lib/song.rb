class Song

  attr_accessor :name, :artist, :song

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
