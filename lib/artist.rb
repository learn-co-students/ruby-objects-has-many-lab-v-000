class Artist
  attr_accessor :name

  @@song_count = []

  def self.song_count
    c = 0
    @@song_count.each { |e| c += e.songs.size}
    c
  end
  
  def initialize(name)
    self.name = name
    @songs = []
    @@song_count << self
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def songs
    @songs
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
  end
end