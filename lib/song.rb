class Song

  attr_accessor :name, :artist_name, :artist

  def initialize(name)
    @name = name
    @artist_name = artist_name
    @artist = artist
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end


end
