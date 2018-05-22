class Song
  attr_accessor :artist
  attr_reader :name

  def initialize(name) #is initialized with an argument of a name
    @name = name
  end

  def artist_name
    if self.artist == nil #returns nil if the song does not have an artist
      nil
    else
      self.artist.name #knows the name of its artist
    end
  end 
end
