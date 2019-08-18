class Song
  attr_accessor :name, :artist

  def initialize(name = nil)
    @name = name
  end

  def artist_name
    self.artist.name if self.artist != nil
  end

end
