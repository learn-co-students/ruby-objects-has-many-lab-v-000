class Artist
  attr_accessor :artist, :name, :song_count, :songs
  @@song_count = 0
  def initialize(name)
    @name = name
    @artist = artist
    @songs = []

  end

def add_song(song)
  @songs << song
  song.artist = self
  if song.artist = self
  @@song_count += 1
end
end

def add_song_by_name(name)
  song = Song.new(name)
  @songs << song
  song.artist = self
  @@song_count += 1
end

def songs
  @songs
end
def self.song_count
  @@song_count
end
end
