class Artist

  attr_reader :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    @@song_count = Song.count
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end

  def self.song_count
    @@song_count
  end
end
