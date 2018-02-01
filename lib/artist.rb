class Artist
  attr_accessor :name, :songs, :artist
  @@songs = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@songs << songs
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    @@songs << @songs
    song.artist = self
  end

  def self.song_count
    @@song_count = @@songs.count
    @@song_count
  end
end
