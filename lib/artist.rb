class Artist
  attr_accessor :name
  @@artists=[]
  @@song_count=0

  def initialize(name)
    @name=name
    @songs=[]
    @@artists << self
  end

  def self.all
    @@artists
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs<<song
    song.artist=self
    @@song_count+=1
  end

  def add_song_by_name(song_name)
    @songs<<Song.new(song_name)
    @songs[-1].artist=self
    @@song_count+=1
  end

  def self.song_count
    @@song_count
  end
end
