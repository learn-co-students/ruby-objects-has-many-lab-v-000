class Artist

  attr_accessor :name, :songs, :artist 
  @@song_count = 0
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(name)

    @songs << name
    name.artist = self
    @@song_count += 1

  end
  
  def add_song_by_name(name)
    #it takes in an argument of a song name, 
    #creates a new song with it and associates the 
    #song and artist
    name = Song.new(name)
    #artist = self.new(name)
    add_song(name)
    name
    
  end

  def self.song_count
    #is a class method that returns the total
    #number of songs associated 
    #to all existing artists
    @@song_count 
  end

  

end