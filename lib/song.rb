class Song 
  attr_accessor :name, :artist
  attr_reader :songs
  
  
  def initialize(name)
    self.name = name
  end
  
  def artist_name
    if artist != nil
       self.artist.name
    else  
      nil
    end  
  end  
end 