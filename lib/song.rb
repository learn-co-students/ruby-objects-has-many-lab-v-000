class Song

  attr_accessor :artist, :name

  def initialize(name)
    self.name = name
  end

  def artist_name
    self.artist.name if defined? self.artist.name
  end

end
