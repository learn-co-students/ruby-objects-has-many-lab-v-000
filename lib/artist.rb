class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    @@song_count = 1
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song)
    song = Song.new(song)
    @songs << song
    song.artist = self
  end

  def self.song_count
    @@song_count += 1
  end
end
