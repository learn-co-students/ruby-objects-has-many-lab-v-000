class Artist

  attr_accessor :name

@count = 1

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
  song.artist = self
  end

def self.song_count
 @count += 1
end

end
