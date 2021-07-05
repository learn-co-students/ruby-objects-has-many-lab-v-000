class Song 
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
  
#refer to self's artist -- which will call on Artist class. This is truthy if it exists. if you try to refer to the .name it won't run if nil. you just need to check if the class was made (meaning an artist was given)
    if self.artist
      self.artist.name
    else
      nil
    end  
  end
  
end