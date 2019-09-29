class Artist
  attr_accessor :name
  @@song_count=0

  def initialize(name)
    @songs = []
    @name = name
  end

  def add_song(song)
    @@song_count+=1
  @songs << song
  song.artist = self
  @@song_count += 1
end

  def songs
    @songs
  end
########################################
def add_song_by_name(name )
    song = Song.new(name)
    @songs << song
    song.artist = self
  end
########################################
def self.song_count
  @@song_count
end
#######################################


end
