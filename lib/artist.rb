class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def self.all
    @@all
  end

  def self.song_count
    result = 0
    Artist.all.each do |artist|
      result += artist.songs.length
    end
    result
  end
end
