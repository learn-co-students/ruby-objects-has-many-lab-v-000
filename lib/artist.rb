

class Artist
  attr_accessor :name, :songs
  @@songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @@songs << song
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @@songs << song
    @songs << song
    song.artist = self
  end

  def self.song_count
    @@songs.count
  end

end
