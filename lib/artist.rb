class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = [] 
  end

  def add_song(song)
    song.artist = self 
    @songs << song
    @@all << song
  end

  def songs
    @songs
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
  end

  def artist_name
    self.artist.name
  end

  def self.song_count
    @@all.length
  end

end