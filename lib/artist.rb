class Artist
  attr_accessor :name, :songs

  @@all_songs = []
  @@song_count = @@all_songs.size

  def initialize(name)
    @name = name
    @songs = []
  end

  def name
    @name
  end

  def add_song(song)
    @songs << song
    @@all_songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    song_name = Song.new(song_name)
    @songs << song_name
    song_name.artist = self
    @@all_songs << self
  end

  def self.song_count
    @@all_songs.size
  end

end
