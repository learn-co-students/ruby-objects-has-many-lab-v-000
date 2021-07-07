


class Song 
  
  @@all = []
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end 
  
  
  def artist_name 
    if @artist == nil 
      nil
    else
      puts @artist.name
      @artist.name
    end
  end
  
end
    