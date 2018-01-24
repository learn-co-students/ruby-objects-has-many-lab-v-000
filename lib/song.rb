class Song
  attr_accessor :artist, :name

  def initialize(name)
    self.name = name
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end
end