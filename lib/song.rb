class Song 
  attr_accessor :song, :artist, :name 
  
  @@all = []
  
  def initialize(name) 
    @song = song
    @name = name
    @@all << self 
  end
  
  def artist_name 
    if self.artist != nil 
      self.artist.name
    end
  end
  
end