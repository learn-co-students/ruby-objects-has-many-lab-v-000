class Artist
  attr_accessor :name

  @@songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    @@songs << song
    song.artist =  self
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    @songs << new_song
    @@songs << new_song
    new_song.artist = self
  end

  def self.song_count
    @@song_count = @@songs.size
  end

end

