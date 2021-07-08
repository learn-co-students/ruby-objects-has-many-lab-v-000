

class Song
  attr_accessor :song, :name, :artist

  def initialize(name)
    @name = name
    @song = []
  end

  def artist
    @artist
  end

  def artist_name
    if self.artist.nil? == true
      return nil

    else
      return self.artist.name
    end

  end

end
