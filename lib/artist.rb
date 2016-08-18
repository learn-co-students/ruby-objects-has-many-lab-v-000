class Artist
  attr_accessor :name
  attr_accessor :songs
  @@all_songs = []

def initialize(name)
  @name = name
  @songs = []
end

def add_song(song)
  @songs << song
  song.artist = self
  @@all_songs << song
end

def add_song_by_name(song_name)
  song = Song.new(song_name)
  song.artist = self
  @songs << song
  @@all_songs << song
end

def self.song_count
  @@song_count = @@all_songs.size
  @@song_count
end

end
