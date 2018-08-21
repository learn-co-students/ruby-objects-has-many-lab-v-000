class Song
  attr_accessor :title, :artist
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

  def name
    self.title
  end

  def self.all
    @@all
  end
end
