class Artist
  attr_accessor :name
  @@song_count = 0
#when creating a new class take in name of artist as argument, pass that to the name attribute, pass that argument into a new array of songs for the artist
  def initialize(name)
    @name=name
    @songs = []
  end
#a method so we can read the instance variable for songs the artist has
  def songs
    @songs
  end
#mehod to add a new song for a artist with an agurment of the song name, pass the song into the song array,
  def add_song(song)
    @songs << song
  #here we use the self keyword to refer to the artist on which we are calling this method. We call the =artist method onto the song that is being passed as an argument and set that to self (the artist)
    song.artist = self
#once we add a new song we want to increase the class array song count
  @@song_count +=1
  end

  def add_song_by_name(name)
  #create a new song class with the given name argumtent as the name of the song
    song = Song.new(name)
  #take the new instance info and store that into the song array
    @songs << song
  #take the song instance variable, set the song's artist attribute to self which is the artist
    song.artist = self
  #when you add a song you increase the class variable song count by 1
    @@song_count +=1
  end

  def self.song_count
    @@song_count
  end
end
