class Artist
 attr_accessor :name, :songs, :artist_name

 def initialize(name) #takes in argument of name upon initialization
   @name = name
   @songs = [] #empty array for instantiated objects to go into
   @artist_name = artist_name
 end

 def add_song(song)
   @songs << song #shovels song provided in argument onto empty array
   song.artist = self #self refers to artist on which we are calling add_song. #.artist is being called on song being passed in as agument and sets to self = the artist
 end

 def add_song_by_name(new_name)
  song = Song.new(new_name) #sets variable song to equal a new instantiation of obect Song and adds argument of new_name to set the new name
   @songs << song  #shovels new song object onto empty array
   song.artist = self #self refers to artist on which we are calling add_song_by_name. #.artist is being called on the song being passed in as agument and sets to self = the artist
 end




end
