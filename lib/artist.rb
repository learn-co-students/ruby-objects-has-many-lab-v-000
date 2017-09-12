class Artist
  @@song_count = 0
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
  end
  #only adds songs
  def add_song(name)
    self.songs << name
    name.artist = self
    @@song_count += 1
  end
  #creates new song name
    def add_song_by_name(name)
      song = Song.new(name)
      self.songs << song
      song.artist = self
      @@song_count +=1
    end
  def self.song_count
    #total number of songs stored in song
    @@song_count
  end
end
