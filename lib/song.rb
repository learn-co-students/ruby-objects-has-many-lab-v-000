class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def add_song_by_name(name)
    @name = name
  end

  def artist_name
    if self.artist == nil
      return nil
    else
      artist.name
    end
  end

end
