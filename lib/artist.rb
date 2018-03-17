class Artist

  attr_accessor :name, :song

  @@song_count = []

  def initialize(name)
    @name = name
    @songs = []

  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(name)
    self.new
    end

  def self.song_count
    @@song_count
  end





end
