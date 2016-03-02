class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end

#is a class method that returns the 
#total number of songs associated to all existing artists

#and
#uses the class variable, @@song_count
  def song_count
    @songs.count
  end

end