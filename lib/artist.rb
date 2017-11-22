# Artist class
#
# The Artist class can have many Songs
#

class Artist

  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name = nil)
    @songs = []
    @name = name
  end

  def add_song(song)
    self.songs << song
    # Also need to tell song that it belongs to this artist
    song.artist = self 
    @@song_count += 1
  end

  def add_song_by_name(title)
    song = Song.new(title)
    add_song(song)
  end

  def self.song_count 
    @@song_count
  end

  



end


