class Song
  attr_accessor :artist
  def initialize(name)
    @name = name
    @songs = []
  end

  def artist_name
   self.artist.name
 end
  
end 