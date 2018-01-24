class Artist

  attr_accessor :name, :songs, :song, :song_count, :artist
  @@song_count = 0

  def initialize(name)
    @name = name
    @song = song
    @songs=[]

    @artist = artist

  end

  def songs
    @songs
  end

  def add_song(song)
  #  song = Song.new
    song.artist = self
    @songs << song
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
    @@song_count += 1
  end

#   def name
#     @name
#   end

  def self.song_count
    @@song_count
  end

end