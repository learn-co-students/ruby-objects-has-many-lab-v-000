class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs #array of songs
    @songs
  end

  def add_song(song) #add song to array, id's it w/artist
    @songs<<song
    song.artist = self
    @@song_count +=1
  end

  def add_song_by_name(name) #creates song, id's it w/artist & name
    song=Song.new(name)
    @songs<<song
    song.artist = self
    @@song_count +=1
  end

  def self.song_count #returns total number of songs
     @@song_count
  end

end
