class Artist
  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    add_song(song) #adds song instance using the #add_song method
  end

  def add_song(song)
    @songs << song
    @@song_count += 1
    song.artist = self
  end

  def self.song_count
    @@song_count
  end

end
