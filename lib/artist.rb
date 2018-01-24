class Artist
  attr_accessor :name, :songs
  @@songs=[]
  @@song_count=0
  def initialize(name)
    @name=name
    @songs=[]

  end

  def add_song(song)
    song.artist=self
    @songs<<song
    @@songs<<song
  end
  def add_song_by_name(name)
    s=Song.new(name)
    s.artist=self
    @songs<<s
    @@songs<<s
  end

  def self.song_count
    @@songs.count
  end

end