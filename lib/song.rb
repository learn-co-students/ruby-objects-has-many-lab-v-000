
class Song

  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def artist_name
    return self.artist.name if self.artist
    nil
  end

end
