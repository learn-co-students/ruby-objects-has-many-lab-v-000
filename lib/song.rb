class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
    @artist = artist
  end

  def artist_name
    if artist
      artist.name
    end
  end
end
