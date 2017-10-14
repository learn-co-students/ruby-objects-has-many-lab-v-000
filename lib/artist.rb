class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @songs = []
    self.name = name
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@song_count +=1
  end

  def add_song_by_name(song_name)
     song = Song.new(song_name)
     @songs << song
     song.artist = self
     @@song_count +=1
  end

  def self.song_count
    @@song_count
  end

end
