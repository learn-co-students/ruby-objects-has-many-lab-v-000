class Artist
  attr_accessor :name

  def initialize(name)
    self.name=name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist=self
    self.songs<<song
  end

  def add_song_by_name(name)
      self.add_song(Song.new(name))
  end

  def self.song_count
    Song.all.count
  end

end
