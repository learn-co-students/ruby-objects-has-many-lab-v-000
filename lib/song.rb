class Song

  attr_accessor :artist, :genre, :name

  def initialize(song_name)
    self.name = song_name
  end

  def artist_name
    (self.artist) ? (self.artist.name): nil
  end

end