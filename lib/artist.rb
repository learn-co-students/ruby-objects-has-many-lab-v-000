class Artist
  attr_accessor :name
  attr_reader :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end
  
  def save_song(song)
    @@song_count += 1
    songs << song
  end

  def add_song(song)
    save_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    save_song(song)
    song.artist = self
  end

  def self.song_count
    @@song_count
  end
end
