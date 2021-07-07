class Artist
  attr_accessor :name, :songs
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(name)
    # will create a new song
    song  = Song.new(name)
    # links the artist to the new song
    song.artist = self
    # links the song to the artist
    @songs << song
  end

  def self.song_count
    Song.all.count # here we are reaching out to the song class act method to count
  end
end
