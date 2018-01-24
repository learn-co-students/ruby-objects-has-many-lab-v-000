class Artist
  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    self.songs << Song.new(name)
    self.songs.last.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

end
