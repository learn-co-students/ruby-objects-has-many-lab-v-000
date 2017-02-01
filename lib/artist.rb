class Artist
  attr_accessor :name, :songs
  @@song_count = 0
  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song)
    @songs << song
    @@song_count+=1

    song.artist = self
  end

  def add_song_by_name(song)
    new_song = Song.new(song)
    @songs << new_song
    new_song.artist = self
    @@song_count+=1

  end

  def self.song_count
    return @@song_count
  end

end
