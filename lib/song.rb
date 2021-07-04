class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all_songs
    @@all
  end

  def self.all
    self.all_songs
  end
  
  def artist_name
    if self.artist == nil
      nil
    else 
    self.artist.name
    end
  end
  
end