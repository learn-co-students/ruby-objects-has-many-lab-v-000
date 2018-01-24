class Song
  attr_accessor :name, :artist, :artist_name

  def initialize(name)
    @name = name
  end
  def artist=(artist)
    @artist = artist
    @artist_name = artist.name
  end

end
