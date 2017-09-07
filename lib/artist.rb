class Artist
  attr_accessor :name
  attr_reader :songs
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    add_to_song_count
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def add_to_song_count
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end
end
