class Artist

  attr_accessor :name
  @@song_count = 0
  @@artists = [] #class level array to track all artist instances

  def initialize(name)
    @name = name
    @songs = [] # initialize empty array for artist songs
    @@artists << self # push newly created artist object to array
  end

  def songs
    @songs # return array of all songs belonging to artist
  end

  def add_song(song)
    song.artist = self #set songs artist property to instance of current artist
    @songs << song # push current song to songs array
  end

  def add_song_by_name(name)
    song = Song.new(name) #create new song instance with song title passed in
    @songs << song #push current song to songs array
    song.artist = self #set songs artist property to instance of current artist
  end

  def self.song_count
    @@artists.each do |artist|
      array_length = artist.songs.length
    @@song_count = @@song_count + array_length # add length of songs array for each artist to song count
    end
    @@song_count # return updated song count
  end

end
