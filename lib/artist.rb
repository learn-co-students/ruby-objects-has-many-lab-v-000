class Artist
  attr_accessor :name
  attr_reader :songs
  @@song_count = 0 # had to create class variable to be used in class method 

  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song)
     song = Song.new(song)
     @songs << song
     song.artist = self
     @@song_count += 1
  end

  def self.song_count
    @@song_count # couldn't use .count method on @song... I think because it's in initialize so it was returning nil
  end


end
