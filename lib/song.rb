class Song

  attr_accessor :artist ,:name

  def initialize(song)
    @name = song
  end

  def artist_name
    self.artist ? self.artist.name : self.artist

  end


end
