class Artist
  @@song_count = 0
  attr_accessor :name
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
    @@song_count += 1
  end

  def songs
    @songs
  end

  def self.song_count
    @@song_count
  end
end
