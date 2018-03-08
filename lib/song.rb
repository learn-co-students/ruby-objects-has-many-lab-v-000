class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
    @genre = genre
  end

  def artist_name
    if @artist == nil
      nil
    else
    self.artist.name
  end
end
end
