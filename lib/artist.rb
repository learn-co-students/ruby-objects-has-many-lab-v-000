class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  @@song_count = 0

  def songs
    @songs
  end

  def add_song(song)
    @@song_count += 1
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def self.song_count
    @@song_count
  end


end