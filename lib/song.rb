class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
    @@all << self
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

  def self.all
    @@all
  end
end
