class Artist

@@song_count = 0
attr_accessor :name, :songs, :song

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count +=1
  end

  def add_song_by_name(song)
    song = Song.new(song)
    add_song(song)
  end

  def songs
    @songs
  end

  def self.song_count
    @@song_count
  end
  # def song=(song)
  #   @song = song
  # end
  #
  # def song
  #   @song
  # end
  #
  # expect(adele.songs).to include(hello)
  # expect(hello.artist).to eq(adele)

end
