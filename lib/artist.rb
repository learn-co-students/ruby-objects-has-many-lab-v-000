class Artist
  attr_accessor :name, :songs, :artist

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1 #add song
  end

  def add_song_by_name(song)
    song = Song.new(song)
    song.artist = self
    self.songs << song
    @@song_count += 1
  end

  def songs
    @songs
  end

  def self.song_count #class method returns total song
    @@song_count
  end
end
