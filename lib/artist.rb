class Artist

  attr_accessor :name, :songs

  @@song_count = 0
  @@artists = []

  def initialize(name)

    @name = name
    @songs = []
    @@artists << self

  end

  def add_song(song)
    self.songs << song
    song.artist = self

  end

  def add_song_by_name(song_name)

    new_song = Song.new(song_name)
    new_song.artist = self
    self.songs << new_song

  end

  def self.song_count

    @@artists.each do |artist|

      @@song_count += artist.songs.count

    end

    @@song_count
  end

end
