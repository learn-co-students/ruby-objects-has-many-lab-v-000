class Artist
  attr_accessor :name
  attr_reader :songs
  @@artists = []
  @@song_count = 0
  def initialize(name="")
    @name = name
    @songs = []
    @@artists << self
  end
  def add_song(song)
    @songs << song
    song.artist = self
  end
  def add_song_by_name(title)
    song = Song.new(title, self)
    @songs << song
  end
  def self.song_count
    @@song_count = @@artists.collect {|artist| artist.songs.count}.reduce(0, :+)
  end
end
