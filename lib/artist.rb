class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    #TBD: instance variable needed to fullfill the test expectations. Not needed.
    @songs = []

    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.song_count
    #TBD: class variable needed to fullfill the test expectations. Not needed.
    @@song_count = Song.all.count

  end
end
