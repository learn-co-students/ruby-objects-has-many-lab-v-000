class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = Artist.new(nil)
  end

  def artist_name
    @artist.name
  end

end
