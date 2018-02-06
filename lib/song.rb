class Song

  def initialize(name)
    @name = name
  end

    def artist
      song.artist = self
    end

    def artist_name
      if self.artist = nil
        return nil
      else
        self.artist.name
      end
    end

end
