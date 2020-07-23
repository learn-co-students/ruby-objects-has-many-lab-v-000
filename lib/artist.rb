class Artist
  attr_accessor :name, :songs

  @@songs = []

  def initialize(name)
    @name = name
    @songs = []
    @@songs += self.songs
  end

  def add_song(song)
    @songs << song
    @@songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def self.song_count
    @@songs.length
  end
end
