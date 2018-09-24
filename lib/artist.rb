class Artist 
  attr_accessor :name, :songs 
  
    @@songs = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
     @songs << song
    song.artist = self
  end
    
  def self.song_count
    @@songs.each do |song|
      @@song_count[song] = @@songs.count(song)
    end
    @@song_count
  end
end