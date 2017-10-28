class Song
  attr_accessor :title, :artist

  def initialize(title)
    @title = title
  end

  def artist_name
    self.artist.name
  end

end
