
class Artist

  attr_accessor  :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    self.class.increment_song_count
  end

  def add_song_by_name(song_title)
    new_song = Song.new(song_title)
    self.songs << new_song
    new_song.artist = self
    self.class.increment_song_count
  end

  def self.song_count
    @@song_count
  end

  def self.increment_song_count
    self.song_count += 1
  end

end
