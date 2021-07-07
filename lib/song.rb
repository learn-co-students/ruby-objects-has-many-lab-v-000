class Song
  attr_accessor :artist, :name
  def initialize(name)
    @name = name
    @songs = []
  end

  def artist_name
    if self.artist
      return artist.name
    else
      return nil
    end
   end
  
end 