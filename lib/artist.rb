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

  def add_song_by_name(name)
    new_song = Song.new(name)
    @songs << new_song
    new_song.artist = self
  end

  def songs
    @songs
  end

  def self.song_count
    Song.all.count
  end

end
