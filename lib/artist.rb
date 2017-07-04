class Artist
  @@song_count = {}
  def initialize(name)
    @name = name
    @songs = []
  end

  attr_accessor :name, :songs

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count.key?(self.name) ? @@song_count[self.name] += 1 :
    @@song_count[self.name] = 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
  end

  def self.song_count
    @@song_count#[@name]
  end
end
