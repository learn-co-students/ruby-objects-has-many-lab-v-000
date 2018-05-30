class Song
  attr_accessor :name, :artist, :all
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all_songs
    @@all.length
  end

  def artist_name
    self.artist.name if self.artist
  end
end
