class Artist
  attr_accessor :name, :artist

  @@song_count = 0

  def initialize(name = nil)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song unless @songs.include?(song)
    song.artist = self unless song.artist
    @@song_count += 1 #unless @songs.include?(song)
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end

  def self.song_count
    @@song_count
  end

end
