class Song
  attr_accessor :name, :genre, :artist

  def initialize(name)
    @name = name
    @genre = genre
  end

  def artist_name
    !!@artist ? @artist.name : nil
  end

end
