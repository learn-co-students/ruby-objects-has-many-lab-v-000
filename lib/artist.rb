class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @songs = []
    @name = name
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(title)
    song = Song.new(title)
    song.artist = self
    @songs << song
  end

  def self.song_count
    Song.songs.length
  end
end
