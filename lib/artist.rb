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
    @songs << song 
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def self.song_count
    @@artists.map{|artist| artist.songs.count}.reduce(:+)
  end
  
end