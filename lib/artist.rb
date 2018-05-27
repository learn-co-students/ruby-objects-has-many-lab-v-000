class Artist

@@ALL_SONGS = []
attr_accessor :name, :songs

def initialize(name)
  @name = name
  @songs = []
end

def add_song(song)
  @songs << song
  song.artist = self
  @@ALL_SONGS << song
end

def add_song_by_name(name)
  new_song = Song.new(name)
  new_song.artist = self
  @songs << new_song
  @@ALL_SONGS << new_song
end

def self.song_count
  @@ALL_SONGS.count
end



end
