
class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
  end

  def all
    @@all
  end

  def artist_name
    self.artist
  end
end
