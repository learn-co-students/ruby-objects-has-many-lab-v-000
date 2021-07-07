class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    if self.artist == nil
      @artist
    else
      @artist.name
    end
  end
end
