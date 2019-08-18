class Artist
  attr_accessor :name
  @@song_count = 0

  def initialize(name = nil)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song = nil)
    @songs << song
    @@song_count += 1
    song.artist = self
  end

  def add_song_by_name(song = nil)
    song = Song.new(song)
    @songs << song
    @@song_count += 1
    song.artist = self
  end

  def self.song_count
    @@song_count
  end

end
