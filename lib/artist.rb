class Artist
  attr_accessor :name, :song_name

  def initialize(name)
    @name = name
    @songs= []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end

end
