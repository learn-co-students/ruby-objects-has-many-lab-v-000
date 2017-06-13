require "pry"

class Artist
  @@song_count = 0
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end
  # adds song to collection @songs
  def add_song(name)
    @songs << name
    name.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    # Creates instance of song with "song_title"
    song = Song.new(name)
    # song object pushed to end of @songs array
    @songs << song
    # song Obj. .artist set to artist Obj.
    song.artist = self
    @@song_count += 1
  end

  def songs
    @songs
  end

  def self.song_count
    @@song_count
  end

end
