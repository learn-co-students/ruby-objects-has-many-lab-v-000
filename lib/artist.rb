class Artist 
  
  attr_accessor :name, :artist
  attr_reader :songs
  
  @@song_count = 0
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
    
  def add_song(song)
    @songs << song
    song.artist = self #reciprocity
    @@song_count += 1
  end
    
  def add_song_by_name(songName)
    song = Song.new(songName)
    self.add_song(song)
  end
  
  def self.song_count
    @@song_count
  end
  
end