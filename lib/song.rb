class Song
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
  def artist(artist)
    @artist = artist
  end
  def artist_name
    if @artist = nil
      return nil 
    end
    @artist
  end
end
