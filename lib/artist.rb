class Artist
  attr_accessor :name, :songs

  @@artists=[]

  def initialize(name)
    @name=name
    @songs=[]
    @@artists<<self
  end

  def add_song_by_name(title)
    song=Song.new(title)
    song.artist= self
    @songs<<song
  end

  def add_song(song)
    song.artist= self
    @songs<<song
  end

  def self.song_count
    total=0
    @@artists.each do |artist|
      total+=artist.songs.length
    end
    total
  end

end
