class Artist
  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @songs = []
    @name = name
  end

  def add_song(input_song)
    @songs << input_song
    input_song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(n)
    s = Song.new(n)
    @songs << s
    s.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

end
