class Song
  attr_accessor :artist, :name

  def initialize(name)
    self.name = name
  end

  def artist_name
    if self.artist
      result = self.artist.name
    else
      result = nil
    end
    return result
  end
end