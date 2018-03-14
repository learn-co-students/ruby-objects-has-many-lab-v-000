class Artist
  attr_accessor :name, :songs
  @@all = []
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def self.all
    @@all
  end

  def self.song_count
    @@song_count
  end
end
