class Song 
  attr_accessor :name, :artist, :genre 
  
   @@all = []
  
  def initialize(name)
    @name = name 
    @@all << name
  end
  
  def self.all 
    @@all
  end
  
  def artist_name
    if 
      self.artist.name
    else
      nil
    end
  end

end
  
  