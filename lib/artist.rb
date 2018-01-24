class Artist
  attr_accessor :name, :songs
  @@song_count = 0 # This is a counter for all songs of all artists - Hence a class variable

  def initialize(name) # Initializes artist by name
    @name = name
    @songs = [] # This is song array associated only with a particular instance of an Artist
  end

  def add_song(song)
    @songs << song
    song.artist = self # This requires a class Song to have an artist instance variable for it to work
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name) # This requires a class Song that is being initialized with name
    @songs << song
    song.artist = self # Assigns song's artist to a song just like the previous step
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end
end
