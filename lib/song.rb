class Song
  attr_accessor :artist, :name
  @@song = []

  def initialize(name, artist = nil)
    @name = name
    @artist  = artist
    @@song << self
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

end
