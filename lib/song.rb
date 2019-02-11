class Song
  attr_accessor :name, :artist
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.artist_name
  end




end #<---- class end
