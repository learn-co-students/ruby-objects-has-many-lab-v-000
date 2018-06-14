class Song
  attr_accessor :name, :artist
  @@all = [] #global variable set to an array
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def artist_name #instance will check if it has an artist
    self.artist ? self.artist.name : nil
  end
  
  def self.all
    @@all
  end
end