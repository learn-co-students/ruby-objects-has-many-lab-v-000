class Song

  def initialize(name)
    @name = name
  end

  attr_accessor :name, :artist

  def artist_name
    self.artist == nil ? nil : self.artist.name 
  end
end
