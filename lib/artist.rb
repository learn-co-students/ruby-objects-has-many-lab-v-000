class Artist
  attr_accessor :name
  @@songs =[]

  def initialize(name)
    @name = name
  end

  def songs
    @@songs
  end

  def self.song_count
    @@songs.size
  end

  def add_song(song)
    song.artist = self
    songs << song
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    songs << song
  end
end
