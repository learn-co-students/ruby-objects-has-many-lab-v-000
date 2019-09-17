class Song
  attr_accessor :name, :artist

  def initialize(song_name)
    @name = song_name
    @artist = nil
  end

  def artist_name
    if @artist != nil
      self.artist.name
    else
      nil
    end
  end

end
