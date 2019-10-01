class Artist
  attr_accessor :name, :song

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

  def songs
    @songs
  end

  def add_song_by_name(song) #adds a song to an artists' collection and tells that song that it belongs to that particular artist. also lets us create a new song using the name and genre from the arguments which is more of an elegant code.
    song = Song.new(song)
    @songs << song
    @@song_count += 1
    song.artist = self
  end

  def self.song_count
    @@song_count
  end
end
