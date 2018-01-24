class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @songs = []
    @name = name
  end

  def add_song(song)
    song.artist = self #tells song it belongs to artist
    @@song_count += 1
    @songs << song
  end

  def add_song_by_name(name)
    song = Song.new(name)    #new_song_name = Song.new(name) invokes Song.new init
    add_song(song)          #calls above function
  end

  def self.song_count
    @@song_count    #points to song count class var
  end

  def songs
    @songs
  end

end
