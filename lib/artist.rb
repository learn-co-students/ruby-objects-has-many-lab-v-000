class Artist

  attr_accessor :name, :songs, :artist 
  
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)

    @songs << song
    song.artist = self

  end
  
  def add_song_by_name(name)
    #it takes in an argument of a song name, 
    #creates a new song with it and associates the 
    #song and artist
    name = Song.new(name)
    artist = self.new(name)
    song.artist = self
    song
    
  end

  

end