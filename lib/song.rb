class Song

  attr_accessor :artist, :name, :artist_name

  def initialize(name)
    @name = name
  end

  def artist_name
    self.artist == nil ? nil : self.artist.name
  end



end