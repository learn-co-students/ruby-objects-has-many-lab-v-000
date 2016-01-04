class Artist
  attr_accessor :name
  def initialize(name)
    @name = name
    @songs = []
  end
  @@songs = []
  @@song_count = 0

  def songs
    @songs
  end
  def add_song(song)
    song.artist = self
    @songs << song
    @@songs << song
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    @songs << new_song
    @@songs << new_song
    new_song.artist = self
  end

  def self.song_count
    @@songs.count
  end
end