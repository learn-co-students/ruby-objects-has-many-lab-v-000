class Song
  attr_accessor :artist, :name

  def initialize(name)
    @artist = artist
    @name = name
  end

  def artist_name
    if artist
      self.artist.name
    end 
  end



end
