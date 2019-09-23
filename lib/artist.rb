class Artist
  attr_accessor :name, :songs

  @@song_count = 0
  @songs = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    newsong = Song.new(song_name)
    add_song(newsong)
  end

  def self.song_count
    @@song_count
  end

end
