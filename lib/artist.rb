class Artist

attr_accessor :name, :songs, :artist
  @@song_count = 0

  def initialize(name)
    @name, @songs = name, []
  end

  def add_song(song_name)
    @songs << song_name
    song_name.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
    @@song_count += 1

    @name = name
    @songs = []
  end

  def add_song(song)
    @@song_count+=1
    self.songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end

  def self.song_count
    @@song_count
  end

end
