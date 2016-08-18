
class Artist
  attr_accessor :name, :songs


  def initialize(name)
    @name = name
    @songs = []
    @@song_count = 0
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    #@@song_count += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
    #@@song_count += 1
  end

  def self.song_count
  #  @@song_count
  end
end
