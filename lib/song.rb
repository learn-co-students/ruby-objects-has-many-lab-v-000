class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def artist_name
    if self.artist != nil
      self.artist.name
    else
      nil
    end
  end

end
