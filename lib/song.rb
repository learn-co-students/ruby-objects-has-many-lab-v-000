class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    if @artist != nil
      @artist = self.artist.name
    else
      nil
    end
  end

end
