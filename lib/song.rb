class Song
  @@all = []
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    self.artist == nil ? nil : self.artist.name
  end

end
