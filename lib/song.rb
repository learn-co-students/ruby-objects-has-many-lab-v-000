class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name

    if defined?self.artist.name
      return self.artist.name
    else
      return nil
    end
  end
end
