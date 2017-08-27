class Song
  attr_accessor :name, :artist, :artist_name

  def initialize(name=nil)
    @name = name
    @artist_name = nil
  end

  def artist_name(name=nil)
    @artist == nil ? @artist_name = nil : @artist_name = self.artist.name 
  end

end  # End of Class
