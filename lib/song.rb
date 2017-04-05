class Song
  attr_accessor :name, :artist, :song

  def initialize(name)
    @name = name
    #@song = song
    #@artist = []
  end

  def new
    @name
    @song
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

end
