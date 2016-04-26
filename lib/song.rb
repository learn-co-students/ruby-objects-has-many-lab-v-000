class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = nil
  end

  def artist=(artist)
    @artist = artist
  end

  def artist_name
    if @artist == nil
      nil
    else
      self.artist.name
    end
  end
  
end
