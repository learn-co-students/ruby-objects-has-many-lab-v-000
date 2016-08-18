
class Artist
  attr_accessor :name

  def initialized(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
  end
end
