class Artist
  attr_accessor :name, :song, :song
 
  @@songs = []
 
  def initialize(name)
    @name = name
    @song = song 
  end
 
  def add_song(song)
    @@songs << song
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    @@songs << song
    song.artist = self
  end
 
  def songs
    @@songs
  end
  
  def self.song_count
    @@songs.count
  end

end