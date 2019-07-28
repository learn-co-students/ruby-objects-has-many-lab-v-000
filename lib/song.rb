class Song

  @@all = []

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
  if @artist
    self.artist.name
  else
    @artist
  end
end

def self.song_count
@@all.uniq.lenght
end

end
