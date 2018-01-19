class Song
  attr_accessor :name, :genre, :artist

  def initialize(name)
    @name = name
    @genre = genre
  end

  def artist_name
    if !@artist
      nil
    else
      self.artist.name
    end
  end
end
