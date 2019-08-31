class Artist
  attr_accessor :name, :songs
  @@all_songs = []
  @@song_count

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@all_songs << song
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.add_song(song)
  end

  def self.song_count
    @@song_count = @@all_songs.count
  end


end
