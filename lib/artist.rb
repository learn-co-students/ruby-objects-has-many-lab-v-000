class Artist
  attr_accessor :name, :songs, :artist

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @@song_count += 1
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song)
    s = Song.new(song)
    self.add_song(s)
  end

  def self.song_count
    @@song_count
  end

end
