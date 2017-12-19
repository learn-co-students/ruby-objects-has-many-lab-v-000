class Song

attr_accessor :name, :artist

  def initialize(name)
    @name = name
    # @artist = artist
  end

  def artist_name
    if self.artist != nil
      self.artist.name
    else
      nil
    end
  end



end
