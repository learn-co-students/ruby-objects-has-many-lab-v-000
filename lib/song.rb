require 'pry'
class Song 
  attr_accessor :name, :artist 

  def initialize(name = "")
    @name = name 
  end 
  
  def name 
    @name 
  end 
  
  def artist 
    self.artist = @artist
  end 
  
  def artist_name 
    self.artist = @artist
    #binding.pry 
    if(self.artist)
       self.artist.name || nil
    end 
  end 
  
end 