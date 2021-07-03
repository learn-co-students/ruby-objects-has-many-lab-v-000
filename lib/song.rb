class Song
  @@all = []

  attr_accessor :name, :artist, :songs

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    @artist ? @artist.name : nil
  end

  def self.songs
    @@all
  end
end
