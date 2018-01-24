class Artist
  @@song_count = 0
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.song_count
    @@song_count
  end

  def add_song(new_song)
    new_song.artist = self
    @songs.push(new_song)
    @@song_count += 1
  end

  def add_song_by_name(new_song_name)
    song = Song.new(new_song_name)
    song.artist = self
    @songs.push(song)
    @@song_count += 1
  end

  def songs
    @songs
  end

end
