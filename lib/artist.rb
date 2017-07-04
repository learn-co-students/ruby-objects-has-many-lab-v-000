# first attempt 6/25/17
# class Artist
#   attr_accessor :name, :songs, :song_count
#   @@song_count = 0
#
#   def initialize(name)
#     @name = name
#     @songs = []
#   end
#
#   def add_song(song)
#     @songs << song
#     song.artist = self
#     @@song_count += 1
#   end
#
#   def add_song_by_name(name)
#     song = Song.new(name)
#     self.add_song(song)
#   end
#
#   def self.song_count
#     @@song_count
#   end
#
# end

# second attempt 7/4/17
class Artist
  attr_accessor :name, :songs
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    songs << song
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    self.add_song(new_song)
  end

  def self.song_count
    @@song_count
  end

end
