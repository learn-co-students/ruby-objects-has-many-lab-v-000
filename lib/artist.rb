class Artist
  attr_accessor :name, :songs
  @@artists = []
  @@song_count = 0
  
  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end

  def add_song(song)
    song.artist = self
    @@song_count += 1
    @songs << song
  end

  def add_song_by_name(title)
    song = Song.new(title)
    self.add_song(song)
  end

  def self.song_count
    @@song_count
  end
end