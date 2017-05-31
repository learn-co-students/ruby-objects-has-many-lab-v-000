class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    if self.artist
      self.artist.name #returns the name of a given song's artist 
    else
      nil
    end
  end

end
