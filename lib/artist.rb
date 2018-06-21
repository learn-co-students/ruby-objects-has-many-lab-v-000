class Artist
  attr_accessor :name, :songs

  ARTISTS = []

  def initialize(name)
    @name = name
    @songs = []
    ARTISTS << self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.song_count
    count = 0
    ARTISTS.each do |artist|
      count += artist.songs.size
    end
    count
  end
end