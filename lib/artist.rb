class Artist

  attr_accessor :name

  @@song_count = 0

  def initialize(name)

    @name = name
    @songs = []
  end # initialize

  def songs
    @songs
  end # songs

  def add_song(song_name)
    self.songs << song_name
    @@song_count += 1
    song_name.artist = self
  end # add_song

  def add_song_by_name(song)
    @song = Song.new(song)
    @song.artist = self
    self.songs << @song
    @@song_count += 1
  end # add_song_by_name

  def self.song_count
    @@song_count
  end # song_count


end # class Artist
