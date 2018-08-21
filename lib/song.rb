class Song
  attr_accessor :artist, :name

    @@all = []

  def initialize(name)
    self.name = name
    @@all << self
  end

def self.all
  return
  @@all = []
end

  def artist_name
    self.artist ? self.artist.name : nil
  end
end
