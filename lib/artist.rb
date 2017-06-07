class Artist
  @@song_count = 0
  attr_accessor :name
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def self.song_count
    @@song_count
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song1)
    song = Song.new(song1)
    song.artist = self
    self.songs << song
    @@song_count += 1
  end
end
