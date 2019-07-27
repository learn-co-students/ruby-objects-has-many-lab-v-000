class Song
  @@all = []
	attr_reader :name
	attr_accessor :artist

  def initialize(name)
    @name = name
    @@all << self
	end

  def self.all
    @@all
  end

  def artist_name
    self.artist.name rescue nil
  end
end
