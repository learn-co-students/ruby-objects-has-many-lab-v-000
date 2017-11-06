class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = artist
  end

  def artist_name
    @artist ? self.artist.name : nil
  end
end
