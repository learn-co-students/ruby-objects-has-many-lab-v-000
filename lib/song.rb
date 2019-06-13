class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    if self.artist == nil
      return nil
    end
    self.artist.name
  end

  def self.all
    @@all
  end

end
