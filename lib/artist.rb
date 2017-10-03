class Artist

  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @songs = []
    @name = name
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
      @songs << song
      @@song_count += 1
      @songs
  end

  def add_song_by_name(name)  #takes argument of song name
    song = Song.new(name)
    self.add_song(song)
  end

  def self.song_count
    @@song_count
  end

end
