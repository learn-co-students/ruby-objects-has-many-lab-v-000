class Song

  attr_accessor :name, :artist

  def initialize(name) #is initialized with an argument of a name
    @name = name
  end

  # def name
  #   @name
  # end

  def artist_name
    if self.artist
      self.artist.name # knows the name of its artist
    else
      nil # returns nil if the song does not have an artist
    end
  end
end
