class Song
  attr_accessor :artist, :name, :song

  def initialize(name)
    @artist = artist
    @name = name
    @@song_count =[]
    @@song_count << self
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

end
