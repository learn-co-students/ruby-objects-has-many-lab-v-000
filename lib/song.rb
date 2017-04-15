
class Song

  attr_accessor :name, :artist

  def initialize(name, genre = nil)
    @name = name
    @genre = genre
  end

  def artist_name
    self.artist != nil ? self.artist.name : nil
  end
end