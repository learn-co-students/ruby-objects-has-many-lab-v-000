class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
      artist.name if artist #=> knows the name of artist and returns nil if song doesnt have an artist
  end
end
