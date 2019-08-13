class Artist
  attr_accessor :name
  @@song_count = 0

  def initialize(name)
    @name = name
    @song = []
  end

  def add_song(name)
    @song << name
    name.artist = self
    @@song_count += 1
  end

  def songs
    @song
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @song << song
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

end
