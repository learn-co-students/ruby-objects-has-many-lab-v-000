class Song
  attr_accessor :name, :artist, :artist_name
  def initialize(name)
    @name = name
  end

  def artist_name
    #self.artist.name
    if self.artist.nil?
      artist_name = nil
    else
      artist_name = self.artist.name
    end
    artist_name
  end
end
