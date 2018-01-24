class Song
  def initialize(name)
    @name = name
  end

  attr_accessor :name, :artist

  def artist_name
    artist != nil ? artist.name : nil
  end
end
