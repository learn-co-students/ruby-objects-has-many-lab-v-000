class Artist

  @@all = []
  @@song_count = 0

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@all << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(title)
    song = Song.new(title)
    @songs << song
    @@all << song
    song.name = title
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

end
