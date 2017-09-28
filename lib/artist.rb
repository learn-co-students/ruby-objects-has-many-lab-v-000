

class Artist #what's the goal: compile  an Artists' songs, all of them
  attr_accessor :name
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def name
    @name
  end

  def songs
    @songs
  end


  def add_song(song)

    self.songs<<song # add song into the array (self.songs vs @songs -- ask about this) self - adele lets adele know abt the song
    song.artist = self #self referes to the artist I'M NOT SURE what the .artist is/comes from.
    @@song_count += 1

  end
  #instead of calling add_song with a string, call it with an argument of a real song object  Song



  def add_song_by_name(name)  # just a string comes in
    song = Song.new(name)
    self.songs<<song
    song.artist = self
    @@song_count +=1
  end


  def self.song_count
    @@song_count
  end


end
