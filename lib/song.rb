class Song
  # instance
  attr_accessor :name, :artist
  # initialization
  def initialize(name)
    @name = name
  end
  # instance methods
  def artist_name
    @artist == nil ? nil : @artist.name
  end
end