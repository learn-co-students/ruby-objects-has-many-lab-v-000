class Song
  attr_accessor :artist, :genre, :name

  def initialize(name)
    @name = name
  end

  def artist_name
    if self.artist # If there is an artist,
      self.artist.name # Return the name of their song. 
    else
      nil
    end
  end

end
