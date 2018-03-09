class Song
  attr_accessor :name, :artist
  def initialize(song_name)
    @name = song_name
  end

  def artist_name
    if @artist then self.artist.name else nil
  end
end
end
