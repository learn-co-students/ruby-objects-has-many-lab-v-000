class Artist
attr_accessor :name, :songs  

@@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    #takes a song object and uses the artist
    #setter method to be equal to the artist
    #class. Self refers to the particular
    #artist instance that artist was called
    #on.  
    @songs << song
    @@song_count += 1 
  end 

  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
  end 

  def self.song_count
    @@song_count 
  end


end