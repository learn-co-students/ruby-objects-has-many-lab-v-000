class Artist 
  attr_accessor :name
  attr_reader :songs
  
  @@song_count = 0
  #Class variable to be used to count the number of songs by #starting this at 0 
  
  
  def initialize(name)
    @name = name
    @songs = []
  end
  #initialize method for the name of the artist and also the #array of songs that this artist will own
  
  def add_song(song_object)
    @@song_count +=1
    @songs << song_object
    song_object.artist = self
  end
  #add the song object to the @songs array of the artist #object. (Has many songs) Also associate song object with artist object.  This version assumes that the song object already exists to be used as an argument.
  
  def add_song_by_name(song_string)
    song_string = Song.new(song_string)
    self.add_song(song_string)
  end
  #this method allows you to create the object by its name, then associate that new object an artist.
  
  def self.song_count
    @@song_count
  end
  #counts the number of songs in the @@song_count (by counting the elements in the array?)
  
end