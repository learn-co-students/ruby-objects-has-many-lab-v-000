class Song
  attr_accessor :name, :genre, :artist
@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    if self.artist
      self.artist.name
    end
  end







end
