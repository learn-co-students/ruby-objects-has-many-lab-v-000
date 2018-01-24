class Artist
  attr_accessor :name,:songs,:genres
  @@song_count = 0
  @@ebodys_songs = []

  def initialize(name)
    @name = name
    @songs = []
    # @genres = []
    # @songs << song
    
  end
  
  def songs
    @songs
   end

  def add_song(song)
   songs << song
   song.artist = self
   @@ebodys_songs << song
  #@genres << song.genre
  #song.genre.artists << self
end
  
  def add_song_by_name(name)
  song = Song.new(name)
  @songs << song
  song.artist = self
  @@ebodys_songs << song
  end
   
  
def self.song_count
  @@ebodys_songs.length

end
end