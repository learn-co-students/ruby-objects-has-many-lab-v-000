class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name
    self.artist ? self.artist.name : nil
    # if @artist == nil
    #   nil
    # else
    #   self.artist.name
    # end
  end

end
