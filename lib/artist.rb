class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    self.songs << song
  end

  def add_song_by_name(title)
    new_song = Song.new(title)
    new_song.artist = self
    self.songs << new_song
  end

  def self.song_count
    Song.song_count
  end

end
