class Song
  attr_accessor :name, :genre, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def all
    @@all
  end

  def self.song_count
    @@all.length
  end

  def artist_name
    if self.artist != nil
      self.artist.name
    else
      return nil
    end
  end

end
