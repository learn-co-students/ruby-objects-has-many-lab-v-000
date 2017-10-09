class Song

  attr_accessor :artist, :name, :genre

  def initialize(name)
    @name = name

  end

  def artist_name
    if self.artist == nil
      self.artist
    else
    self.artist.name  #there is a problem here, need to return nil if no
    end
  end


end
