class Song
  attr_accessor :name, :artist

  def initialize(name = nil)
    if name
      @name = name 
    end 
  end

def artist_name
  if self.artist
    self.artist.name
  else
    nil
  end 
end 

end