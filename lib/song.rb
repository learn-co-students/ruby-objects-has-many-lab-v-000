class Song
  attr_accessor :title, :artist

  #tried to use default artist = nil, but that didn't work
    def initialize(title)
    @title = title
    @artist = artist
  end

  def name
    self.title
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

end