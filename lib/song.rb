class Song
  attr_accessor :name, :title, :genre, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
      if artist == nil
        return nil
      else
        return self.artist.name
      end
    end
end
