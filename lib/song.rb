class Song
  attr_reader :name
  attr_accessor :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    self.artist.name
  end
end
