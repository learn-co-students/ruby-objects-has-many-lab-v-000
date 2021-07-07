class Song
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def artist=(artist)
    @artist = artist
  end

  def artist
    @artist
  end

  def artist_name
    artist ? self.artist.name : nil
  end

  def self.all
    @@all
  end
end
