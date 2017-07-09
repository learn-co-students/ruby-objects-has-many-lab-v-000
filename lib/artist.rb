class Artist
	attr_accessor :name, :songs 

  @@song_count = 0

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def add_song(song)
    Song.new(song)
    song.artist = self
    self.songs << song
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    self.songs << song
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

end