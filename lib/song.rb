class Song
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def artist=(name)
    @artist = name
  end

  def artist
    return nil if !@artist
    @artist
  end

  def artist_name
    return nil if !@artist
    self.artist.name
  end


end



