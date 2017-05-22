class Song
  attr_accessor :song, :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name
    self.artist.name
  end

  def artist_name
    self.artist ? self.artist.name : nil
    
  end
end
