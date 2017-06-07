class Song
attr_accessor :name, :artist

  def initialize(name)
    @name = name #initialize the name of the song
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

end
