class Song #belongs to class for Artist
  attr_accessor :name, :genre, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    if self.artist == nil
      nil
    else
      self.artist.name
    end
  end

end
