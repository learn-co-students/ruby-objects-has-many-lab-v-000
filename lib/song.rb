class Song

  attr_accessor :name, :song, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    if artist == nil
      return nil
      else
      self.artist.name
    end
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end


end