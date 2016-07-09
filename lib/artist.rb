class Artist
  attr_accessor :name, :songs
  @@artists = []
  @@song_count = 0

  def initialize(name)
    self.name = name
    self.songs = []
    @@artists << self
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end

  def self.song_count
    @@song_count
  end
end