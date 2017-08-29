class Song
  attr_accessor :name, :artist

  @@song_count = 0

  def initialize(name)
    @name = name
    @artist = artist
  end

  def artist_name
    song.artist = self
  end

end
