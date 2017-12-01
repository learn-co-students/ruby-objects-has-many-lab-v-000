class Artist
  attr_accessor :name, :genre, :songs, :song

  def initialize(name)
    @name = name
    @genre = genre
    @songs = []
  end

  @@song_count = 0

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end
end
