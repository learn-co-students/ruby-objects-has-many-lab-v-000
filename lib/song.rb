class Song
  attr_accessor :name, :artist

  def initialize(title)
    @name = title
  end

  def artist_name
    return nil if self.artist == nil
    self.artist.name
  end
end
