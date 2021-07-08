class Artist

  attr_accessor :name
  attr_reader :songs
  @@song_count = 0
  @@songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    @songs << new_song
    @@songs << new_song
    new_song.artist = self
    new_song
  end

  def self.song_count
    @@songs.count do |song|
      @@song_count = @@song_count + 1
    end
  end

end
