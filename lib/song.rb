class Song
  attr_accessor :name, :artist

  def initialize(name, artist = nil)
    @name = name
    @artist = artist
  end

  def artist_name
      if @artist != nil
        self.artist.name
      else
        @artist
      end 
  end

end
