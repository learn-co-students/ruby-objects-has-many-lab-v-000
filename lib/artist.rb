class Artist
  attr_accessor :name
  @@song_count =0

  def initialize(name)
    @name=name
    @songs=[]

  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def artist_name
    self.artist.name
  end

  def add_song_by_name(song)
    song = Song.new(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

# class Artist
#   attr_accessor :name
#   @@song_count = @songs

#   def initialize(name)
#     @name=name
#     @songs=[]

#   end

#   def songs
#     @songs
#   end

#   def add_song(song)
#     @songs << song
#     song.artist = self

#   end

#   def artist_name
#     self.artist.name
#   end

#   def add_song_by_name(song)
#     song = Song.new(song)
#     @songs << song
#     song.artist = self

#   end

#   def self.song_count
#     @@song_count.length
#   end





end