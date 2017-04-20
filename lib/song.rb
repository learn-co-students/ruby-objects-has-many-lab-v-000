class Song
  attr_accessor :artist, :name, :genre

  def initialize(name)
    @name = name
    @genre = genre
  end

  def artist_name
    @artist ? self.artist.name : nil
  end

end
