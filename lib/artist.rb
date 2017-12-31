class Artist
  attr_accessor :songs
  attr_reader :name

  @@song_count = 0

  def initialize(name)
  	@name = name
  	@songs = []
  end

  def add_song(song)
  	@songs << song
  	song.artist = self
  	@@song_count += 1
  end

  def add_song_by_name(song_name)
  	song = Song.new(song_name)
  	@songs << song
  	@@song_count += 1
  	song.artist = self
  end

  def self.song_count
  	@@song_count
  end
end

class Song
  attr_accessor :artist
  attr_reader :name

  def initialize(song_name)
  	@name = song_name
  end
end