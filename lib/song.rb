class Song
  attr_accessor :name, :artist

  def initialize(title)
    @name = title
  end

  def artist_name
    artist.name if artist
  end

end
