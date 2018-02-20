class Artist
  attr_accessor :name
  @@artists = []
  @@song_count = 0
  def initialize(name)
    @name = name
    @@artists << self
    @songs = []
  end
  
  def add_song(song)
  @songs << song
  song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end
  
  def songs
    @songs
  end
  
  def self.song_count
    count = 0
    @@artists.each do |artist|
      x = artist.songs.size
      count += x
    end
      @@song_count = count
      @@song_count
  end
end