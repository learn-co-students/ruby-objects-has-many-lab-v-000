class Artist

attr_accessor :name

@@artist_song_count = 0

  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@artist_song_count += 1
  end

  def songs
    @songs
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@artist_song_count += 1
  end

  def self.song_count
    @@artist_song_count
  end
end
