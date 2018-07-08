class Song

  attr_accessor :name, :genre, :artist

  $songs = []
  @@all = []

  def initialize(name)
    @name = name
    $songs << self
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end


end
