class Song
  attr_accessor :title, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def name
    @name
  end

  def all
    @@all
  end

  def artist_name
    if self.artist == nil
      nil
    else
      self.artist.name
    end
  end
end
