class Song
  attr_accessor :name
  attr_accessor :artist

  def initialize(name)
    @name = name
  end

  def artist
    @artist
  end

  def artist_name
    @artist ? @artist.name : nil
  end
end
