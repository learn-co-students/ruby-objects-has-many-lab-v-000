class Song
  attr_accessor :artist, :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end #end of initialize

  def self.all
    @@all
  end #end of all

  def artist_name
    artist.name if artist
  end #end of artist_name

end #end of Song class
