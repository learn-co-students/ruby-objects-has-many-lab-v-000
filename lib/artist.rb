class Artist
attr_accessor :name
@@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
    #binding.pry
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song #add song to array
    song.artist = self #self = current Artist object, tells song it belongs to that artist
    @@song_count += 1
  end

  def add_song_by_name(title)
    song = Song.new(title) #set new Song instance = song variable we can push to array
    @songs << song #add song to array
    song.artist = self #sets new Song artist attribute = this instance of Artist object
    @@song_count += 1
  end

  def self.song_count
  #  binding.pry
    @@song_count
  #  binding.pry
  end

end
