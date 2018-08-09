class Song

  attr_accessor :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def name
    @name
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end
end
