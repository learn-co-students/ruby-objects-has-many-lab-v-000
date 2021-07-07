class Artist
  attr_accessor :name
  attr_reader :songs
  @@songs = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@songs << song
  end

  def add_song_by_name(song_name)
    song_name = Song.new(song_name)
    song_name.artist = self
    @songs << song_name
    @@songs << song_name
  end

  def self.song_count
    @@songs.count
  end
end
