class Artist

  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name="")
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@song_count += 1
    song.artist = self
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    @songs << new_song
    @@song_count += 1
    new_song.artist = self
    new_song
  end

  def self.song_count
    @@song_count
  end

end
