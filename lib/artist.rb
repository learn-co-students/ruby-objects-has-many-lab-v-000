class Artist
  attr_accessor :name, :song, :song
 
  def initialize(name)
    @name = name
    @songs = []
    @song = song 
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
  
  def self.count
    @@all.map { |s| s.artist.count } 
  end

end