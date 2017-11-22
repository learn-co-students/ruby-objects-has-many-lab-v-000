class Song
  attr_accessor :artist, :name, :artist_name

  def initialize(name)
    @name = name
  end

  def artist_name
    if defined? @artist
      self.artist.name
    else
      nil
    end
  end
end
