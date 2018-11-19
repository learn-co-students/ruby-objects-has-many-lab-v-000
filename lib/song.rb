require 'pry'

class Song 
  attr_accessor :name, :artist, :genre 
  
   @@all = []
   
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all
  end
  
  def artist_name
    artist ? artist.name : nil
  end

end
  
