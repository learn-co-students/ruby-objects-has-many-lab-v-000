class Song
  attr_accessor :name, :artist, :song_name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

end
