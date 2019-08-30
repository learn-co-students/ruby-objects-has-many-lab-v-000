class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
    #we call the name method on the song's artist (self = song, here)
  end


end
