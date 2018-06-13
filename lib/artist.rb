class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
  end

  def songs
    @@all
  end

  def add_song(song)
    @@all << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @@all << song
    song.artist = self
  end

  def self.song_count
    @@all.length
  end

end
