class Song
  attr_accessor :name, :artist
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end

  def artist_name
    self.artist == nil ? nil : self.artist.name
  end

end #<---- class end
