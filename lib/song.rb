class Song
  attr_accessor :artist, :name

  def initialize(title)
    self.name = title
  end

  def artist_name
    self.artist.name if self.artist
  end
end