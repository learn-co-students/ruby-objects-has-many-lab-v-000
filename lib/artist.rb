class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def add_song_by_name(name)
    nsong = Song.new(name)
    self.add_song(nsong)
  end

  def self.song_count
    Song.all.count
  end

end
