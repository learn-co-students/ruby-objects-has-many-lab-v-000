class Artist
  attr_accessor :name, :songs

  @@song_count = 0
  def self.song_count
    @@song_count
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@song_count += @songs.count
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    @@song_count += @songs.count
    song.artist = self
    song
  end
end
