class Artist
  @@all = []
  attr_accessor :name, :songs

  def self.song_count
    @@all.length
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    @@all << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    @@all << song
    song.artist = self
  end




end
