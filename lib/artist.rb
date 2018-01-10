


require 'pry'

class Artist
# has_many :songs
attr_accessor :name, :songs

@@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    self.songs << song
  end

  def add_song_by_name(song)
    title = Song.new(song)
    title.artist = self
    self.songs << title
  end

  def self.increment
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end
end
