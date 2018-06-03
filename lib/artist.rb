class Artist
attr_accessor :name
attr_reader :songs

@@song_count = 0
@@artists = []

def initialize(name)
  @name = name
  @songs = []
  @@artists << self
end

def add_song(song)
  @songs << song
  song.artist = self
end

def add_song_by_name(song_name)
  song = Song.new(song_name)
  @songs << song
  song.artist = self
end

# def self.song_count
#   @@song_count = @@artists.map {|artist| artist.songs.count}.reduce(:+)
# end

def self.song_count
  count = 0
  @@artists.each {|artist| count += artist.songs.count}
  @song_count = count
end

end
