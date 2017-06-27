class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name(artist = nil)
    return nil if self.artist == nil
    self.artist.name
  end


end
