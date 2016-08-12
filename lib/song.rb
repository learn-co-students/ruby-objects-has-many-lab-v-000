class Song

  attr_accessor :name, :artist, :title

  def initialize(name)
    @name = name
  end

  def artist_name
    artist_name_empty = nil
    if (self.artist.nil?)
      artist_name_empty
    else
    artist_name = self.artist.name
  end
end

end
