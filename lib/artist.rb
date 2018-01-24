class Artist

  @@song_count = 0
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)#implicit receiver self. In the Author class there is explicit receiver
  end

  def self.song_count
    @@song_count
  end

end
