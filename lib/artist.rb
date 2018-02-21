class Artist
  attr_accessor :name, :songs

 @@song_count = []

  def initialize(name)
    @name = name
    @songs = []
  end


  def add_song(song)
    songs << song
    song.artist = self
  end

  def add_song_by_name(name_of_song)
    song = Song.new(name_of_song)
    songs << song
    song.artist = self
  end

  # def song_count
  #
  # end
end
