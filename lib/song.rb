class Song
  attr_accessor :name, :artist
  def initialize(songname)
    @name = songname
  end

  def artist_name
    @artist.instance_of?(Artist) ? @artist.name : nil
  end

end
