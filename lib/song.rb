class Song

  attr_accessor :artist, :name

  def initialize(song_name)
    @name = song_name
  end

  def artist_name
    @artist ? @artist.name : nil
  end

end
