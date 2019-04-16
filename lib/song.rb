class Song

  attr_accessor :name, :artist, :genre

  def initialize(song_name)
    @name = song_name

  end

  def artist_name
    if self.artist == nil
      return nil
    else
      return self.artist.name
    end

  end


end
