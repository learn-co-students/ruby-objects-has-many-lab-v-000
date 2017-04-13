class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name
    #if there is an artist
    if self.artist
      #return the name
      self.artist.name
    else
      #else return nil
      nil
    end
  end
end
