class Artist
  attr_accessor :name, :songs, :artist
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    @songs << new_song
    new_song.artist = self
    @@song_count += 1

  end

  def self.song_count
    @@song_count
  end

end
