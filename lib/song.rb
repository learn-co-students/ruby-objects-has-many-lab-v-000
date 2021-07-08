class Song
  attr_accessor :name, :artist, :artist_name

  def initialize(name)
    @name = name
    @artist = nil
    @artist_name = nil
  end

  def artist=(artist)
    @artist = artist
    @artist_name = @artist.name
  end
end 
