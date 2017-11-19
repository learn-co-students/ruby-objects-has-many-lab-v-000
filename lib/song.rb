class Song
  attr_accessor :name, :artist

  @@songs = []

  def initialize(name, artist = nil)
    @name = name
    @artist = artist
    @@songs << self
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end
  def self.all
    @@songs
  end
end
