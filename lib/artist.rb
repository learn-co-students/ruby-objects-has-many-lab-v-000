class Artist
  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    add_song(new_song)
    new_song.artist = self
  end

  def self.song_count
    @@song_count
  end
end
