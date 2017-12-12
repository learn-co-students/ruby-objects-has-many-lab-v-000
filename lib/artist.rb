class Artist
  attr_accessor :name, :song
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
    #song.artist=(self)
    #song.artist
  end

  def songs
    @songs
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  #final_product = @adele.add_song_by_name("Rolling In The Deep")

  def self.song_count
    @@song_count
  end
end
