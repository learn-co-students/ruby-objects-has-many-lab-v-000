class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    if self.artist == nil #if the Song doesnt have an artist
      self.artist         #returns nil
    else
      self.artist.name #else, return the name of its artist
    end
    end

end
