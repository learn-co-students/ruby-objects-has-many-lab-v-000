class Song 
  attr_accessor :name, :artist
  
  @@all = [] 
  
  def initialize(name = @name)
    @name = name
    @@all << self
  end
  
  #def all
    #@@all
  #end
  
  def name(name = @name)
    @name = name
    name
  end
  
  def artist_name(artist = @artist)
    @artist = artist 
    if artist == nil 
      return nil
    else 
      artist.name
    end
  end
  
  def self.all
    @@all
  end
end