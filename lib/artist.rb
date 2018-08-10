class Artist
  attr_accessor :name

  @@song_count = 0
  @@songs = []

  def initialize(name)
    @name = name
    @@songs << self
  end

  def songs
    @@songs
  end

  def add_song(song)
    @@songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    # takes in an argument of a song name, creates a new song with it and associates the song and artist
    song = Song.new(name)
    @@songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

end
