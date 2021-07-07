class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@self <<self
  end

  def self.all?
    @@self
  end

  def artist_name
    artist.name if artist
  end 
end
