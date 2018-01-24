class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = artist
  end

  def artist_name
    if self.artist #I'd like to know HOW ON EARTH I could've figured this out w/o significant help!
      self.artist.name
    else
      nil
    end
  end

end