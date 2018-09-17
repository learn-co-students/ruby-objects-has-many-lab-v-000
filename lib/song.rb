class Song
  attr_accessor :artist, :name
  @@all = []

  def initialize(name)
    @name = name
    new
  end

  def new
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if @artist
      @artist.name
    end
  end
end
