class Song

  attr_accessor :name, :songs, :artist

  def initialize(name)
    @name = name
  end

  def artist_name(name=nil)
      if self.artist
        self.artist.name
    end
  end

end
