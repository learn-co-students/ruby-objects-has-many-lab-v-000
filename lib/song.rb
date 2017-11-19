#Song
  #new
    #is initialized with an argument of a name (FAILED - 12)
  #name
    #has a name (FAILED - 13)
  #artist
    #belongs to an artist (FAILED - 14)
  #artist_name
  #  knows the name of its artist (FAILED - 15)
    #returns nil if the song does not have an artist (FAILED - 16)
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  

  #artist_name
  #  knows the name of its artist (FAILED - 11)
  #  returns nil if the song does not have an artist (FAILED - 12)
  def artist_name
    if artist
      self.artist.name
    else
      nil
    end
  end


end
