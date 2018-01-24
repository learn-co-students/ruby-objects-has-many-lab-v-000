class Song
  attr_accessor :name, :artist

  def initialize(title="",artist="")
    @name = title
    @artist = artist
  end

  def artist_name
    @artist == "" ? nil : @artist.name
  end

end