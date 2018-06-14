class Song
  attr_accessor :artist, :name
  
  @@all = []

  
  def initialize(name, genre = nil)
    @name = name
    @@all << self
  end

  def artist_name
    if self.artist.nil?
      nil
    else
      self.artist.name
    end
  end
  
  def self.all
    @@all
  end
  
end