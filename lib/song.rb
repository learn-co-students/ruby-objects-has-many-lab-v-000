class Song 
  attr_accessor :name, :genre, :artist
  @@all=[]
  def initialize(name)
    @genre=genre
    @name=name
    @@all << self
  end
  def self.all
  @@all
end
def artist_name
  if self.artist
    self.artist.name
  else
    return nil
end
end
  
end