class Artist
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @songs = []
  end
  def songs
    return @songs
  end
  def add_song(song)
    @songs << song
    song.artist = self
    @@all << song
  end
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
    @@all << song
  end
  def self.song_count
    return @@all.length
  end
end
