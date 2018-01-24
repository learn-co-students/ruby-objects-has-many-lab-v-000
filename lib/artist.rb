class Artist
  attr_accessor :name, :songs

  @@song_count

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    song_name = Song.new(song_name)
    add_song(song_name)
  end

  def self.song_count
    @@song_count = Song.total
  end

end
