class Song

  #Song #name has a name

  attr_accessor :name, :artist

  #Song #new is initialized with an argument of a name

  def initialize(name)
    @name = name
  end

  #Song #artist belongs to an artist
  #Song #artist_name knows the name of its artist
  #Song #artist_name returns nil if the song does not have an artist

  def artist_name
    if self.artist == nil
      nil
    else
      self.artist.name
    end
  end

end
