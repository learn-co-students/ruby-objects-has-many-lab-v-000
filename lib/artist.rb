class Artist #what's the goal: list an Artists' songs, all of them
  attr_accessor :name
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def name
    @name
  end

  def add_song(song)
    song = Song.new(name)
    @songs<<song # add song into the array
    song.artist = self #self referes to the artist
    @@song_count += 1
  end

  def add_song_by_name(name, song)
    song = Song.new(name, song)
    @songs<<song
    song.artist = self
    @@song_count +=1
  end

  def self.songs
    @songs
  end

  def self.song_count
    @@song_count.size
  end


end
