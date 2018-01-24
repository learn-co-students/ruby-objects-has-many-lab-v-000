class Artist
  attr_accessor :name, :songs, :song
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self # tells song it belongs to that artist
    @@song_count +=1
  end

  def add_song_by_name(song)
    song = Song.new(song)
    @songs << song
    song.artist = self # tells song it belongs to that artist
    @@song_count +=1
  end

  def self.song_count
    @@song_count
  end
end

adele = Artist.new("Adele")
