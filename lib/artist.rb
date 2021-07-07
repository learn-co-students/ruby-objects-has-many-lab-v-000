class Artist

attr_accessor :name
attr_reader :songs

@@song_count = 0


  def initialize(artist_name)
    @name = artist_name
    @songs = []
  end

  def add_song(song)
    @@song_count += 1
    song.artist = self
    @songs << song
    song
  end

  def add_song_by_name(name_of_song)
    @@song_count += 1
    song = Song.new(name_of_song)
    song.artist = self
    @songs << song
    song
  end

  def self.song_count
    @@song_count
  end

end
