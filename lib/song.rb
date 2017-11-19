class Song
  attr_accessor :artist, :name, :genre

  def initialize(name)
    @name = name
  end

  def artist_name
    if self.artist != nil
      return self.artist.name
    end
    nil

  end

end
