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
  
  def artist_name
    if self.artist 
      self.artist.name 
    else
      NIL
    end
  end
  
end 