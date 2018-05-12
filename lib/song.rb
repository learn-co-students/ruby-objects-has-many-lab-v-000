class Song
  attr_accessor :name, :genre, :artist

  def initialize(name, genre = nil)
    @name = name
    @genre = genre
    @artist = artist
  end

  def artist_name
    self.artist.name if self.artist != nil
  end
end
