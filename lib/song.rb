class Song
  attr_accessor :name, :artist, :artist_name

  def initialize(name)
    @name = name
  end

  def artist_name
    if artist != nil
      self.artist.name
    end
  end
end
