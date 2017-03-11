class Song
  attr_accessor :title, :artist, :name

  def initialize(name)
    @title = title
    @name = name

  end
  def artist_name
    if self.artist
      self.artist.name
    else
    end
  end
end
