class Song
  attr_accessor :name, :artist 
  
  def initialize(name = nil, artist = nil)
    @name = name
    @artist = artist 
  end# of initialize

  def artist_name
    @artist == nil ? nil : @artist.name 
  end# of artist_name 

end# of class