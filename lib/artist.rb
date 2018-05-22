
class Artist
  attr_accessor :name, :songs
  @@song_count = 0

  def initialize(artist)
    @name = artist
    @songs = []
  end

  def self.song_count=(num)
    @@song_count += num
  end

  def self.song_count
    @@song_count
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    Artist.song_count = 1
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    self.add_song(new_song)
  end
end