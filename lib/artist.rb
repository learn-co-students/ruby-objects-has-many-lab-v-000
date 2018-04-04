class Artist
  attr_accessor :name

  def initialize(name)
    @name = name

    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @song << artist.song.self
  end

  def add_song_by_name(name)
    self.artist.name
  end



end
