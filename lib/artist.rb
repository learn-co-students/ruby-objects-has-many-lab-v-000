class Artist
  attr_accessor :name


  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end

  def self.song_count
    self.all
  end
  # expect(Artist.song_count).to eq(2)

end


# def add_song_by_name(name, genre)
#     song = Song.new(name, genre)
#     @songs << song
#     song.artist = self
#   end
# def add_song(song)
#     @songs << song
#     song.artist = self
#   end
