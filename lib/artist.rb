class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
    self
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    add_song(new_song)
  end

  def self.song_count
    Song.all.length
  end
end

# testing below

# class Song
#   attr_accessor :name, :artist
#   @@all = []
#   def initialize(name)
#     @name = name
#     @@all << self
#   end
#   def self.all
#     @@all
#   end
#   def artist_name
#     self.artist ? self.artist.name : nil
#   end
# end
#
# adele = Artist.new("Adele")
# hello = Song.new("Hello")
# adele.add_song(hello)
# hello.artist
