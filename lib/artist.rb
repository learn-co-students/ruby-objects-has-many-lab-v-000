class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    @@artists = []
    @@song_count ||= 0
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@song_count += 1
    @@artists << self unless @@artists.include?(self)
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def self.song_count
    @@song_count
  end

end
