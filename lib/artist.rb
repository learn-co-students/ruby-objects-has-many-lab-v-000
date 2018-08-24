class Artist
  attr_accessor :name, :songs

  @@total_songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@total_songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    @@total_songs << song
    song.artist = self
  end

  def self.total_songs
    @@total_songs
  end
  
  def self.song_count
    self.total_songs.length
  end
end
