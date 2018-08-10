class Artist
  attr_accessor :name
  @@counter = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@counter+=1
  end

  def add_song_by_name(song)
    xong = Song.new(song)
    xong.artist = self
    @songs << xong
    @@counter+=1
  end

  def songs
    @songs
  end

  def self.song_count
    Song.all.count
  end

end
