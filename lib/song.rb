class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end # initialize

  def artist_name
    if self.artist != nil
      self.artist.name
    else
      nil
    end # if
  end # artist_name



end # class Song
