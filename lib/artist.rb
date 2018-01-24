class Artist

  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def add_song(song)
    song.artist = self
    self.songs << song
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    self.songs << song
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

end
