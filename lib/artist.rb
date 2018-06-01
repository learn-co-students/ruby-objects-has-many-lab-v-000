class Artist
  attr_accessor :name, :songs
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song)
    @songs << song
    @@song_count += 1
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name) #pointing method at new instance of Song class directly, instead of using string as song
    @songs << song
    @@song_count += 1
    song.artist = self #refers to artist on which method is being called
  end

  def self.song_count
    @@song_count
  end
end
