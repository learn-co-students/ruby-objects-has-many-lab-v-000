class Song

  attr_accessor :name, :artist

  def initialize(name="Placeholder")
    @name = name
  end

  def artist_name
    if self.artist == nil
      return nil
    else
      self.artist.name
    end
  end

end
