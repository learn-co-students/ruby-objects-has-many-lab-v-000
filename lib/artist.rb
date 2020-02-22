class Artist 
  
  attr_accessor :name 
  attr_reader :songs 
  
  @@song_count = 0 
  
  def initialize (name)
    @name = name
    @songs = []
  end
  
  def songs()
    @songs
  end
  
  def add_song(song)
    @@song_count += 1 
    @songs << song #has many 
    song.artist = self  #belongs to
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
    song 
    #@songs << song
    #song.artist = self 
  end
  
  def self.song_count()
    @@song_count 
  end

end