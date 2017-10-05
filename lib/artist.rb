class Artist
attr_accessor :name, :songs
  def initialize(name)
    @name = name
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
    return @@song_count
  end
end
