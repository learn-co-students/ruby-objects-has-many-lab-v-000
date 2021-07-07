class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name
    unless !@artist
      self.artist.name
    end
  end

end