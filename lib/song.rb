class Song
  attr_accessor :name,:artist

  def initialize(name)
    @name = name
  end

  def artist_name # this should return nil if there is not artist
    if self.artist
      return @artist.name
    else
      return nil
    end
  end
end
