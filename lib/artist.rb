class Artist
  @@song_count = 0
  attr_accessor :songs, :name

  def initialize(name = "New Artist")
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def songs
    @songs
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end
  
  def self.song_count
    @@song_count
  end
end
