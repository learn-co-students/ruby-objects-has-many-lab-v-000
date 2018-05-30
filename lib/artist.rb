class Artist
  attr_accessor :name, :songs

  @@total_songs = 0

  def initialize (name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    songs << song
    @@total_songs += 1
  end

  def add_song_by_name(song)
    new_song = Song.new(song)
    new_song.artist = self
    songs << new_song
    @@total_songs += 1
    new_song
  end

  def self.song_count
    @@total_songs
  end
end
